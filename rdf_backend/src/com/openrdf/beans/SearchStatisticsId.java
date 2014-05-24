package com.openrdf.beans;

/**
 * SearchStatisticsId entity. @author MyEclipse Persistence Tools
 */

public class SearchStatisticsId implements java.io.Serializable {

	// Fields

	private String keyWord;
	private Long searchCount;
	private Double successCount;
	private String lastSearchTime;

	// Constructors

	/** default constructor */
	public SearchStatisticsId() {
	}

	/** minimal constructor */
	public SearchStatisticsId(Long searchCount) {
		this.searchCount = searchCount;
	}

	/** full constructor */
	public SearchStatisticsId(String keyWord, Long searchCount,
			Double successCount, String lastSearchTime) {
		this.keyWord = keyWord;
		this.searchCount = searchCount;
		this.successCount = successCount;
		this.lastSearchTime = lastSearchTime;
	}

	// Property accessors

	public String getKeyWord() {
		return this.keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public Long getSearchCount() {
		return this.searchCount;
	}

	public void setSearchCount(Long searchCount) {
		this.searchCount = searchCount;
	}

	public Double getSuccessCount() {
		return this.successCount;
	}

	public void setSuccessCount(Double successCount) {
		this.successCount = successCount;
	}

	public String getLastSearchTime() {
		return this.lastSearchTime;
	}

	public void setLastSearchTime(String lastSearchTime) {
		this.lastSearchTime = lastSearchTime;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SearchStatisticsId))
			return false;
		SearchStatisticsId castOther = (SearchStatisticsId) other;

		return ((this.getKeyWord() == castOther.getKeyWord()) || (this
				.getKeyWord() != null && castOther.getKeyWord() != null && this
				.getKeyWord().equals(castOther.getKeyWord())))
				&& ((this.getSearchCount() == castOther.getSearchCount()) || (this
						.getSearchCount() != null
						&& castOther.getSearchCount() != null && this
						.getSearchCount().equals(castOther.getSearchCount())))
				&& ((this.getSuccessCount() == castOther.getSuccessCount()) || (this
						.getSuccessCount() != null
						&& castOther.getSuccessCount() != null && this
						.getSuccessCount().equals(castOther.getSuccessCount())))
				&& ((this.getLastSearchTime() == castOther.getLastSearchTime()) || (this
						.getLastSearchTime() != null
						&& castOther.getLastSearchTime() != null && this
						.getLastSearchTime().equals(
								castOther.getLastSearchTime())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getKeyWord() == null ? 0 : this.getKeyWord().hashCode());
		result = 37
				* result
				+ (getSearchCount() == null ? 0 : this.getSearchCount()
						.hashCode());
		result = 37
				* result
				+ (getSuccessCount() == null ? 0 : this.getSuccessCount()
						.hashCode());
		result = 37
				* result
				+ (getLastSearchTime() == null ? 0 : this.getLastSearchTime()
						.hashCode());
		return result;
	}

}