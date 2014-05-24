package com.openrdf.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.openrdf.beans.Concept;
import com.openrdf.beans.SearchHistory;
import com.openrdf.rdf.JenaParser;
import com.openrdf.utils.Utils;

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
	 * @param userName 
	 * @return
	 */
	public boolean searchKeyWord(SearchHistory searchHistory) {

		// 保存历史记录 
		this.getHibernateTemplate().save(searchHistory);
		// 处理搜索统计 
		return true;
	}
	
}
