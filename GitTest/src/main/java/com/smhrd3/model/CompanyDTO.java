package com.smhrd3.model;

public class CompanyDTO {

    // 여행 순번 
    public int travel_seq;
    
    // 선택 연도
    public int company_year;

	// 기준 연월 
    public int travel_yearmonth;

    // 동반 유형명 
    public String travel_company;

    // 여행 지역 
    public String travel_area;

    // 언급 건수 
    public int travel_count;
    
    // 언급 건수 합산
    public int sum_count;

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
    

    public int getTravel_seq() {
		return travel_seq;
	}

	public void setTravel_seq(int travel_seq) {
		this.travel_seq = travel_seq;
	}

	public int getCompany_year() {
		return company_year;
	}

	public void setCompany_year(int company_year) {
		this.company_year = company_year;
	}

	public int getTravel_yearmonth() {
		return travel_yearmonth;
	}

	public void setTravel_yearmonth(int travel_yearmonth) {
		this.travel_yearmonth = travel_yearmonth;
	}

	public String getTravel_company() {
		return travel_company;
	}

	public void setTravel_company(String travel_company) {
		this.travel_company = travel_company;
	}

	public String getTravel_area() {
		return travel_area;
	}

	public void setTravel_area(String travel_area) {
		this.travel_area = travel_area;
	}

	public int getTravel_count() {
		return travel_count;
	}

	public void setTravel_count(int travel_count) {
		this.travel_count = travel_count;
	}

    public int getSum_count() {
		return sum_count;
	}

	public void setSum_count(int sum_count) {
		this.sum_count = sum_count;
	}

}
