package com.smhrd3.model;

public class SNSDTO {
	 // 소셜 순번 
    public Double sns_seq;

    // 기준 연월 
    public String sns_yearmonth;

    // 검색량 
    public Double sns_search;

    // 지역 
    public String sns_are;

    // 관리자 아이디 
    public String admin_id;

	public Double getSns_seq() {
		return sns_seq;
	}

	public void setSns_seq(Double sns_seq) {
		this.sns_seq = sns_seq;
	}

	public String getSns_yearmonth() {
		return sns_yearmonth;
	}

	public void setSns_yearmonth(String sns_yearmonth) {
		this.sns_yearmonth = sns_yearmonth;
	}

	public Double getSns_search() {
		return sns_search;
	}

	public void setSns_search(Double sns_search) {
		this.sns_search = sns_search;
	}

	public String getSns_are() {
		return sns_are;
	}

	public void setSns_are(String sns_are) {
		this.sns_are = sns_are;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public SNSDTO(Double sns_seq, String sns_yearmonth, Double sns_search, String sns_are, String admin_id) {
		this.sns_seq = sns_seq;
		this.sns_yearmonth = sns_yearmonth;
		this.sns_search = sns_search;
		this.sns_are = sns_are;
		this.admin_id = admin_id;
	}

	public SNSDTO() {
	}
    
    
    
}
