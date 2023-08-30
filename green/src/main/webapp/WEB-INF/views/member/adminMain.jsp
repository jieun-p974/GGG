<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<link rel="stylesheet" href="/resources/styles/table.css">
<link rel="stylesheet" href="/resources/styles/font.css">
<title>관리자 메인</title>
<style type="text/css">
.graph {
	display: grid;
	grid-template-row: 1fr 1fr;
}
</style>
</head>
<body>
	<%@include file="../layouts/adminHeader.jsp"%>
	<section class="service position-relative overflow-hidden mt-5">
		<div class="container position-relative mt-5">
			<img src="/resources/imgs/service/dot-shape.png"
				class="shape position-absolute">
			<div class="row"></div>
			<div class="row d-flex flex-wrap justify-content-center step-row">
				<div class="d-flex p-0 justify-content-between">
					<div class="card p-4 " style=" width: 29%">
						<div class="d-flex justify-content-between">
							<div class="d-flex">
								<img alt="관리자 아이콘" src="/resources/imgs/admin.png" style="width:30px; height: 30px">
								<p class="m-0 text-black ms-2">${userName}</p>
							</div>
							<a href="/challenge/adminChallenge.do">
								<img alt="챌린지 인증" src="/resources/imgs/plus.png" style="width:30px; height: 30px">
							</a>
						</div>
						<div>
							<table class="type09 mt-3 col-12">
								<thead>
									<th>ID</th>
									<th>챌린지명</th>
									<th>신청일</th>
								</thead>
								<tbody>
									<c:forEach items="${memChal}" var="mc">
										<tr>
										<td style="width: 100px">${mc.id}</td>
										<td>${mc.chal_name}</td>
										<td>${mc.cer_date}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card p-4 " style="width: 40%">
						<h4 class="mb-3" id="todayDate">오늘의 현황 : </h4>
						<div style="width:500px; height: 200px">
							<canvas id="bar-chart" width="500" height="200"></canvas>
						</div>
						<div style="width:500px; height: 100px">
							<canvas id="pay-chart" width="500" height="100"></canvas>
						</div>
					</div>
					<div class="card p-4 "style="width: 29%">
						<h4 class="mb-3">결제 비율</h4>
						<canvas id="pie-chart" width="430"></canvas>
					</div>
				</div>
				<div class="d-flex justify-content-between align-items-start mt-3 p-0">
					<div class="card graph p-4" style="width:49%; height: 470px">
						<div class="col-12">
							<h4 class="mt-3">일주일 동안 가입한 회원 수</h4>
							<canvas id="line-chart"width="600" height="150"></canvas>
						</div>
						<div class="col-12">
							<h4 class="mt-3">일주일 동안 결제한 회원 수</h4>
							<canvas id="line-chart2"width="600" height="150"></canvas>
						</div>
					</div>
					<div class="card p-4"  style="width:49%; height: 470px">
						<h4 class="mt-3">일주일 동안 결제한 금액</h4>
						<canvas id="line-chart3"width="650" height="300"></canvas>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
	<script type="text/javascript">
		$(function() {
 			getMemGraph();
			getPayGraph();
			getSumGraph();
			getPieGraph();
			getToday(); 
			getTodayPay();
			
			let today = new Date();   
			let year = today.getFullYear(); // 년도
			let month = today.getMonth() + 1;  // 월
			let date = today.getDate();  // 날짜
			let day = today.getDay();  // 요일
			let html = year + "-"+ month + "-" +day;
			
			$("#todayDate").append(html);
		});

		function getToday() {
			let payCount = ${payCount};
			let todayMem = ${todayMem};
			console.log(payCount+" "+todayMem);

			new Chart(document.getElementById("bar-chart"), {
				type : 'horizontalBar',
				data : {
					labels : [ '가입 건수', '결제 건수' ],
					datasets : [ {
						label : "오늘",
						data : [ todayMem, payCount ],
						backgroundColor : [ "rgba(138, 182, 169,0.5)", "rgba(80, 128, 104,0.5)" ], //배경색상
					}

					]
				},
				options : { 
					legend: {
	                    display: false
	                },
					maintainAspectRatio : false,//그래프의 비율 유지 
					responsive : false,
					scales : {
						xAxes : [ {
							ticks : {
								beginAtZero : true,
								stepSize : 10,
							}
						} ]
					},
				}
			});
		}
		function getTodayPay() {
			let paySum = ${paySum};
			console.log(paySum);

			new Chart(document.getElementById("pay-chart"), {
				type : 'horizontalBar',
				data : {
					labels : ['결제 금액' ],
					datasets : [ {
						label : "오늘",
						data : [paySum ],
						backgroundColor : [ "rgba(68, 92, 76,0.5)" ], //배경색상
					}

					]
				},
				options : {
					legend: {
	                    display: false
	                },
					maintainAspectRatio : false,//그래프의 비율 유지 
					responsive : false,
					scales : {
						xAxes : [ {
							ticks : {
								beginAtZero : true,
							}
						} ]
					},
					
				}
			});
		}
		function getMemGraph() {
			let memList = [];
			let sdateList = [];

			$.ajax({
				url : "chartsData.do",
				type : "post",
				success : function(data) {
					for (let i = 0; i < data.length; i++) {
						memList.push(data[i].daily_mem);
						sdateList.push(data[i].weeks);
					}
					new Chart(document.getElementById("line-chart"), {
						type : "line",
						data : {
							labels : sdateList,
							datasets : [ {
								label : "가입 회원 수",
								data : memList,
								borderColor : "#53bab8",
								fill : false
							} ]
						},
						options : {
							maintainAspectRatio : false,//그래프의 비율 유지 
							responsive : false,
							scales : {
								yAxes : [ {
									ticks : {
										beginAtZero : true,
										stepSize : 1,
									}
								} ]
							},
							
						}
					});
				},
				error : function(request, error) {
					console.log("요청 실패");
					console.log("code:" + request.status + "\n" + "message: "
							+ request.responseText + "\n" + "error: " + error);
				}
			});
		}

		function getPayGraph() {
			let pCountList = [];
			let sdateList = [];

			$.ajax({
				url : "chartsData.do",
				type : "post",
				success : function(data) {
					for (let i = 0; i < data.length; i++) {
						pCountList.push(data[i].pay_count);
						sdateList.push(data[i].weeks);
					}
					new Chart(document.getElementById("line-chart2"), {
						type : "line",
						data : {
							labels : sdateList,
							datasets : [ {
								label : "결제 건수",
								data : pCountList,
								borderColor : "#2e867d",
								fill : false
							} ]
						},
						options : {
							maintainAspectRatio : false,//그래프의 비율 유지 
							responsive : false,
						}
					});
				},
				error : function(request, error) {
					console.log("요청 실패");
					console.log("code:" + request.status + "\n" + "message: "
							+ request.responseText + "\n" + "error: " + error);
				}
			});
		}

		function getSumGraph() {
			let pSumList = [];
			let sdateList = [];

			$.ajax({
				url : "chartsData.do",
				type : "post",
				success : function(data) {
					for (let i = 0; i < data.length; i++) {
						pSumList.push(data[i].pay_sum);
						sdateList.push(data[i].weeks);
					}
					new Chart(document.getElementById("line-chart3"), {
						type : "line",
						data : {
							labels : sdateList,
							datasets : [ {
								label : "결제 금액",
								data : pSumList,
								borderColor : "#bacacc",
								fill : false
							} ]
						},
						options : {
							maintainAspectRatio : false,//그래프의 비율 유지 
							responsive : false,
						}
					});
				},
				error : function(request, error) {
					console.log("요청 실패");
					console.log("code:" + request.status + "\n" + "message: "
							+ request.responseText + "\n" + "error: " + error);
				}
			});
		}

		function getPieGraph() {
			let cntList = [];

			$.ajax({
				url : "chartsData.do",
				type : "post",
				success : function(data) {
					cntList.push(data[0].t_cnt);
					cntList.push(data[0].s_cnt);
					cntList.push(data[0].i_cnt);

					console.log(cntList);
					new Chart(document.getElementById("pie-chart"), {
						type : 'pie',
						data : {
							labels : [ "3회권", "7회권", "무제한" ],
							datasets : [ {
								backgroundColor : [ "#a0cfd6","#53bab8","#bacacc" ],
								data : cntList
							} ]
						},
						options : {
							maintainAspectRatio : false,//그래프의 비율 유지 
							responsive : false,
						}
					});
				},
				error : function(request, error) {
					console.log("요청 실패");
					console.log("code:" + request.status + "\n" + "message: "
							+ request.responseText + "\n" + "error: " + error);
				}
			});
		}
	</script>
</body>
</html>