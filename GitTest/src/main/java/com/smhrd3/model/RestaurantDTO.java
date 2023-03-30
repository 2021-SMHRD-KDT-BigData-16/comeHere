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

	public int getRestaurant_seq() {
		return restaurant_seq;
	}

	public void setRestaurant_seq(int restaurant_seq) {
		this.restaurant_seq = restaurant_seq;
	}

	public String getRestaurant_name() {
		return restaurant_name;
	}

	public void setRestaurant_name(String restaurant_name) {
		this.restaurant_name = restaurant_name;
	}

	public String getRestaurant_addr() {
		return restaurant_addr;
	}

	public void setRestaurant_addr(String restaurant_addr) {
		this.restaurant_addr = restaurant_addr;
	}

	public String getRestaurant_type() {
		return restaurant_type;
	}

	public void setRestaurant_type(String restaurant_type) {
		this.restaurant_type = restaurant_type;
	}

	public int getRestaurant_ranking() {
		return restaurant_ranking;
	}

	public void setRestaurant_ranking(int restaurant_ranking) {
		this.restaurant_ranking = restaurant_ranking;
	}

	public String getRestaurant_area() {
		return restaurant_area;
	}

	public void setRestaurant_area(String restaurant_area) {
		this.restaurant_area = restaurant_area;
	}

	public int getRestaurant_year() {
		return restaurant_year;
	}

	public void setRestaurant_year(int restaurant_year) {
		this.restaurant_year = restaurant_year;
	}

	public int getRestaurant_search_cnt() {
		return restaurant_search_cnt;
	}

	public void setRestaurant_search_cnt(int restaurant_search_cnt) {
		this.restaurant_search_cnt = restaurant_search_cnt;
	}

	public int getLat() {
		return lat;
	}

	public void setLat(int lat) {
		this.lat = lat;
	}

	public int getLng() {
		return lng;
	}

	public void setLng(int lng) {
		this.lng = lng;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

}
