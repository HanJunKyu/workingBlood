/**
 * 
 */

var frm = document.findForm;
var check = false;
var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;

$("input[name='user_email_check']").on("click", function(){
	$("input[name='user_email_check']").removeAttr("readonly");
})


function formSubmit(){
	var email = $("#user_email").val();
		if(!frm.user_name.value){
			alert("이름을 입력해주세요");
			frm.user_name.focus();
			return false;
		}
		
		if(!frm.user_email.value){
			alert("이메일을 입력해주세요.");
			frm.user_email.focus();
			return false;
		}else{
			if (!regEmail.test(email)) {
			    alert('이메일을 확인해주세요.');
			    frm.user_email.focus();
			    return false;
			}
			
		}
		
		if(!frm.user_email_check.value){
			alert("인증번호를 입력해주세요.");
			frm.user_email_check.focus();
			return false;
		}
		if(!frm.user_email_check.readOnly){
			alert("이메일 인증을 진행해주세요");
			return false;
		}
		
		frm.submit();
	
};

var smsCheck = false;

function sendSMS(){
	var email = $("#user_email").val();
	if(email == ""){
		alert("인증받을 이메일 주소를 작성해주세요!");
	}else{
		alert("인증번호 발송 완료!");
		$.ajax({
			url:contextPath + "/user/SendSMS.us?user_email="+email,
			type:"get",
			dataType:"text",
			success:
				function(result){
				$("#smsCheck").click(function(){
					
				if($.trim(result) == $("#user_email_check").val()){
					alert("인증 성공!")
					$("input[name='user_email_check']").attr("readonly", true);
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
/*function sendSMS(){
	var email = $("#user_email").val();
	if(email == ""){
		alert("인증받을 이메일 주소를 작성해주세요!");
	}else{
		alert("인증번호 발송 완료!");
		$.ajax({
			url:contextPath + "/user/SendEmail.us?user_email="+email,
			type:"get",
			dataType:"text",
			success:
				function(result){
				$("#smsCheck").click(function(){
					
					if($.trim(result) == $("#user_email_check").val()){
						alert("인증 성공!")
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
	
}*/