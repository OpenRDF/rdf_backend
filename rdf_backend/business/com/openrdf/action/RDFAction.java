package com.openrdf.action;

import org.apache.log4j.Logger;

import com.openrdf.base.action.OpenRDFBaseAction;
import com.openrdf.beans.UserLogin;
import com.openrdf.service.RDFService;
import com.openrdf.service.UsersService;
import com.openrdf.utils.EmailTemp;
import com.openrdf.utils.Utils;
import com.openrdf.utils.email.SendMailAction;
import com.openrdf.utils.encrypt.Base64Encrpt;
import com.openrdf.utils.properties.URLPropertiesUtils;

public class RDFAction extends OpenRDFBaseAction {

	private static final long serialVersionUID = -2764265916955637921L;

	private Logger logger = Logger.getLogger(RDFAction.class);

	private RDFService rdfService;
	
	/**
	 * 查询知识点
	 * @return
	 */
	public String searchConcept(){
		return "success";
	}
	
	/**
	 * 添加知识点 
	 * @return
	 */
	public String addConcept(){
		return "success";
	}
	
	/**
	 * 更新知识点
	 * 
	 * @return
	 */
	public String updateConcept(){
		return "success";
	}
	
	/**
	 * 删除知识点
	 * 
	 * @return
	 */
	public String deleteConcept(){
		return "success";
	}
	
	/**
	 * list 知识点
	 * 
	 * @return
	 */
	public String listConcept(){
		return "success";
	}
	
	
	public RDFService getRdfService() {
		return rdfService;
	}

	public void setRdfService(RDFService rdfService) {
		this.rdfService = rdfService;
	}
}
