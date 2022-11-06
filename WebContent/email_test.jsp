<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<tr>
				<th>이메일</th>
				<td>
				<input type="email" name="Memail" id="Memail">
				<span id="emailConfirmText">
				<input type="button" value="인증" onclick="confirmEmail()">
				</span>
				</td>
			</tr>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
</body>
<script>
//이메일 인증 
function confirmEmail(){
	let Memail = document.getElementById("Memail").value;
	let emailConfirmText = document.getElementById("emailConfirmText");
	
	let emailPass = false;

	$.ajax({
		type : "GET",
		url : "A_emailConfirm",
		data : { "Memail" : Memail } ,
		dataType : "text",
		success : function(data) {
			// 성공
			alert("입력하신 이메일로 인증번호가 발송 되었습니다.");
			emailConfirmText.innerHTML = "<input type='hidden' id='check2' value='" + data + "'>"
											+ "<br/><input type='text' placeholder='인증번호 입력' id='emailKey'>"
											+ " <input type='button' value='확인' onclick='keyCheck()'>"
											+ "<br/><span id='check1'></span>";
		} ,
		error : function() {
			// 실패
			alert("인증번호 발송에 실패했습니다.");
		} 
	});
}

// 인증번호 확인하기
function keyCheck(data){
	let emailKey = document.getElementById("emailKey").value;
	
	let check1 = document.getElementById("check1");
	let check2 = document.getElementById("check2").value;
	
	
	if(emailKey == check2){
		check1.style.color = "#0000ff";
		check1.innerHTML = "인증번호가 일치합니다.";
		emailPass = true;
	} else{
		check1.style.color = "#ff0000";
		check1.innerHTML = "인증번호가 일치하지 않습니다.";
	}
	return emailPass;
}
</script>
</html>