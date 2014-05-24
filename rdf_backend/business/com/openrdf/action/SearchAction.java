package com.openrdf.action;

import org.apache.log4j.Logger;

import com.openrdf.base.action.OpenRDFBaseAction;
import com.openrdf.service.SearchService;

public class SearchAction extends OpenRDFBaseAction {

	private static final long serialVersionUID = -2764265916955637921L;

	private Logger logger = Logger.getLogger(SearchAction.class);

	private SearchService searchService;
	
	/**
	 * 搜索统计
	 * 
	 * @return
	 */
	public String searchStatistics(){
		return "success";
	}
	
	/**
	 * 搜索记录
	 * 
	 * @return
	 */
	public String searchHistory(){
		
		
		return "success";
	}
	
	/**
	 * 收藏查询
	 * 
	 * @return
	 */
	public String listStore(){
		return "success";
	}
	
	public SearchService getSearchService() {
		return searchService;
	}

	public void setSearchService(SearchService searchService) {
		this.searchService = searchService;
	}
}
