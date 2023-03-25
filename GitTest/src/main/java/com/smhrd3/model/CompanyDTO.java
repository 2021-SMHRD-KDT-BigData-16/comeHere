package com.smhrd3.model;

public class CompanyDTO {

    // 여행 순번 
    public int travel_seq;

    // 기준 연월 
    public int travel_yearmonth;

    // 동반 유형명 
    public String travel_company;

    // 여행 지역 
    public String travel_area;

    // 언급 건수 
    public int travel_count;

    // 관리자 아이디 
    public String admin_id;

	public CompanyDTO(int travel_seq, int travel_yearmonth, String travel_company, String travel_area, int travel_count,
			String admin_id) {
		this.travel_seq = travel_seq;
		this.travel_yearmonth = travel_yearmonth;
		this.travel_company = travel_company;
		this.travel_area = travel_area;
		this.travel_count = travel_count;
		this.admin_id = admin_id;
	}

	public CompanyDTO() {
	}
    
    
}
