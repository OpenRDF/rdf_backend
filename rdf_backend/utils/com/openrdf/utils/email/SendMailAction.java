package com.openrdf.utils.email;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

import com.openrdf.utils.encrypt.Base64Encrpt;
import com.openrdf.utils.properties.EmailProperties;

import org.apache.log4j.Logger;

/**
 * Sender Mail Action 发送邮件，调用时调用该方法。
 * 
 * @description 本程序用于来自谢先斌毕业论文，如有使用请联系作 者，注明出处。
 * @URL 代码地址：http://github.com/openRDF/rdf_fronts
 * @dateTime 2014-3-22 下午7:43:59
 * @author XieXianbin
 * @email a.b@hotmail.com
 * 
 */

public class SendMailAction {

	// 下面是记录日志的方法
	Logger logger = Logger.getLogger(SendMailAction.class);

	// 下面是发送邮件的相关配置
	private static String mailServerHost = null;
	private static String serverPort = null;
	private static String userName = null;
	private static String password = null;
	private static MailSender mailSender = null;

	public boolean sendMail(String toAddress, String mailSubject,
			String mailContent) {
		// 获取email的配置信息
		if (mailServerHost == null || userName == null || password == null
				|| serverPort == null) {
			this.loadEmailProperties();
		}
		// 初始化mailSender
		if (mailSender == null) {
			mailSender = new MailSender();
		}
		// 初始化MailSenderBean
		MailSenderBean mailSenderBean = new MailSenderBean();
		mailSenderBean.setMailServerHost(mailServerHost); // SMTP服务器
		mailSenderBean.setMailServerPort(serverPort); // SMTP端口
		mailSenderBean.setValidate(true);
		mailSenderBean.setUserName(userName); // 发件邮箱
		mailSenderBean.setPassword(password); // 发件账户
		mailSenderBean.setFromAddress(userName); // 显示发件人
		mailSenderBean.setToAddress(toAddress); // 收件人
		mailSenderBean.setSubject(mailSubject); // 邮件主题
		mailSenderBean.setContent(mailContent); // 邮件内容
		// 采用以HTML格式发送邮件
		boolean send_state = mailSender.sendHtmlMail(mailSenderBean);
		logger.debug("Send Mail to: " + toAddress + " with subject: "
				+ mailSubject
				+ " state is " + send_state);
		// 返回发送邮件
		return send_state;
	}

	private void loadEmailProperties() {
		try {
			// 加载属性文件
			EmailProperties emailProperties = new EmailProperties();
			Properties properties = new Properties();
			properties = emailProperties.getEmailProperties();
			// 读取文件内容
			mailServerHost = properties.getProperty("MailServerHost");
			serverPort = properties.getProperty("ServerPort");
			userName = properties.getProperty("UserName");
			// 解密
			Base64Encrpt base64Encrpt = new Base64Encrpt();
			String passwd = properties.getProperty("Password");
			password = base64Encrpt.getDesString(passwd);
		} catch (Exception e) {
			// log.error();
		}
	}
}
