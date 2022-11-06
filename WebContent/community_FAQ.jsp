<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<style>
		h2, p{
			text-align:center;
		}	
		
		h2:after{
			width: 0rem;
				}
		
		header.major h2 {
		    font-size: 1.25em;
		    font-weight: 800;
		    margin: 0 0 0.7em 0;
		    padding-bottom: 0.75em;
		}		
		.table-wrapper{
			font-family:'MaruBuri-Regular';
			border-radius:2em;
		}
		
		
		section {border-radius: 50px; border:1px solid darkgrey;}
		
		details { margin:5px 0 10px;}
		details > summary { background:white; color:#444; padding:10px; outline:0; border-radius:5px; cursor:pointer; transition:background 0.5s; text-align:left; box-shadow: 1px 1px 2px gray;margin: 10px auto;}
		details > summary::-webkit-details-marker { background:white; color:#444; background-size:contain; transform:rotate3d(0, 0, 1, 90deg); transition:transform 0.25s;}
		details[open] > summary::-webkit-details-marker { transform:rotate3d(0, 0, 1, 180deg);}
		details[open] > summary { background:antiquewhite;}
		details[open] > summary ~ * { animation:reveal 0.5s;}
		.tpt { background:white; color:#444; margin:5px 0 10px; padding:5px 10px; line-height:25px; border-radius:5px; box-shadow: 1px 1px 2px gray;}
		
		@keyframes reveal {
		    from { opacity:0; transform:translate3d(0, -30px, 0); }
		    to { opacity:1; transform:translate3d(0, 0, 0); }
		}
		
		::marker {
		    unicode-bidi: isolate;
		    font-variant-numeric: tabular-nums;
		    text-transform: none;
		    text-indent: 0px !important;
		    text-align: start !important;
		    text-align-last: start !important;
		    color: #b71c1c;
		}
		
		
	</style>
	<title>FAQ | 일하는 혈액들</title>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon2.png"/>
	<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
	</head>
	
	<body class="table-wrapper" ><!--style="background-color: cornsilk;"  -->
	
	
	<%@ include file="header.jsp" %>
		<!-- main -->
		<section>
			<div class="table-wrapper" id="table" style="margin: 100px auto; width: 700px;">
						<header class="major">
							<h2>FAQ</h2>
	
	
							<p>궁금한 내용들을 아래의 FAQ를 통해 해결해보세요!</p>
						</header>
						
				<table style="border: 0.5px solid gray;border-top: 0.5px solid gray;border-bottom: 0.5px solid gray; border-radius:"20px";width="780px" height="500px">
					<td style="padding: 50px; background-color: white;">
						
												
						<div >
								<details>
									<summary>[현혈증 관련] 헌혈증 재발급이 가능한가요?</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
										헌혈증은 재발급이 되지 않습니다.<br>
										헌혈증은 누구에게나 양도가 가능하며, 유가증권의 성격을 지니고 있기 때문에 훼손되어도 재발급이 어렵습니다. 따라서 분실되지 않도록 유의하시길 바랍니다.								
									</p>
									
								</details>
								
								<details>
									<summary>[현혈증 관련] 헌혈증 사용에 유효기간이 있나요?</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
										헌혈증 사용에는 유효기간이 없습니다.
									</p>
								</details>
								
								<details>
									<summary>[현혈증 관련] 헌혈증은 모든 의료기관에서 사용할 수 있나요?</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									헌혈증은 정당한 사유 없이 거부하지 못하도록 법률로 정해져있으므로, 헌혈증서 사용에 대하여 불편한 점이나 거부하는 의료기관이 있을 경우, 가까운 대한적십사 혈액원으로 연락하면 도움을 받으실 수 있습니다.<br>
									* 헌혈증 사용에 관한 사용은 대한적십사에서 정한 규정이 아니라 혈액관리법에 규정된 사항이며 의료기관에서는 수혈받은 환자가 헌혈증을 제시하였을 경우, 무상으로 수혈을 받도록 보장할 의무가 있습니다.<br>
									<span style="color:red"><b>관련법규</b></span>
										<ul>
											<li>
											<b>혈액관리법 제14조</b>
												<ol>
													<li>제 2항"...헌혈자 또는 그 헌혈장의 헌혈증을 양도받은 자는 의료기관에 그 헌혈증을 제시하고 무상으로 수혈 받을 수 있다."</li>
													<li>제 3항 "제2항의 규정에 의하여 수혈을 요구받은 의료기관은 정당한 이유 없이 이를 거부하지 못한다."</li>
												</ol>
												
											</li>
											<li>
											혈액관리법 제 20조
											<ol>
												<li>"위 사항을 위반한 자는 1년 이하의 징역 또는 300만원 이하의 벌금에 처한다."</li>
											</ol>
											</li>
										</ul>
									</p>
								</details>
								
								<details>
									<summary>[헌혈증 관련] 헌혈증 기부 시 개수 제한이 있나요?</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									헌혈증 기부 최소 개수 또는 개수 제한은 없습니다. 헌혈증 기부 양식 작성 시 원하는 만큼의 헌혈증 사진을 첨부하실 수 있으며 헌혈증 번호도 개수 만큼 입력해야 한다는 점 참고 부탁드립니다.
									</p>
								</details>
								
								<details>
									<summary>[헌혈유공장 관련] 헌혈유공장이란 무엇인가요?</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									헌혈유공장이란 헌혈증 기부 횟수가 X회 이상인 회원들에게 제공되는 증서입니다.
									</p>
								</details>
								
								<details>
									<summary>[헌혈유공장 관련] 헌혈유공장도 국가 훈장 및 포장에 포함되나요?</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									그렇지 않습니다.<br>
									헌혈유공장은 대한적십자사 회장명의로 된 포상으로 상훈법 상의 국가 훈장 및 포장에는 포함되지 않습니다.
									</p>
								</details>
								
								<details>
									<summary>[사이트이용 관련] 회원가입을 해야만 헌혈증 기부가 가능한가요?</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									네 그렇습니다. 헌혈증에 개인정보에 관련한 내용이 포함되어있으니 해당 정보 보호를 위해 회원가입은 필수입니다.
									</p>
								</details>
								
								<details>
									<summary>[사이트이용 관련] 저의 헌혈증 기부 내역을 알고 싶어요!</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									마이페이지/ 의 카테고리로 이동하시면 헌혈증 기부 내역을 확인하실 수 있습니다.
									</p>
								</details>
								
								<details>
									<summary>[헌혈유공장 관련] 헌혈증 요청 양식을 수정하고 싶어요!</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									 헌혈증 요청 양식은 수정 및 삭제가 어렵습니다. 수정이 어려운 만큼 작성 시 신중히 작성 부탁드립니다.
									</p>
								</details>
								
								<details>
									<summary>[헌혈유공장 관련] 헌혈증 요청 양식을 수정하고 싶어요!</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									 헌혈증 요청 양식은 수정 및 삭제가 어렵습니다.<br>
									 수정이 어려운 만큼 작성 시 신중히 작성 부탁드립니다.
									</p>
								</details>
								<details>
									<summary>[헌혈유공장 관련] 헌혈증 요청 양식을 수정하고 싶어요!</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									 헌혈증 요청 양식은 수정 및 삭제가 어렵습니다.<br>
									 수정이 어려운 만큼 작성 시 신중히 작성 부탁드립니다.
									</p>
								</details>
								<details>
									<summary>[헌혈유공장 관련] 헌혈증 요청 양식을 수정하고 싶어요!</summary>
									<p style="line-height: 25px;text-align: left;"><img src="images/answer_icon2.png" style="width: 33px;margin-top: 20px;margin-right: 5px;">
									 헌혈증 요청 양식은 수정 및 삭제가 어렵습니다.<br>
									 수정이 어려운 만큼 작성 시 신중히 작성 부탁드립니다.
									</p>
								</details>
									
							</div>							
					</td>
			</table>
		</div>
	</section>
	
	
<%@ include file="footer.jsp" %>
		
			<!-- Scripts -->
		   <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		   <script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
		   <script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
		   <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
		   <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
		   <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
		   <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
					<script type="text/javascript">
						var bDisplay=true;
						function doDisplay(){
							var con = document.getElement("underPage");
							if(con.style.diplay=='none'){
								con.style.diplay = 'block';
							}else{
								con.style.diplay = 'none'
							}
						}
					</script>
					
</body></html>