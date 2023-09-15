package com.kwce.domain;

public class SearchCriteria extends Criteria{
	
	private String searchType;

	private String keyword;
	
	private int id;
	
	private String snum;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	
	public String getSnum() {
		return snum;
	}

	public void setSnum(String snum) {
		this.snum = snum;
	}

	public String getSearchType() {

		return searchType;

	}

	public void setSearchType(String searchType) {

		this.searchType = searchType;

	}

	public String getKeyword() {

		return keyword;

	}

	public void setKeyword(String keyword) {

		this.keyword = keyword;

	}

	@Override

	public String toString() {

		return super.toString() + " SearchCriteria "

				+ "[searchType=" + searchType + ", keyword="

				+ keyword + "]";

	}

	


}