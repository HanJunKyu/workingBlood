<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<title>회원 정보 수정</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Caramel&display=swap" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png"/>
<noscript>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" />
</noscript>

<style>
@font-face {
    font-family: 'Ronet';
    src: url('images/Ronet.ttf') format('truetype');
}
section {width: 35%; background: #fff; max-height: 90%; margin: 28px auto; padding: 2.5em 2em 2.5em; border-radius: 50px; border:1px solid darkgrey;}
h2 {line-height: 0px;
    margin: 50px auto 73px;
    padding: 0;
    text-align: center;
    font-weight: 900;
    /* font-family: 'Caramel', cursive; */
    font-size: 2.5em;}
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
#thumb{
	margin : auto;
	width: 40%;
	text-align : center;
	vertical-align: bottom;
}
#profile{
	width:150px;
}
#profile_img_upload{
    width: 0.1px;
	height: 0.1px;
	opacity: 0;
	overflow: hidden;
	position: absolute;
	z-index: -1;
}

#profile_img_upload + label {
    border: 2px solid #d9e1e8;
    background-color: #fff;
    color: #2b90d9;
    border-radius: 2rem;
    padding: 3px 17px 3px 17px;
    font-weight: 500;
    font-size: 15px;
    outline: none;
}

#profile_img_upload:focus + label,
#profile_img_upload + label:hover {
    cursor: pointer;
}
table td{background: #fff !important;}
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
<body class="is-preload">
	<!-- Main -->
	<%@ include file="header.jsp"%>
	 <c:if test="${session_id eq null}">
		<script>
            alert("로그인 후 이용하세요.");
            location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
		</script>
	</c:if>
	
	<section>
		<h2>내 정보 수정</h2>
		<form method="post" action="${pageContext.request.contextPath}/myPage/MyPageEditProfileOk.my" name="editForm">
		<div class="inner">
			<%-- <div id="thumb">
				<table>
					<tr>
						<td colspan="3" id=""><img id="profile" src="${pageContext.request.contextPath}/images/no_profile_image.png"><br>
							<input type='file' accept='${pageContext.request.contextPath}/image/jpg,image/png,image/jpeg,image/gif' id="profile_img_upload" onchange="loadFile(this)" onmouseover="remove(this)"/>
							<label for='profile_img_upload'>사진 올리기</label>
						</td>
					</tr>
				</table>
			</div> --%>
			<table border="1">
				<!-- <caption>＊필수 입력 항목</caption> -->
				<colgroup>
					<col>
					<col>
					<col>
					<col>
					<col>
					<col>
				</colgroup>
					<tbody>
					<tr><!-- 아이디는 변경 불가능 -->
						<td style="background-color:#ddd;"><img src="${pageContext.request.contextPath}/images/id.png"></td>
						<td style="background-color:#ddd;" colspan="4">${user_id}</td>				
						<input type="hidden" name="user_id" value="${user_id}"/>
					</tr>
					<tr><!-- 비밀번호 변경 -->
						<td><img src="${pageContext.request.contextPath}/images/password.png"></td>
						<td colspan="4">
						<div class="image" >						
						<input type="password" name="user_pw" id="user_pw" value="" placeholder="비밀번호(8~16자의 대문자, 소문자, 숫자, 특수문자 모두 포함)" style="width: 493px; padding: 0;"/>
						<div class="text"><img src="${pageContext.request.contextPath}/images/x.png" id="pw_false" style="display: none"></div>				
						<div class="text"><img src="${pageContext.request.contextPath}/images/check.png"  id="pw_true" style="display: none;"></div>
						</td>
						</div>		
					</tr>
					<tr><!-- 비밀번호 확인 -->
						<td><img src="${pageContext.request.contextPath}/images/password_ck.png"></td>
						<td colspan="4">
						<div class="image" >						
						<input type="password" name="user_pw_check" id="user_pw_check" value="" placeholder="비밀번호 확인" style="width: 493px; padding: 0;"/>
						<div class="text"><img src="${pageContext.request.contextPath}/images/x.png" id="pw_check_false" style="display: none"></div>				
						<div class="text"><img src="${pageContext.request.contextPath}/images/check.png"  id="pw_check_true" style="display: none;"></div>
						</td>
						</div>
					</tr>
					<tr><!-- 이름 변경 불가능 -->
						<td style="background-color:#ddd;"><img src="${pageContext.request.contextPath}/images/name.png"></td>
						<td style="background-color:#ddd;" colspan="4">${user_name}</td>
						<input type="hidden" name="user_name" value="${user_name}"/>
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
				<input type="button" value="완료" class="button primary" style="background: #e55; width:35%;" onclick="formSubmit()"/>
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
	<script>
		/* function loadFile(input) {
			// 인풋 태그에 파일이 있는 경우
		    if(input.files && input.files[0]) {
	        // 이미지 파일인지 검사 (생략)
	        // FileReader 인스턴스 생성
	        const reader = new FileReader();
	        // 이미지가 로드가 된 경우
	        reader.onload = e => {
	            const previewImage = document.getElementById("profile");
	            previewImage.src = e.target.result;
	        }
	        // reader가 이미지 읽도록 하기
	        reader.readAsDataURL(input.files[0]);
		    }
		}
		
		// input file에 change 이벤트 부여
		const inputImage = document.getElementById("profile");
		inputImage.addEventListener("change", e => { readImage(e.target);})
		
		
		var frm = document.editForm; */
		/**
		 * 	회원가입
		 */

		/*
		 * 프론트 제작 시 HTML checked가 아닌 JS DOM checked를 사용했기 때문에
		 * checked 검사 및 변경은 JS DOM checked로 진행해야 한다.
		 * 
		 * HTML 요소 클릭 시 checked 속성이 따로 추가되지 않는 다면, prop()을 사용해야 하고
		 * HTML 요소 클릭 시 checked 속성이 추가 된다면, attr()를 사용한다.
		 * 
		 * attr()는 HTML 코드에만 적용
		 * prop()는 JS DOM객체에도 적용
		 * 
		 */


		/*$("#term").on("click", function(){
			if($(this).is(":checked")){
				//체크가 되어 있다면,
				$(".terms").prop("checked", true);
			}else{
				//체크되어 있지 않다면
				$(".terms").prop("checked", false);
			}
		})*/

		/*
		$.ajax({
			url:"",	//요청할 URL
			type:"",	//메소드 방식(get, post,..)
			data:"",	//전송할 데이터
			contentType:"",	//전송할 데이터의 타입
			dataType:"",	//전달받을 데이터의 타입
			success:function(){},	//성공 시 실행할 함수
			error:function(){}	//오류 시 실행할 함수
		});
		*/

		//url에 id를 전달한다.
		//컨트롤러로 간다.
		var contextPath = "${pageContext.request.contextPath}";
		var frm = document.editForm;
		var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		var regEmail =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		$("input[name='user_phonenum_check']").on("click", function(){
			$("input[name='user_phonenum_check']").removeAttr("readonly");
		})

		$("input[name='user_pw']").on("click", function(){
			$("input[name='user_id']").attr("readonly", true);
		})



		var check = false;

		function formSubmit(){
			
				if(!frm.user_name.value){
					alert("이름을 입력해주세요.");
					frm.user_name.focus();
					return false;
				}
				if(!frm.user_pw_check.value){
					alert("비밀번호 확인란을 확인해주세요.");
					frm.user_pw_check.focus();
					return false;
				}
				if(frm.user_pw.value != frm.user_pw_check.value){
					alert("비밀번호를 확인해주세요.");
					frm.user_pw.focus();
					return false;
				}
				
				if(!frm.user_email.value){
					alert("이메일을 입력해주세요.");
					frm.user_email.focus();
					return false;
				}else{
					if (!regEmail.test(frm.user_email.value)) {
					    alert('이메일을 확인해주세요.');
					    frm.user_email.focus();
					    return false;
					}
					
				}
				
				if(!frm.user_phonenum.value){
					alert("휴대폰 번호를 입력해주세요.");
					frm.user_phonenum.focus();
					return false;
				}
				
				if(!frm.user_phonenum_check.value){
					alert("인증번호를 입력해주세요.");
					frm.user_phonenum_check.focus();
					return false;
				}
				
				if(!frm.user_pw.value){
					alert("패스워드를 입력해주세요.");
					frm.user_pw.focus();
					return false;
				}else{
					//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
					var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
					var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
					
					if(!reg.test(frm.user_pw.value)){
						alert("비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.");
						frm.user_pw.focus();
						return false;
					}
					
					//같은 문자를 4번 이상 사용할 수 없다.
					if(/(\w)\1\1\1/.test(frm.user_pw.value)){
						alert("같은 문자를 4번 이상 사용하실 수 없습니다.");
						frm.user_pw.focus();
						return false;
					}
					
					//비밀번호 안에 아이디가 있을 때
					if(frm.user_pw.value.search(frm.user_id.value) != -1){
						alert("비밀번호에 아이디를 포함할 수 없습니다.");
						frm.user_pw.focus();
						return false;
					}

					//비밀번호에 한글이 있다.
					if(hangleCheck.test(frm.user_pw.value)){
						alert("비밀번호에 한글을 사용할 수 없습니다.");
						frm.user_pw.focus();
						return false;
					}
					
					//비밀번호에 공백을 포함할 수 없다.
					if(frm.user_pw.value.search(/\s/) != -1){
						alert("비밀번호에 공백 없이 입력해주세요.");
						frm.user_pw.focus();
						return false;
					}
				}
				
				
				 if(!regPhone.test(frm.user_phonenum.value)) {
			          alert('휴대폰 번호를 확인해주세요.');
			          frm.user_phonenum.focus();
			          return false;
			    }
			      
				if(!frm.user_phonenum_check.readOnly){
					alert("휴대폰 인증을 진행해주세요");
					return false;
				}
				frm.submit();
			
		};

		

		function checkPw(pw){
			check = false;
			if(pw == ""){
				$("#pw_true").css("display", "none");
				$("#pw_false").css("display", "none");
				return;
			};
			
			$.ajax({
				url:contextPath+"/user/UserCheckPwOk.us?user_pw=" + pw,
				type:"get",
				dataType:"json",
				success:function(result){
					console.log(result.status);
					if(result.status == "ok"){
						//DOM
						$("#pw_true").css("display", "block");
						$("#pw_false").css("display", "none");
					}else{
						//DOM
						$("#pw_false").css("display", "block");
						$("#pw_true").css("display", "none");
					}
					
				},
				error:function(){
					console.log("오류");
				}
			});
		};

		$("input[name='user_pw']").keyup(function(){
			//중복 검사
			checkPw($(this).val());
		});
		$("input[name='user_pw_check']").keyup(function(){
			//중복 검사
			checkPw1($(this).val());
		});

		function checkPw1(pw1){
			var user_pw = $("#user_pw").val();
			
			
			if(user_pw != pw1){
				$("#pw_check_true").css("display", "none");
				$("#pw_check_false").css("display", "block");
				
			}else{
				$("#pw_check_true").css("display", "block");
				$("#pw_check_false").css("display", "none");
			
			}
		}



		var smsCheck = false;

		function sendSMS(){
			var phoneNumber = $("#user_phonenum").val();
			
			if(phoneNumber == ""){
				alert("인증받을 휴대폰 번호를 작성해주세요!")
			}else{
				alert("인증번호 발송 완료!");
				$.ajax({
					url:contextPath + "/user/SendSMS.us?user_phonenum="+phoneNumber,
					type:"get",
					dataType:"text",
					success:
						function(result){
						$("#smsCheck").click(function(){
						if(result.status == $("#cert_num").val()){
							alert("인증 성공!");
							$("input[name='user_phonenum_check']").attr("readonly", true);
							smsCheck=true;
						}else{
							alert("인증 실패!\n인증번호가 올바르지 않습니다")
						}
					})},
					error:function(){
						console.log("오류");
					}
				});
			}
			
		}


		
	</script>
</body>
</html>