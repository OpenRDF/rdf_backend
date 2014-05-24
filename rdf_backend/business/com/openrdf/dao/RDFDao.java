package com.openrdf.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.openrdf.beans.Concept;
import com.openrdf.rdf.JenaParser;

public class RDFDao extends HibernateDaoSupport {

	/**
	 *  添加新概念到RDF文件 
	 *  
	 * @param concept
	 * @return
	 */
	public boolean addConcept(Concept concept) {
		return false;
	}

	/**
	 * 通过关键字搜索 
	 * 
	 * @param keyword
	 * @return
	 */
	public boolean searchKeyWord(String keyword) {
		// 记录历史 
		
		return false;
	}
	
}
