package com.smhrd3.model;

public class ConsumptionDTO {
	// 소비 순번 
    public int cunsumption_seq;

    // 연도 
    public int cunsumption_year;

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

	public ConsumptionDTO(int cunsumption_seq, int cunsumption_year, int cunsumption_amount,
			String cunsumption_area, String cunsumption_type1, String cunsumption_type2, String admin_id) {
		this.cunsumption_seq = cunsumption_seq;
		this.cunsumption_year = cunsumption_year;
		this.cunsumption_amount = cunsumption_amount;
		this.cunsumption_area = cunsumption_area;
		this.cunsumption_type1 = cunsumption_type1;
		this.cunsumption_type2 = cunsumption_type2;
		this.admin_id = admin_id;
	}

	public ConsumptionDTO() {
	}
    
}
