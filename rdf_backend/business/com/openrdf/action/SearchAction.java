package com.openrdf.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.openrdf.base.action.OpenRDFBaseAction;
import com.openrdf.beans.SearchHistory;
import com.openrdf.beans.SearchStatistics;
import com.openrdf.service.SearchService;

public class SearchAction extends OpenRDFBaseAction {

	private static final long serialVersionUID = -2764265916955637921L;

	private Logger logger = Logger.getLogger(SearchAction.class);

	private SearchService searchService;
	// 返回信息
	private String resultMessage;
	// 搜索历史
	private List<SearchHistory> searchHistoryList;
	// 搜索统计
	private List<SearchStatistics> searchStatisticsList;

	/**
	 * 搜索统计
	 * 
	 * @return
	 */
	public String searchStatistics() {

		searchStatisticsList = searchService.searchStatistics();
		logger.info("搜索统计记录共：" + searchStatisticsList.size());
		if (searchStatisticsList.size() == 0 || searchStatisticsList == null) {
			resultMessage = "";
			return "error";
		} else {
			resultMessage = "success";
			logger.info(searchStatisticsList.get(0).getId().getKeyWord());
			return "success";
		}
	}

	/**
	 * 搜索记录
	 * 
	 * @return
	 */
	public String searchHistory() {

		searchHistoryList = searchService.getSearchHistoryList();
		logger.info("搜索记录共：" + searchHistoryList.size() + "条。");
		if (searchHistoryList.size() == 0 || searchHistoryList == null) {
			resultMessage = "";
			return "error";
		} else {
			resultMessage = "success";
			return "success";
		}
	}

	/**
	 * 收藏查询
	 * 
	 * @return
	 */
	public String listStore() {
		return "success";
	}

	/** getters and setters **/
	public SearchService getSearchService() {
		return searchService;
	}

	public void setSearchService(SearchService searchService) {
		this.searchService = searchService;
	}

	public List<SearchHistory> getSearchHistoryList() {
		return searchHistoryList;
	}

	public void setSearchHistoryList(List<SearchHistory> searchHistoryList) {
		this.searchHistoryList = searchHistoryList;
	}

	public String getResultMessage() {
		return resultMessage;
	}

	public void setResultMessage(String resultMessage) {
		this.resultMessage = resultMessage;
	}

	public List<SearchStatistics> getSearchStatisticsList() {
		return searchStatisticsList;
	}

	public void setSearchStatisticsList(
			List<SearchStatistics> searchStatisticsList) {
		this.searchStatisticsList = searchStatisticsList;
	}

}
