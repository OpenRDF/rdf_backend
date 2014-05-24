package com.openrdf.action;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.openrdf.base.action.OpenRDFBaseAction;
import com.openrdf.beans.Concept;
import com.openrdf.beans.UserLogin;
import com.openrdf.service.RDFService;
import com.openrdf.service.UsersService;
import com.openrdf.utils.EmailTemp;
import com.openrdf.utils.Utils;
import com.openrdf.utils.email.SendMailAction;
import com.openrdf.utils.encrypt.Base64Encrpt;
import com.openrdf.utils.properties.URLPropertiesUtils;
import com.opensymphony.xwork2.ActionContext;

public class RDFAction extends OpenRDFBaseAction {

	private static final long serialVersionUID = -2764265916955637921L;

	private Logger logger = Logger.getLogger(RDFAction.class);

	private RDFService rdfService;
	// 返回信息
	private String resultMessage;
	// 存储概念
	private Concept concept;
	// 搜索关键字
	private String keyword;
	// 返回搜索信息
	private List<Concept> conceptList;

	/**
	 * 跳转到查询知识点页面
	 * 
	 * @return
	 */
	public String searchConcept() {
		return "success";
	}

	/**
	 * 查询知识点
	 * 
	 * @return
	 */
	public String searchAction() {

		// 获取用户名
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		String userName = (String) session.get("userName");
		if(userName == null){
			userName = "未知用户";
		}
		
		// 转码字符串
		keyword = Utils.str(keyword);
		logger.info(userName + "搜索关键字：" + keyword);
		if (keyword.equalsIgnoreCase("")) {
			resultMessage = "请输入关键字。";
			conceptList = null;
			return "error";
		}
		conceptList = rdfService.searchKeyWord(keyword, userName);
		if (conceptList.size() == 0) {
			resultMessage = "您搜索的关键字不存在。";
			conceptList = null;
			return "error";
		} else {
			resultMessage = "success";
			// keyword = "";
			for (int i = 0; i < conceptList.size(); i++) {
				logger.info("第" + i + "个：\n名词（cn）："
						+ conceptList.get(i).getCnName() + "\n名词（en）："
						+ conceptList.get(i).getEnName() + "\n定义："
						+ conceptList.get(i).getSource() + "\n更新时间："
						+ conceptList.get(i).getBday());
			}
		}
		return "success";
	}

	/**
	 * 跳转到添加知识点 页面
	 * 
	 * @return
	 */
	public String addConcept() {
		return "success";
	}

	/**
	 * 添加知识点
	 * 
	 * @return
	 */
	public String addConceptAction() {

		concept.setCnName(Utils.str(concept.getCnName()));
		concept.setEnName(Utils.str(concept.getEnName()));
		concept.setSource(Utils.str(concept.getSource()));

		logger.info("\n名词（cn）：" + concept.getCnName() + "\n名词（en）："
				+ concept.getEnName() + "\n概念：" + concept.getSource());
		// 添加时间
		concept.setBday(Utils.getDateTime());
		if (rdfService.addConcept(concept)) {
			resultMessage = "添加成功，请继续添加!";
			return "success";
		} else {
			resultMessage = "添加失败，请联系管理员!";
			return "error";
		}
	}

	/**
	 * 更新知识点
	 * 
	 * @return
	 */
	public String updateConcept() {
		return "success";
	}

	/**
	 * 删除知识点
	 * 
	 * @return
	 */
	public String deleteConcept() {
		return "success";
	}

	/**
	 * list 知识点
	 * 
	 * @return
	 */
	public String listConcept() {
		return "success";
	}

	public RDFService getRdfService() {
		return rdfService;
	}

	public void setRdfService(RDFService rdfService) {
		this.rdfService = rdfService;
	}

	public Concept getConcept() {
		return concept;
	}

	public void setConcept(Concept concept) {
		this.concept = concept;
	}

	public String getResultMessage() {
		return resultMessage;
	}

	public void setResultMessage(String resultMessage) {
		this.resultMessage = resultMessage;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<Concept> getConceptList() {
		return conceptList;
	}

	public void setConceptList(List<Concept> conceptList) {
		this.conceptList = conceptList;
	}

}
