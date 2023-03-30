package com.smhrd3.model;

public class FavoriteTravelDTO {
	// 인기 순번 
    public int favorite_seq;
    
    // 선택 연도
    public int travel_year;

	// 관광지 명 
    public String travel_spot_name;

    // 관광지 주소 
    public String travel_spot_addr;

    // 관광지 분류 
    public String travel_type;

    // 인기 순위 
    public int travel_ranking;

    // 관광지 지역 
    public String travel_area;

    // 연도 
    public int travel_yearmonth;

    // 검색 수 
    public int travel_search_cnt;

    // 위도 
    public int lat;

    // 경도 
    public int lng;


	// 관리자 아이디 
    public String admin_id;

	public FavoriteTravelDTO(int favorite_seq, String travel_spot_name, String travel_spot_addr, String travel_type,
			int travel_ranking, String travel_area, int travel_yearmonth, int travel_search_cnt, String admin_id) {
		this.favorite_seq = favorite_seq;
		this.travel_spot_name = travel_spot_name;
		this.travel_spot_addr = travel_spot_addr;
		this.travel_type = travel_type;
		this.travel_ranking = travel_ranking;
		this.travel_area = travel_area;
		this.travel_yearmonth = travel_yearmonth;
		this.travel_search_cnt = travel_search_cnt;
		this.admin_id = admin_id;
	}

	public FavoriteTravelDTO() {
	}

    public int getTravel_year() {
		return travel_year;
	}

	public void setTravel_year(int travel_year) {
		this.travel_year = travel_year;
	}

    public int getFavorite_seq() {
		return favorite_seq;
	}

	public void setFavorite_seq(int favorite_seq) {
		this.favorite_seq = favorite_seq;
	}

	public String getTravel_spot_name() {
		return travel_spot_name;
	}

	public void setTravel_spot_name(String travel_spot_name) {
		this.travel_spot_name = travel_spot_name;
	}

	public String getTravel_spot_addr() {
		return travel_spot_addr;
	}

	public void setTravel_spot_addr(String travel_spot_addr) {
		this.travel_spot_addr = travel_spot_addr;
	}

	public String getTravel_type() {
		return travel_type;
	}

	public void setTravel_type(String travel_type) {
		this.travel_type = travel_type;
	}

	public int getTravel_ranking() {
		return travel_ranking;
	}

	public void setTravel_ranking(int travel_ranking) {
		this.travel_ranking = travel_ranking;
	}

	public String getTravel_area() {
		return travel_area;
	}

	public void setTravel_area(String travel_area) {
		this.travel_area = travel_area;
	}

	public int getTravel_yearmonth() {
		return travel_yearmonth;
	}

	public void setTravel_yearmonth(int travel_yearmonth) {
		this.travel_yearmonth = travel_yearmonth;
	}

	public int getTravel_search_cnt() {
		return travel_search_cnt;
	}

	public void setTravel_search_cnt(int travel_search_cnt) {
		this.travel_search_cnt = travel_search_cnt;
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
