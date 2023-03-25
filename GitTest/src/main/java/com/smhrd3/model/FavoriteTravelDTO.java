package com.smhrd3.model;

public class FavoriteTravelDTO {
	// 인기 순번 
    public int favorite_seq;

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
		super();
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
		super();
	}

}
