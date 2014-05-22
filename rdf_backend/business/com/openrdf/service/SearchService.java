package com.openrdf.service;

import com.openrdf.dao.SearchDao;

public class SearchService {

	private SearchDao searchDao;
	
	
	
	
	public SearchDao getSearchDao() {
		return searchDao;
	}

	public void setSearchDao(SearchDao searchDao) {
		this.searchDao = searchDao;
	}
}
