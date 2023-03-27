package com.smhrd3.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/selectYearJN")
public class selectYearJN extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String year= request.getParameter("year");
		
		if(year.equals("2018")) {
			
		} else if(year.equals("2019")) {
			
		} else if(year.equals("2020")) {
			
		} else if(year.equals("2021")) {
			
		} else if(year.equals("2022")) {
			
		}
	}

}
