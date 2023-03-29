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

import com.smhrd3.model.CompanyDTO;
import com.smhrd3.model.ConsumptionDTO;
import com.smhrd3.model.CreditDTO;
import com.smhrd3.model.DataDAO;
import com.smhrd3.model.SNSDTO;
import com.smhrd3.model.TravelPurposeDTO;

@WebServlet("/selectYear")
public class selectYear extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// URL
		String moveURL = null;
		
		// 선택 지역 가져오기
		HttpSession session = request.getSession();
		String area = (String)session.getAttribute("area");
		
		// 선택 지역에 맞는 url 넣어주기
		if (area.equals("전라남도")) {
			moveURL = "JunNam.jsp";
		} else if (area.equals("광주")) {
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
		
		// 선택 연도 가져오기
		String temp = request.getParameter("year");
		int year = Integer.parseInt(temp);
		
		request.setAttribute("year", temp);
		
		// 신용카드 소비액 추이 dto 생성
		CreditDTO cre_dto = new CreditDTO();
		cre_dto.setConsumption_yearmonth(temp);
		cre_dto.setConsumption_area(area);
		
		// 관광 소비 유형 dto 생성
		ConsumptionDTO consump_dto = new ConsumptionDTO();
		consump_dto.setCunsumption_year(year);
		consump_dto.setCunsumption_area(area);
		
		// SNS언급량 dto 생성
		SNSDTO sns_dto = new SNSDTO();
		sns_dto.setSns_year(temp);
		sns_dto.setSns_are(area);
		
		// 여행유형/트렌드 dto 생성
		TravelPurposeDTO tp_dto = new TravelPurposeDTO();
		tp_dto.setPurpose_year(temp);
		tp_dto.setTravel_area(area);
		
		// 동반유형 dto 생성
		CompanyDTO com_dto = new CompanyDTO();
		com_dto.setCompany_year(year);
		com_dto.setTravel_area(area);
		
		// 메소드 실행을 위한 DAO 가져오기
		DataDAO dao = new DataDAO();
		
		// 해당 지역 관광 소비 유형 가져오기
		List<ConsumptionDTO> consumptionList = dao.consumptionData(consump_dto);
		if (consumptionList != null) {
			request.setAttribute("consumptionList", consumptionList);
		}
		
		// 해당 지역 업종별 신용카드 소비액 추이 가져오기
		List<CreditDTO> creditList = dao.creditData(cre_dto);
		if (creditList != null) {
			request.setAttribute("creditList", creditList);
		}
		
		// 해당 지역 SNS언급량 가져오기
		List<SNSDTO> snsList = dao.snsData(sns_dto);
		if (snsList != null) {
			request.setAttribute("snsList", snsList);
		}
		
		// 해당 지역 여행유형/트렌드 가져오기
		List<TravelPurposeDTO> tpList = dao.travelPurpose(tp_dto);
		if (tpList != null) {
			request.setAttribute("tpList", tpList);
		}
		
		// 해당 지역 동반유형 키워드
		List<CompanyDTO> comList = dao.company(com_dto);
		if (comList != null) {
			request.setAttribute("comList", comList);
		}
		
		// 해당 지역 페이지로 데이터들 보내기
		RequestDispatcher rd = request.getRequestDispatcher(moveURL);
		rd.forward(request, response);

	}

}
