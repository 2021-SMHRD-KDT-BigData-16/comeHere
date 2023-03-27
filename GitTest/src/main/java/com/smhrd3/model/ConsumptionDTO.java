package com.smhrd3.model;

public class ConsumptionDTO {
	// 소비 순번 
    public int cunsumption_seq;

    // 연도 	
    public int cunsumption_year;
    
    // 합산
    public int sum_amount;

    // 소비액 
    public int cunsumption_amount;

    // 지역 
    public String cunsumption_area;

    // 구분1 
    public String cunsumption_type1;

    // 구분2 
    public String cunsumption_type2;

    // 관리자 아이디 
    public String admin_id;

	public int getCunsumption_seq() {
		return cunsumption_seq;
	}

	public void setCunsumption_seq(int cunsumption_seq) {
		this.cunsumption_seq = cunsumption_seq;
	}

	public int getCunsumption_year() {
		return cunsumption_year;
	}

	public void setCunsumption_year(int cunsumption_year) {
		this.cunsumption_year = cunsumption_year;
	}

	public int getCunsumption_amount() {
		return cunsumption_amount;
	}

	public void setCunsumption_amount(int cunsumption_amount) {
		this.cunsumption_amount = cunsumption_amount;
	}

	public String getCunsumption_area() {
		return cunsumption_area;
	}

	public void setCunsumption_area(String cunsumption_area) {
		this.cunsumption_area = cunsumption_area;
	}

	public String getCunsumption_type1() {
		return cunsumption_type1;
	}

	public void setCunsumption_type1(String cunsumption_type1) {
		this.cunsumption_type1 = cunsumption_type1;
	}

	public String getCunsumption_type2() {
		return cunsumption_type2;
	}

	public void setCunsumption_type2(String cunsumption_type2) {
		this.cunsumption_type2 = cunsumption_type2;
	}

	public int getSumamount() {
		return sum_amount;
	}

	public void setSumamount(int sum_amount) {
		this.sum_amount = sum_amount;
	}

	public ConsumptionDTO() {
	}
    
}
