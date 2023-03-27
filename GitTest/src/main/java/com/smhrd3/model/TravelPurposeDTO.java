package com.smhrd3.model;

public class TravelPurposeDTO {
	// 목적 순번 
    public int purpose_seq;
    
    // 선택 연도
    public String purpose_year;

	// 기준 연월 
    public int purpose_yearmonth;

    // 관광 목적 
    public String travel_purpose;

    // 관광 지역 
    public String travel_area;

    // 언급 건수 
    public int travel_count;

    // 관리자 아이디 
    public String admin_id;
    
    // 합산
    public int sum_count;

	public TravelPurposeDTO(int purpose_seq, int purpose_yearmonth, String travel_purpose, String travel_area,
			int travel_count, String admin_id) {
		this.purpose_seq = purpose_seq;
		this.purpose_yearmonth = purpose_yearmonth;
		this.travel_purpose = travel_purpose;
		this.travel_area = travel_area;
		this.travel_count = travel_count;
		this.admin_id = admin_id;
	}

	public TravelPurposeDTO() {
	}

	public int getSum_count() {
		return sum_count;
	}

	public void setSum_count(int sum_count) {
		this.sum_count = sum_count;
	}
    

    public int getPurpose_seq() {
		return purpose_seq;
	}

	public void setPurpose_seq(int purpose_seq) {
		this.purpose_seq = purpose_seq;
	}

	public String getPurpose_year() {
		return purpose_year;
	}

	public void setPurpose_year(String purpose_year) {
		this.purpose_year = purpose_year;
	}

	public int getPurpose_yearmonth() {
		return purpose_yearmonth;
	}

	public void setPurpose_yearmonth(int purpose_yearmonth) {
		this.purpose_yearmonth = purpose_yearmonth;
	}

	public String getTravel_purpose() {
		return travel_purpose;
	}

	public void setTravel_purpose(String travel_purpose) {
		this.travel_purpose = travel_purpose;
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

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

    
}	
