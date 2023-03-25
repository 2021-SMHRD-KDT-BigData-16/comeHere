package com.smhrd3.model;

public class CreditDTO {
	// 소비 순번 
    public Double consumption_seq;

    // 연월 
    public String consumption_yearmonth;

    // 소비액 
    public Double consumption_amount;

    // 지역 
    public String consumption_area;

    // 구분 
    public String consumption_type;

    // 관리자 아이디 
    public String admin_id;

	public Double getConsumption_seq() {
		return consumption_seq;
	}

	public void setConsumption_seq(Double consumption_seq) {
		this.consumption_seq = consumption_seq;
	}

	public String getConsumption_yearmonth() {
		return consumption_yearmonth;
	}

	public void setConsumption_yearmonth(String consumption_yearmonth) {
		this.consumption_yearmonth = consumption_yearmonth;
	}

	public Double getConsumption_amount() {
		return consumption_amount;
	}

	public void setConsumption_amount(Double consumption_amount) {
		this.consumption_amount = consumption_amount;
	}

	public String getConsumption_area() {
		return consumption_area;
	}

	public void setConsumption_area(String consumption_area) {
		this.consumption_area = consumption_area;
	}

	public String getConsumption_type() {
		return consumption_type;
	}

	public void setConsumption_type(String consumption_type) {
		this.consumption_type = consumption_type;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public CreditDTO(Double consumption_seq, String consumption_yearmonth, Double consumption_amount,
			String consumption_area, String consumption_type, String admin_id) {
		this.consumption_seq = consumption_seq;
		this.consumption_yearmonth = consumption_yearmonth;
		this.consumption_amount = consumption_amount;
		this.consumption_area = consumption_area;
		this.consumption_type = consumption_type;
		this.admin_id = admin_id;
	}

	public CreditDTO() {
	}

    
}
