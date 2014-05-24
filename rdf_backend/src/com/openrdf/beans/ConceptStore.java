package com.openrdf.beans;

/**
 * ConceptStore entity. @author MyEclipse Persistence Tools
 */

public class ConceptStore implements java.io.Serializable {

	// Fields

	private Integer id;
	private String userId;
	private String key;
	private String storeTime;
	private String other;

	// Constructors

	/** default constructor */
	public ConceptStore() {
	}

	/** full constructor */
	public ConceptStore(String userId, String key, String storeTime,
			String other) {
		this.userId = userId;
		this.key = key;
		this.storeTime = storeTime;
		this.other = other;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getKey() {
		return this.key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getStoreTime() {
		return this.storeTime;
	}

	public void setStoreTime(String storeTime) {
		this.storeTime = storeTime;
	}

	public String getOther() {
		return this.other;
	}

	public void setOther(String other) {
		this.other = other;
	}

}