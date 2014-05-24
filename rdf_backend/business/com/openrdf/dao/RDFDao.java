package com.openrdf.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Hibernate;
import org.hibernate.type.Type;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.openrdf.beans.Concept;
import com.openrdf.beans.ConceptStore;
import com.openrdf.beans.SearchHistory;
import com.openrdf.rdf.JenaParser;
import com.openrdf.utils.Utils;

public class RDFDao extends HibernateDaoSupport {

	Logger logger = Logger.getLogger(RDFDao.class);

	/**
	 * 添加新概念到RDF文件
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

<<<<<<< HEAD
		// 保存历史记录
		this.getHibernateTemplate().save(searchHistory);
		// 处理搜索统计
=======
		// 保存历史记录 
		this.getHibernateTemplate().save(searchHistory);
		// 处理搜索统计 
>>>>>>> d693df5bba1ad31ea8c23fc7f136540848b2fe97
		return true;
	}

	/**
	 * 获取是否已经存储
	 * 
	 * @param conceptStore
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ConceptStore> getIsStore(ConceptStore conceptStore) {

		String queryString = " From ConceptStore where keyword = ? and userId = ?";
		Object[] objects = { conceptStore.getKeyword(), conceptStore.getUserId() };
		return this.getHibernateTemplate().find(queryString, objects);
	}

	/**
	 * 保存收藏
	 * 
	 * @param conceptStore
	 */
	public void saveStore(ConceptStore conceptStore) {
		try {
			this.getHibernateTemplate().save(conceptStore);
		} catch (Exception e) {
			logger.info("收藏保存异常：" + e);
		}
	}
}
