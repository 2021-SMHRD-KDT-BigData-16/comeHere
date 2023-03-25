package com.smhrd3.model;

public class TravelPurposeDTO {
	// 목적 순번 
    public int purpose_seq;

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
		super();
	}
    
    
}	
