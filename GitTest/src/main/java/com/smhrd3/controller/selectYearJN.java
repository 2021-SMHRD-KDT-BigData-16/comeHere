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
import com.smhrd3.model.DataDAO;

@WebServlet("/selectYearJN")
public class selectYearJN extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String temp1 = request.getParameter("year");
		int year = Integer.parseInt(temp1);

		ConsumptionDTO dto = new ConsumptionDTO();
		dto.setCunsumption_year(year);
		DataDAO dao = new DataDAO();
		List<ConsumptionDTO> consumptionList = dao.consumptionData(dto);
		if (consumptionList != null) {
			request.setAttribute("consumptionList", consumptionList);
		}
		RequestDispatcher rd = request.getRequestDispatcher("전남.jsp");
		rd.forward(request, response);

	}

}
