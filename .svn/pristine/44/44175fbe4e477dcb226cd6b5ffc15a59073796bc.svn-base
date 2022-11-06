<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Working Blood</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Caramel&display=swap" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png" />
<noscript>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" />
</noscript>

<style>
@font-face {
    font-family: 'Ronet';
    src: url('images/Ronet.ttf') format('truetype');
}
section {width: 35%; background: #fff; max-height: 90%; margin: 28px auto; padding: 2.5em 2em 2.5em; border-radius: 50px; border:1px solid darkgrey;}
h2 {line-height: 0px; margin: 50px auto; padding: 0; text-align: center; font-weight: 900; 
	 font-size: 40px;}
.inner{margin-top: 33px;}
.button {height: 1.75em; line-height: 1.75em;}
.col-6 {height: 50px;}
img{width: 40px;}
input{border-color: #fff !important;}
input[type="text"]{padding:0;}

table tr, table th, table td{background: #fff; border: none;}
table tbody tr{border:none;}
table td{vertical-align: middle !important; padding:0.75em; border: 0.5px solid #e6e6e6;}
 .bac{background: #e55 !important; border-radius: 20px !important;}
 input[type="checkbox"]:checked + label:before, input[type="radio"]:checked + label:before {
    background-color: #e55;
    border-color: #e55;
    color: #fff;
}
caption{text-align: left; color:darkgrey;}

	.image {
	  position:relative;
	}
	.image .text {
	  position: absolute;
	    top: 0;
	    right: 0;
	}
 </style>
</head>
<body class="is-preload" style="background: #fff;">
	<!-- Main -->
	<%-- --%>
	<section>
		<h2 style="margin-bottom: 15%;"><a href="index.jsp">WORKING BLOOD</a></h2>
		<form method="post" action="${pageContext.request.contextPath}/user/UserJoinOk.us" name="joinForm">
		<div class="inner">
			<table border="1">
				<caption>＊필수 입력 항목</caption>
				<colgroup>
					<col>
					<col>
					<col>
					<col>
					<col>
					<col>
				</colgroup>
					<tbody>
					<tr>
						<td><img src="${pageContext.request.contextPath}/images/id.png"></td>
						<td colspan="4" >
						<div class="image" >						
						<input type="text" name="user_id" id="user_id" value="" placeholder="아이디" style="width: 493px;"/>
						<div class="text"><img src="${pageContext.request.contextPath}/images/x.png" id="id_check_true" style="display: none"></div>				
						<div class="text"><img src="${pageContext.request.contextPath}/images/check.png" id="id_check_false" style="display: none"></div>		
						</td>
						</div>
					</tr>
					<tr>
						<td><img src="${pageContext.request.contextPath}/images/password.png"></td>
						<td colspan="4">
						<div class="image" >						
						<input type="password" name="user_pw" id="user_pw" value="" placeholder="비밀번호(8~16자의 대문자, 소문자, 숫자, 특수문자 모두 포함)" style="width: 493px; padding: 0;"/>
						<div class="text"><img src="${pageContext.request.contextPath}/images/x.png" id="pw_check_true" style="display: none"></div>				
						<div class="text"><img src="${pageContext.request.contextPath}/images/check.png"  id="pw_check_false" style="display: none;"></div>
						</td>
						</div>
										
					</tr>
					<tr>
						<td><img src="${pageContext.request.contextPath}/images/name.png"></td>
						<td colspan="4"><input type="text" name="user_name" id="user_name" value="" placeholder="이름(실명)"/></td>
						
					</tr>
					<tr>
						<td rowspan="2"><img src="${pageContext.request.contextPath}/images/phone.png" style="padding-bottom: 145%;"/></td>
						<td colspan="3" style="border-right: none;"><input type="text" name="user_phonenum" id="user_phonenum" value="" placeholder="휴대폰 번호(-없이)"/></td>
						<td style="border-left: none;"><input type="button" value="인증번호 전송" class="primary bac" onclick="sendSMS()" style="float: right"/></td>
					</tr>
					<tr>
						<td colspan="3" style="border-right: none;"><input type="text" name="user_phonenum_check" id="user_phonenum_check" value="" placeholder="인증번호 입력" /></td>
						<td  style="border-left: none;"><input type="button" value="인증번호 확인" class="primary bac" id="smsCheck" style="float: right"/></td>
					</tr>
					<tr>
						<td><img src="${pageContext.request.contextPath}/images/blood.png"></td>
						<td style="border-right: none;"><input type="radio" name="user_blood_type" id="a" value="A" class="blood" checked="checked"/><label for="a">A</label></td>
						<td style="border-right: none; border-left: none;"><input type="radio" name="user_blood_type" id="b" value="B"/ class="blood" /><label for="b">B</label></td>
						<td style="border-right: none; border-left: none;"><input type="radio" name="user_blood_type" id="ab" value="AB" class="blood" /><label for="ab">AB</label></td>
						<td style="border-left: none;"><input type="radio" name="user_blood_type" id="o" value="O" class="blood"/><label for="o">O</label></td>
					</tr>
					<tr>
						<td><img src="${pageContext.request.contextPath}/images/email.png"></td>
						<td  colspan="4"><input type="text" name="user_email" id="user_email" value="" placeholder="이메일"></td>
						
					</tr>
					<tr>
						<td style="border-bottom: none;"><img src="${pageContext.request.contextPath}/images/address.png"></td>
						<td  colspan="3" style="border-right: none;"><input type="text" name="user_zipcode" id="user_zipcode" class="postcodify_postcode5" value="" placeholder="우편번호"/></td>
						<td style="border-left: none;"><input type="button" id="postcodify_search_button" class="button primary bac"  value="검색"  style="float: right"/></td>
						
					</tr>
					<tr>
						<td style="border-bottom: none; border-top: none;"></td>
						<td colspan="4"><input type="text" name="user_address" id="user_address" class="postcodify_address" value="" placeholder="주소"/></td>
					</tr>
					<tr>
						<td style="border-top: none;"></td>
						<td colspan="4"><input type="text" name="user_address_detail" id="user_address_detail" class="postcodify_details" value="" placeholder="상세주소"/></td>
					
					</tr>
					</tbody>
			</table>
			<div style="text-align: center;">
				<input type="button" value="회원가입" class="button primary" style="background: #e55; width:35%;" onclick="formSubmit()"/>
			</div>
			<hr>
		</div>	
		</form>
	</section>



	<%@ include file="footer.jsp"%>

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	<script>var contextPath = "${pageContext.request.contextPath}";</script>
	<script src="${pageContext.request.contextPath}/app/user/join.js"></script>

</body>

</html>