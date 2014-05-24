package com.openrdf.service;

import java.util.List;

<<<<<<< HEAD
import com.openrdf.beans.ConceptStore;
=======
>>>>>>> d693df5bba1ad31ea8c23fc7f136540848b2fe97
import com.openrdf.beans.SearchHistory;
import com.openrdf.beans.SearchStatistics;
import com.openrdf.dao.SearchDao;

public class SearchService {

	private SearchDao searchDao;
	
	/**
	 * 获取搜索记录 
	 * 
	 * @return
	 */
	public List<SearchHistory> getSearchHistoryList(){
		
		List<SearchHistory> searchServiceList = searchDao.getSearchHistoryList();
		return searchServiceList;
	}
	
	/**
	 * 获取搜索统计 
	 * 
	 * @return
	 */
	public List<SearchStatistics> searchStatistics() {
		return searchDao.getSearchStatistisc();
	}
	
<<<<<<< HEAD
	// 收藏查询 
	public List<ConceptStore> listStore() {
		return searchDao.listStore();
	}
	
=======
>>>>>>> d693df5bba1ad31ea8c23fc7f136540848b2fe97
	/**                getters and setters                       **/
	public SearchDao getSearchDao() {
		return searchDao;
	}

	public void setSearchDao(SearchDao searchDao) {
		this.searchDao = searchDao;
	}

<<<<<<< HEAD

=======
>>>>>>> d693df5bba1ad31ea8c23fc7f136540848b2fe97
}
