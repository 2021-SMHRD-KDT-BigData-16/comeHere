package com.smhrd3.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd3.model.ConsumptionDTO;
import com.smhrd3.model.CreditDTO;
import com.smhrd3.model.DataDAO;
import com.smhrd3.model.SNSDTO;

@WebServlet("/selectYearJN")
public class selectYearJN extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 선택 연도 가져오기
		String temp = request.getParameter("year");
		int year = Integer.parseInt(temp);
		
		CreditDTO cre_dto = new CreditDTO();
		cre_dto.setConsumption_yearmonth(temp);
		
		ConsumptionDTO consump_dto = new ConsumptionDTO();
		consump_dto.setCunsumption_year(year);
		
		SNSDTO sns_dto = new SNSDTO();
		sns_dto.setSns_year(temp);
		
		// 메소드 실행을 위한 DAO 가져오기
		DataDAO dao = new DataDAO();
		
		// 전라남도 관광 소비 유형 가져오기
		List<ConsumptionDTO> consumptionList = dao.consumptionDataJN(consump_dto);
		if (consumptionList != null) {
			request.setAttribute("consumptionList", consumptionList);
		}
		
		// 전라남도 업종별 신용카드 소비액 추이 가져오기
		List<CreditDTO> creditList = dao.creditDataJN(cre_dto);
		if (creditList != null) {
			request.setAttribute("creditList", creditList);
		}
		
		// 전라남도 SNS언급량 가져오기
		List<SNSDTO> snsList = dao.snsDataJN(sns_dto);
		if (snsList != null) {
			request.setAttribute("snsList", snsList);
		}
				
		// 전라남도 페이지로 데이터들 보내기
		RequestDispatcher rd = request.getRequestDispatcher("전남.jsp");
		rd.forward(request, response);

	}

}
