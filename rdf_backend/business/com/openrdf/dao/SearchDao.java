package com.openrdf.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

<<<<<<< HEAD
import com.openrdf.beans.ConceptStore;
=======
>>>>>>> d693df5bba1ad31ea8c23fc7f136540848b2fe97
import com.openrdf.beans.SearchHistory;
import com.openrdf.beans.SearchStatistics;

public class SearchDao extends HibernateDaoSupport {

	/**
	 * 查询搜索历史
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<SearchHistory> getSearchHistoryList() {
		String queryString = " From SearchHistory order by id desc";
		return this.getHibernateTemplate().find(queryString);
	}

	/**
	 * 获取搜索统计
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<SearchStatistics> getSearchStatistisc() {
		String queryString = " From  SearchStatistics";
		return this.getHibernateTemplate().find(queryString);
	}

<<<<<<< HEAD
	/**
	 * 收藏查询 
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ConceptStore> listStore() {
		String queryString = " From ConceptStore ";
		return this.getHibernateTemplate().find(queryString);
	}

=======
>>>>>>> d693df5bba1ad31ea8c23fc7f136540848b2fe97
}
