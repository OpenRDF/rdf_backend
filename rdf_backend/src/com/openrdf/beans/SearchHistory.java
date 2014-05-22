package com.openrdf.beans;

/**
 * SearchHistory entity. @author MyEclipse Persistence Tools
 */

public class SearchHistory implements java.io.Serializable {

	// Fields

	private Integer id;
	private String key;
	private Float serachTime;
	private String whoSearch;
	private String other;

	// Constructors

	/** default constructor */
	public SearchHistory() {
	}

	/** full constructor */
	public SearchHistory(String key, Float serachTime, String whoSearch,
			String other) {
		this.key = key;
		this.serachTime = serachTime;
		this.whoSearch = whoSearch;
		this.other = other;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getKey() {
		return this.key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public Float getSerachTime() {
		return this.serachTime;
	}

	public void setSerachTime(Float serachTime) {
		this.serachTime = serachTime;
	}

	public String getWhoSearch() {
		return this.whoSearch;
	}

	public void setWhoSearch(String whoSearch) {
		this.whoSearch = whoSearch;
	}

	public String getOther() {
		return this.other;
	}

	public void setOther(String other) {
		this.other = other;
	}

}