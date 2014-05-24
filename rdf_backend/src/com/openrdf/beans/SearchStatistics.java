package com.openrdf.beans;

/**
 * SearchStatistics entity. @author MyEclipse Persistence Tools
 */

public class SearchStatistics implements java.io.Serializable {

	// Fields

	private SearchStatisticsId id;

	// Constructors

	/** default constructor */
	public SearchStatistics() {
	}

	/** full constructor */
	public SearchStatistics(SearchStatisticsId id) {
		this.id = id;
	}

	// Property accessors

	public SearchStatisticsId getId() {
		return this.id;
	}

	public void setId(SearchStatisticsId id) {
		this.id = id;
	}

}