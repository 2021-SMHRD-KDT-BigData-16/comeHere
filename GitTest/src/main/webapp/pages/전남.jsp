<%@page import="com.smhrd3.model.ConsumptionDTO"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<title>Soft UI Dashboard by Creative Tim</title>
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="../assets/css/soft-ui-dashboard.css?v=1.0.7"
	rel="stylesheet" />
<link rel="stylesheet" href="../assets/css/CSS.css">
</head>
<body class="g-sidenav-show  bg-gray-100">

	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
		<!-- Navbar -->

		<!-- End Navbar -->
		<nav id="km">
			<div class="container-fluid py-4">
				<div class="row">
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card">
							<a href="./광주.jsp">
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-capitalize font-weight-bold">문화의
													도시</p>
												<h5 class="font-weight-bolder mb-0">
													광주 <span class="text-success text-sm font-weight-bolder"></span>
												</h5>
											</div>
										</div>
										<div class="col-4 text-end">
											<img src="../메인페이지 목업/assets/css/images/광주광역시.png">
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card">
							<a href="./담양.jsp">
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-capitalize font-weight-bold">미식의
													도시</p>
												<h5 class="font-weight-bolder mb-0">
													담양 <span class="text-success text-sm font-weight-bolder"></span>
												</h5>
											</div>
										</div>
										<div class="col-4 text-end">
											<img src="../메인페이지 목업/assets/css/images/담양.jpg">
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card">
							<a href="./목포.jsp">
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-capitalize font-weight-bold">항구의
													도시</p>
												<h5 class="font-weight-bolder mb-0">
													목포 <span class="text-success text-sm font-weight-bolder"></span>
												</h5>
											</div>
										</div>
										<div class="col-4 text-end">
											<img src="../메인페이지 목업/assets/css/images/목포.jpg">
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card">
							<a href="./순천.jsp">
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-capitalize font-weight-bold">자연의
													도시</p>
												<h5 class="font-weight-bolder mb-0">
													순천 <span class="text-danger text-sm font-weight-bolder"></span>
												</h5>
											</div>
										</div>
										<div class="col-4 text-end">
											<img src="../메인페이지 목업/assets/css/images/순천.jpg">
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6">
						<div class="card">
							<a href="./여수.jsp">
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-capitalize font-weight-bold">낭만의
													도시</p>
												<h5 class="font-weight-bolder mb-0">
													여수 <span class="text-success text-sm font-weight-bolder"></span>
												</h5>
											</div>
										</div>
										<div class="col-4 text-end">
											<img src="../메인페이지 목업/assets/css/images/여수.jpg">
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
		</nav>
		<div class="container-fluid py-1 px-3">
			<h3 align="center">생명의 땅</h3>
			<h1 align="center">전라남도</h1>
			<form action="selectYearJN">
				<h4> 연도 선택 : </h4>
				<select id="selectyear" name="year">
					<option value="2018">2018</option>
					<option value="2019">2019</option>
					<option value="2020">2020</option>
					<option value="2021">2021</option>
					<option value="2022">2022</option>
				</select>
				<input type="submit" value="선택">
			</form>
		</div>
		<div class="row mt-4">
			<div class="col-lg-7 mb-lg-0 mb-4">
				<div class="card">
					<div class="card-body p-3">
						<div class="row">
							<div class="col-lg-6">
								<div class="d-flex flex-column h-100">
									<p class="mb-1 pt-2 text-bold">Built by developers</p>
									<h5 class="font-weight-bolder">Soft UI Dashboard</h5>
									<p class="mb-5">From colors, cards, typography to complex
										elements, you will find the full documentation.</p>
									<a
										class="text-body text-sm font-weight-bold mb-0 icon-move-right mt-auto"
										href="javascript:;"> Read More <i
										class="fas fa-arrow-right text-sm ms-1" aria-hidden="true"></i>
									</a>
								</div>
							</div>
							<div class="col-lg-5 ms-auto text-center mt-5 mt-lg-0">
								<div class="bg-gradient-primary border-radius-lg h-100">
									<img src="../assets/img/shapes/waves-white.svg"
										class="position-absolute h-100 w-50 top-0 d-lg-block d-none"
										alt="waves">
									<div
										class="position-relative d-flex align-items-center justify-content-center h-100">
										<img class="w-100 position-relative z-index-2 pt-4"
											src="../assets/img/illustrations/rocket-white.png"
											alt="rocket">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="card h-100 p-3">
					<div
						class="overflow-hidden position-relative border-radius-lg bg-cover h-100"
						style="background-image: url('../assets/img/ivancik.jpg');">
						<span class="mask bg-gradient-dark"></span>
						<div
							class="card-body position-relative z-index-1 d-flex flex-column h-100 p-3">
							<h5 class="text-white font-weight-bolder mb-4 pt-2">Work
								with the rockets</h5>
							<p class="text-white">Wealth creation is an evolutionarily
								recent positive-sum game. It is all about who take the
								opportunity first.</p>
							<a
								class="text-white text-sm font-weight-bold mb-0 icon-move-right mt-auto"
								href="javascript:;"> Read More <i
								class="fas fa-arrow-right text-sm ms-1" aria-hidden="true"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-lg-5 mb-lg-0 mb-4">
				<div class="card z-index-2">
					<div class="card-body p-3">
						<div class="bg-gradient-dark border-radius-lg py-3 pe-1 mb-3">
							<div class="chart">
								<canvas id="chart-bars" class="chart-canvas" height="170"></canvas>
							</div>
						</div>

						<!-- 관광소비유형 -->
						<h6 class="ms-2 mt-4 mb-0">관광소비유형</h6>
						<p class="text-sm ms-2">
							<span class="font-weight-bolder"></span>
						</p>
						<div class="container border-radius-lg">
							<div class="row">
								<div class="col-3 py-3 ps-0">
									<div class="d-flex mb-2">
										🍽
										<p class="text-xs mt-1 mb-0 font-weight-bold">식음료업</p>
									</div>
									<h4 class="font-weight-bolder">36K</h4>
									<div class="progress w-75">
										<div class="progress-bar bg-dark w-60" role="progressbar"
											aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
								<div class="col-3 py-3 ps-0">
									<div class="d-flex mb-2">
										🛒
										<p class="text-xs mt-1 mb-0 font-weight-bold">쇼핑업</p>
									</div>
									<h4 class="font-weight-bolder">2m</h4>
									<div class="progress w-75">
										<div class="progress-bar bg-dark w-90" role="progressbar"
											aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
								<div class="col-3 py-3 ps-0">
									<div class="d-flex mb-2">
										🎆
										<p class="text-xs mt-1 mb-0 font-weight-bold">여가서비스업</p>
									</div>
									<h4 class="font-weight-bolder">435$</h4>
									<div class="progress w-75">
										<div class="progress-bar bg-dark w-30" role="progressbar"
											aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
								<div class="col-3 py-3 ps-0">
									<div class="d-flex mb-2">
										🏢
										<p class="text-xs mt-1 mb-0 font-weight-bold">숙박업</p>
									</div>
									<h4 class="font-weight-bolder">43</h4>
									<div class="progress w-75">
										<div class="progress-bar bg-dark w-50" role="progressbar"
											aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-7">
				<div class="card z-index-2">
					<div class="card-header pb-0">
						<h3>SNS 언급량</h3>
						<p class="text-sm">
							<i class="fa fa-arrow-up text-success"></i> <span
								class="font-weight-bold">4% more</span> in 2021
						</p>
					</div>
					<div class="card-body p-3">
						<div class="chart">
							<canvas id="chart-line" class="chart-canvas" height="300"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 동반유형 키워드 언급량 -->
		<div class="row my-4">
			<div class="col-lg-8 col-md-6 mb-md-0 mb-4">
				<div class="card">
					<div class="card-header pb-0">
						<div class="row">
							<div class="col-lg-6 col-7">
								<h3>동반유형 키워드 언급량</h3>
								<p class="text-sm mb-0">
									<i class="fa fa-check text-info" aria-hidden="true"></i><span
										class="font-weight-bold ms-1">주요 국내 소셜미디어,커뮤니티의
										'동반유형'관련 주요 키워드 순위를 제공</span>
								</p>
							</div>
							<script type="text/javascript"
								src="https://www.gstatic.com/charts/loader.js"></script>
							<script type="text/javascript">
								google.charts.load('current', {
									'packages' : [ 'corechart' ]
								});
								google.charts.setOnLoadCallback(drawChart);

								function drawChart() {
									var data = google.visualization
											.arrayToDataTable([
													[ 'Year', 'Sales',
															'Expenses' ],
													[ '2013', 1000, 400 ],
													[ '2014', 1170, 460 ],
													[ '2015', 660, 1120 ],
													[ '2016', 1030, 540 ] ]);

									var options = {
										title : 'Company Performance',
										hAxis : {
											title : 'Year',
											titleTextStyle : {
												color : '#333'
											}
										},
										vAxis : {
											minValue : 0
										}
									};

									var chart = new google.visualization.AreaChart(
											document
													.getElementById('chart_div'));
									chart.draw(data, options);
								}
							</script>
							<div>
								<div id="chart_div" style="width: 100%; height: 500px;"></div>
							</div>
							<div class="col-lg-6 col-5 my-auto text-end">
								<div class="dropdown float-lg-end pe-4"></div>
							</div>
						</div>
					</div>
					<div class="card-body px-0 pb-2">
						<div class="table-responsive">
							<table class="table align-items-center mb-0">
								<thead>
									<tr>
										<th
											class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"><h6>순위</h6></th>
										<th
											class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"><h6>분류</h6></th>
										<th
											class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"><h6>관련키워드</h6>
										</th>
										<th
											class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
											<h6>언급량</h6>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<div class="d-flex px-2 py-1">
												<div class="d-flex flex-column justify-content-center">
													<h6 class="mb-0 text-sm">1</h6>
												</div>
											</div>
										</td>
										<td>
											<div class="avatar-group mt-2">
												<a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Ryan Tompson"> <img
													src="../assets/img/team-1.jpg" alt="team1">
												</a> <a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Romina Hadid"> <img
													src="../assets/img/team-2.jpg" alt="team2">
												</a> <a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Alexander Smith"> <img
													src="../assets/img/team-3.jpg" alt="team3">
												</a> <a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Jessica Doe"> <img
													src="../assets/img/team-4.jpg" alt="team4">
												</a>
											</div>
										</td>
										<td class="align-middle text-center text-sm"><span
											class="text-xs font-weight-bold"> $14,000 </span></td>
										<td class="align-middle">
											<div class="progress-wrapper w-75 mx-auto">
												<div class="progress-info">
													<div class="progress-percentage">
														<span class="text-xs font-weight-bold">60%</span>
													</div>
												</div>
												<div class="progress">
													<div class="progress-bar bg-gradient-info w-60"
														role="progressbar" aria-valuenow="60" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="d-flex px-2 py-1">
												<div class="d-flex flex-column justify-content-center">
													<h6 class="mb-0 text-sm">2</h6>
												</div>
											</div>
										</td>
										<td>
											<div class="avatar-group mt-2">
												<a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Romina Hadid"> <img
													src="../assets/img/team-2.jpg" alt="team5">
												</a> <a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Jessica Doe"> <img
													src="../assets/img/team-4.jpg" alt="team6">
												</a>
											</div>
										</td>
										<td class="align-middle text-center text-sm"><span
											class="text-xs font-weight-bold"> $3,000 </span></td>
										<td class="align-middle">
											<div class="progress-wrapper w-75 mx-auto">
												<div class="progress-info">
													<div class="progress-percentage">
														<span class="text-xs font-weight-bold">10%</span>
													</div>
												</div>
												<div class="progress">
													<div class="progress-bar bg-gradient-info w-10"
														role="progressbar" aria-valuenow="10" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="d-flex px-2 py-1">
												<div class="d-flex flex-column justify-content-center">
													<h6 class="mb-0 text-sm">3</h6>
												</div>
											</div>
										</td>
										<td>
											<div class="avatar-group mt-2">
												<a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Romina Hadid"> <img
													src="../assets/img/team-3.jpg" alt="team8">
												</a> <a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Jessica Doe"> <img
													src="../assets/img/team-1.jpg" alt="team9">
												</a>
											</div>
										</td>
										<td class="align-middle text-center text-sm"><span
											class="text-xs font-weight-bold"> Not set </span></td>
										<td class="align-middle">
											<div class="progress-wrapper w-75 mx-auto">
												<div class="progress-info">
													<div class="progress-percentage">
														<span class="text-xs font-weight-bold">100%</span>
													</div>
												</div>
												<div class="progress">
													<div class="progress-bar bg-gradient-success w-100"
														role="progressbar" aria-valuenow="100" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="d-flex px-2 py-1">
												<div class="d-flex flex-column justify-content-center">
													<h6 class="mb-0 text-sm">4</h6>
												</div>
											</div>
										</td>
										<td>
											<div class="avatar-group mt-2">
												<a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Ryan Tompson"> <img
													src="../assets/img/team-4.jpg" alt="user1">
												</a> <a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Romina Hadid"> <img
													src="../assets/img/team-3.jpg" alt="user2">
												</a> <a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Alexander Smith"> <img
													src="../assets/img/team-4.jpg" alt="user3">
												</a> <a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Jessica Doe"> <img
													src="../assets/img/team-1.jpg" alt="user4">
												</a>
											</div>
										</td>
										<td class="align-middle text-center text-sm"><span
											class="text-xs font-weight-bold"> $20,500 </span></td>
										<td class="align-middle">
											<div class="progress-wrapper w-75 mx-auto">
												<div class="progress-info">
													<div class="progress-percentage">
														<span class="text-xs font-weight-bold">100%</span>
													</div>
												</div>
												<div class="progress">
													<div class="progress-bar bg-gradient-success w-100"
														role="progressbar" aria-valuenow="100" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="d-flex px-2 py-1">
												<div class="d-flex flex-column justify-content-center">
													<h6 class="mb-0 text-sm">5</h6>
												</div>
											</div>
										</td>
										<td>
											<div class="avatar-group mt-2">
												<a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Ryan Tompson"> <img
													src="../assets/img/team-4.jpg" alt="user5">
												</a>
											</div>
										</td>
										<td class="align-middle text-center text-sm"><span
											class="text-xs font-weight-bold"> $500 </span></td>
										<td class="align-middle">
											<div class="progress-wrapper w-75 mx-auto">
												<div class="progress-info">
													<div class="progress-percentage">
														<span class="text-xs font-weight-bold">25%</span>
													</div>
												</div>
												<div class="progress">
													<div class="progress-bar bg-gradient-info w-25"
														role="progressbar" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="25"></div>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="d-flex px-2 py-1">

												<div class="d-flex flex-column justify-content-center">
													<h6 class="mb-0 text-sm">6</h6>
												</div>
											</div>
										</td>
										<td>
											<div class="avatar-group mt-2">
												<a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Ryan Tompson"> <img
													src="../assets/img/team-1.jpg" alt="user6">
												</a> <a href="javascript:;"
													class="avatar avatar-xs rounded-circle"
													data-bs-toggle="tooltip" data-bs-placement="bottom"
													title="Jessica Doe"> <img
													src="../assets/img/team-4.jpg" alt="user7">
												</a>
											</div>
										</td>
										<td class="align-middle text-center text-sm"><span
											class="text-xs font-weight-bold"> $2,000 </span></td>
										<td class="align-middle">
											<div class="progress-wrapper w-75 mx-auto">
												<div class="progress-info">
													<div class="progress-percentage">
														<span class="text-xs font-weight-bold">40%</span>
													</div>
												</div>
												<div class="progress">
													<div class="progress-bar bg-gradient-info w-40"
														role="progressbar" aria-valuenow="40" aria-valuemin="0"
														aria-valuemax="40"></div>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<!-- 업종별 신용카드 소비액 추이 -->
			<div class="col-lg-4 col-md-6">
				<div class="card h-100">
					<div class="card-header pb-0">
						<h4>업종별 신용카드 소비액 추이_운송업제외</h4>
						<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
						<% List<ConsumptionDTO> consumptionList = (List)request.getAttribute("consumptionList"); %>
						<%if(consumptionList != null) { %>
						<script type="text/javascript">
							google.charts.load('current', {
								'packages' : [ 'corechart' ]
							});
							google.charts.setOnLoadCallback(drawChart);
							
							function drawChart() {	
								
								var data = google.visualization
										.arrayToDataTable([
												[ 'Task', 'Hours per Day' ],
												[ 'consumptionList.get(0).cunsumption_type1', consumptionList.get(0).cunsumption_amount ],
												[ 'consumptionList.get(1).cunsumption_type1', consumptionList.get(1).cunsumption_amount ],
												[ 'consumptionList.get(2).cunsumption_type1', consumptionList.get(2).cunsumption_amount ],
												[ 'consumptionList.get(3).cunsumption_type1', consumptionList.get(3).cunsumption_amount ],
												[ 'consumptionList.get(4).cunsumption_type1', consumptionList.get(4).cunsumption_amount ] ]);

								var options = {
									title : '',
									width : "100%",
									height : 400
								};

								var chart = new google.visualization.PieChart(
										document.getElementById('piechart'));

								chart.draw(data, options);
							}
						</script>
						
						<div id="piechart" style=" margin: 0px; padding: 0px;"></div>
						<%}%>

						<div id="piechart"
							style="margin-right: 100%; padding-right: 100%; margin: 0px; padding: 0px; margin-left: -99;"></div>

						<!-- 여행유형/트렌드 -->
						<div>
							<h3>여행유형/트렌드</h3>
							<script type="text/javascript"
								src="https://www.gstatic.com/charts/loader.js"></script>
							<script type="text/javascript">
								google.charts.load('current', {
									'packages' : [ 'line' ]
								});
								google.charts.setOnLoadCallback(drawChart);

								function drawChart() {

									var data = new google.visualization.DataTable();
									data.addColumn('number', 'Day');
									data.addColumn('number',
											'Guardians of the Galaxy');
									data.addColumn('number', 'The Avengers');
									data.addColumn('number',
											'Transformers: Age of Extinction');

									data.addRows([ [ 1, 37.8, 80.8, 41.8 ],
											[ 2, 30.9, 69.5, 32.4 ],
											[ 3, 25.4, 57, 25.7 ],
											[ 4, 11.7, 18.8, 10.5 ],
											[ 5, 11.9, 17.6, 10.4 ],
											[ 6, 8.8, 13.6, 7.7 ],
											[ 7, 7.6, 12.3, 9.6 ],
											[ 8, 12.3, 29.2, 10.6 ],
											[ 9, 16.9, 42.9, 14.8 ],
											[ 10, 12.8, 30.9, 11.6 ],
											[ 11, 5.3, 7.9, 4.7 ],
											[ 12, 6.6, 8.4, 5.2 ],
											[ 13, 4.8, 6.3, 3.6 ],
											[ 14, 4.2, 6.2, 3.4 ] ]);

									var options = {
										chart : {
											title : '',
											subtitle : ''
										},
										width : 500,
										height : 500,
										axes : {
											x : {
												0 : {
													side : 'top'
												}
											}
										}
									};

									var chart = new google.charts.Line(document
											.getElementById('line_top_x'));

									chart.draw(data, google.charts.Line
											.convertOptions(options));
								}
							</script>
							</head>
							<div>
								<div id="line_top_x"></div>
							</div>

						</div>
					</div>

				</div>

			</div>
	</main>

	<!------------------------------------------------------------------------------------------------------------------------------------------>

	<div class="fixed-plugin">
		<a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
			<i class="fa fa-cog py-2"> </i>
		</a>
		<div class="card shadow-lg ">
			<div class="card-header pb-0 pt-3 ">
				<div class="float-start">
					<h5 class="mt-3 mb-0">Soft UI Configurator</h5>
					<p>See our dashboard options.</p>
				</div>
				<div class="float-end mt-4">
					<button
						class="btn btn-link text-dark p-0 fixed-plugin-close-button">
						<i class="fa fa-close"></i>
					</button>
				</div>
				<!-- End Toggle Button -->
			</div>
			<hr class="horizontal dark my-1">
			<div class="card-body pt-sm-3 pt-0">
				<!-- Sidebar Backgrounds -->
				<div>
					<h6 class="mb-0">Sidebar Colors</h6>
				</div>
				<a href="javascript:void(0)" class="switch-trigger background-color">
					<div class="badge-colors my-2 text-start">
						<span class="badge filter bg-gradient-primary active"
							data-color="primary" onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-dark" data-color="dark"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-info" data-color="info"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-success" data-color="success"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-warning" data-color="warning"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-danger" data-color="danger"
							onclick="sidebarColor(this)"></span>
					</div>
				</a>
				<!-- Sidenav Type -->
				<div class="mt-3">
					<h6 class="mb-0">Sidenav Type</h6>
					<p class="text-sm">Choose between 2 different sidenav types.</p>
				</div>
				<div class="d-flex">
					<button class="btn bg-gradient-primary w-100 px-3 mb-2 active"
						data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
					<button class="btn bg-gradient-primary w-100 px-3 mb-2 ms-2"
						data-class="bg-white" onclick="sidebarType(this)">White</button>
				</div>
				<p class="text-sm d-xl-none d-block mt-2">You can change the
					sidenav type just on desktop view.</p>
				<!-- Navbar Fixed -->
				<div class="mt-3">
					<h6 class="mb-0">Navbar Fixed</h6>
				</div>
				<div class="form-check form-switch ps-0">
					<input class="form-check-input mt-1 ms-auto" type="checkbox"
						id="navbarFixed" onclick="navbarFixed(this)">
				</div>
				<hr class="horizontal dark my-sm-4">
				<a class="btn bg-gradient-dark w-100"
					href="https://www.creative-tim.com/product/soft-ui-dashboard">Free
					Download</a> <a class="btn btn-outline-dark w-100"
					href="https://www.creative-tim.com/learning-lab/bootstrap/license/soft-ui-dashboard">View
					documentation</a>
				<div class="w-100 text-center">
					<a class="github-button"
						href="https://github.com/creativetimofficial/soft-ui-dashboard"
						data-icon="octicon-star" data-size="large" data-show-count="true"
						aria-label="Star creativetimofficial/soft-ui-dashboard on GitHub">Star</a>
					<h6 class="mt-3">Thank you for sharing!</h6>
					<a
						href="https://twitter.com/intent/tweet?text=Check%20Soft%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
					</a> <a
						href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/soft-ui-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
					</a>
				</div>
			</div>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	<script>
		var ctx = document.getElementById("chart-bars").getContext("2d");

		new Chart(ctx, {
			type : "bar",
			data : {
				labels : [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
						"Aug", "Sep", "Oct", "Nov", "Dec" ],
				datasets : [ {
					label : "Sales",
					tension : 0.4,
					borderWidth : 0,
					borderRadius : 4,
					borderSkipped : false,
					backgroundColor : "#fff",
					data : [ 450, 200, 100, 220, 500, 100, 400, 230, 500 ],
					maxBarThickness : 6
				}, ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
						},
						ticks : {
							suggestedMin : 0,
							suggestedMax : 500,
							beginAtZero : true,
							padding : 15,
							font : {
								size : 14,
								family : "Open Sans",
								style : 'normal',
								lineHeight : 2
							},
							color : "#fff"
						},
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false
						},
						ticks : {
							display : false
						},
					},
				},
			},
		});

		var ctx2 = document.getElementById("chart-line").getContext("2d");

		var gradientStroke1 = ctx2.createLinearGradient(0, 230, 0, 50);

		gradientStroke1.addColorStop(1, 'rgba(203,12,159,0.2)');
		gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');
		gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors

		var gradientStroke2 = ctx2.createLinearGradient(0, 230, 0, 50);

		gradientStroke2.addColorStop(1, 'rgba(20,23,39,0.2)');
		gradientStroke2.addColorStop(0.2, 'rgba(72,72,176,0.0)');
		gradientStroke2.addColorStop(0, 'rgba(20,23,39,0)'); //purple colors

		new Chart(ctx2, {
			type : "line",
			data : {
				labels : [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
						"Aug", "Sep", "Oct", "Nov", "Dec" ],
				datasets : [ {
					label : "Mobile apps",
					tension : 0.4,
					borderWidth : 0,
					pointRadius : 0,
					borderColor : "#cb0c9f",
					borderWidth : 3,
					backgroundColor : gradientStroke1,
					fill : true,
					data : [ 50, 40, 300, 220, 500, 250, 400, 230, 500 ],
					maxBarThickness : 6

				}, {
					label : "Websites",
					tension : 0.4,
					borderWidth : 0,
					pointRadius : 0,
					borderColor : "#3A416F",
					borderWidth : 3,
					backgroundColor : gradientStroke2,
					fill : true,
					data : [ 30, 90, 40, 140, 290, 290, 340, 230, 400 ],
					maxBarThickness : 6
				}, ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							padding : 10,
							color : '#b2b9bf',
							font : {
								size : 11,
								family : "Open Sans",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : '#b2b9bf',
							padding : 20,
							font : {
								size : 11,
								family : "Open Sans",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
				},
			},
		});
	</script>
	<script>
		var win = navigator.platform.indexOf('Win') > -1;
		if (win && document.querySelector('#sidenav-scrollbar')) {
			var options = {
				damping : '0.5'
			}
			Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
					options);
		}
	</script>
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="../assets/js/soft-ui-dashboard.min.js?v=1.0.7"></script>
</body>
</html>