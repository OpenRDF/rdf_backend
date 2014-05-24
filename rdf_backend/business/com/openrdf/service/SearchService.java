package com.openrdf.service;

import java.util.List;

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
	
	/**                getters and setters                       **/
	public SearchDao getSearchDao() {
		return searchDao;
	}

	public void setSearchDao(SearchDao searchDao) {
		this.searchDao = searchDao;
	}

}
