package com.smhrd3.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd3.model.DataDAO;
import com.smhrd3.model.FavoriteTravelDTO;
import com.smhrd3.model.RestaurantDTO;


@WebServlet("/map")
public class map extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String area = (String) session.getAttribute("area");
		
		// URL
		String moveURL = null;
		
		// 선택 지역에 맞는 url 넣어주기
		if (area.equals("광주")) {
			moveURL = "Gwangju.jsp";
		} else if (area.equals("목포")) {
			moveURL = "Mokpo.jsp";
		} else if (area.equals("여수")) {
			moveURL = "Yeosu.jsp";
		} else if (area.equals("순천")) {
			moveURL = "Suncheon.jsp";
		} else if (area.equals("담양")) {
			moveURL = "Damyang.jsp";
		}
		
		// 인기관광지 dto 가져오기
		FavoriteTravelDTO f_dto = new FavoriteTravelDTO();
		f_dto.setTravel_area(area);
		
		// 지역맛집 dto 가져오기
		RestaurantDTO r_dto = new RestaurantDTO();
		r_dto.setRestaurant_area(area);
		
		DataDAO dao = new DataDAO();
		
		String loc = request.getParameter("관광지");
		
		// 인기관광지 리스트 생성
		List<FavoriteTravelDTO> fList = dao.favoriteT(f_dto);
		if(fList != null) {
			request.setAttribute("fList", fList);
		} 
		// 지역 맛집 리스트 생성
		List<RestaurantDTO> rList = dao.restaurant(r_dto);
		if(rList != null) {
			request.setAttribute("rList", rList);
		}
		
		request.setAttribute("loc", loc);
		request.setAttribute("moveURL", moveURL);
		
		// 해당 지역 페이지로 데이터들 보내기
		RequestDispatcher rd = request.getRequestDispatcher("Map.jsp");
		rd.forward(request, response);
	}

}
