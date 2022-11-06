/**
 * 
 */
var frm = document.findForm;
var check = false;

function formSubmit(){
	
		if(!frm.user_id.value){
			alert("아이디를 입력해주세요");
			frm.user_id.focus();
			return false;
		}
		
		if(!frm.user_email.value){
			alert("이메일을 입력해주세요.");
			frm.user_email.focus();
			return false;
		}
		
		if(!frm.user_email_check.value){
			alert("인증번호를 입력해주세요.");
			frm.user_email_check.focus();
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