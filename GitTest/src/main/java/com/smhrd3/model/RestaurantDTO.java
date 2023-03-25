package com.smhrd3.model;

public class RestaurantDTO {
	// 맛집 순번 
    public int restaurant_seq;

    // 음식점 명 
    public String restaurant_name;

    // 음식점 주소 
    public String restaurant_addr;

    // 음식점 구분 
    public String restaurant_type;

    // 음식점 순위 
    public int restaurant_ranking;

    // 음식점 지역 
    public String restaurant_area;

    // 음식점 연도 
    public int restaurant_year;

    // 음식점 검색수 
    public int restaurant_search_cnt;

    // 위도 
    public int lat;

    // 경도 
    public int lng;

    // 관리자 아이디 
    public String admin_id;

	public RestaurantDTO(int restaurant_seq, String restaurant_name, String restaurant_addr, String restaurant_type,
			int restaurant_ranking, String restaurant_area, int restaurant_year, int restaurant_search_cnt,
			String admin_id) {
		this.restaurant_seq = restaurant_seq;
		this.restaurant_name = restaurant_name;
		this.restaurant_addr = restaurant_addr;
		this.restaurant_type = restaurant_type;
		this.restaurant_ranking = restaurant_ranking;
		this.restaurant_area = restaurant_area;
		this.restaurant_year = restaurant_year;
		this.restaurant_search_cnt = restaurant_search_cnt;
		this.admin_id = admin_id;
	}

	public RestaurantDTO() {
	}
    
    
}
