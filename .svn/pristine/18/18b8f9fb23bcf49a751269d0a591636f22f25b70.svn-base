/**
 * 
 */
var frm = document.findForm;
var check = false;
var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;


$("input[name='user_phonenum_check']").on("click", function(){
	$("input[name='user_phonenum_check']").removeAttr("readonly");
})

function formSubmit(){
	var phoneNumber = $("#user_phonenum").val();
	
		if(!frm.user_id.value){
			alert("아이디를 입력해주세요");
			frm.user_id.focus();
			return false;
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
		if(regPhone.test(phoneNumber) === false) {
	          alert('휴대전화번호를 확인해주세요.');
	          frm.user_phonenum.focus();
	          return false;
	    }
	      
		if(!frm.user_phonenum_check.readOnly){
			alert("휴대폰 인증을 진행해주세요");
			return false;
		}
		frm.submit();
	
};

var smsCheck = false;

function sendSMS(){
	var phoneNumber = $("#user_phonenum").val();
	
	if(phoneNumber == ""){
		alert("인증받을 휴대폰 번호를 작성해주세요!")
	}else if(!regPhone.test(phoneNumber)){
		alert('휴대전화번호를 확인해주세요.');
	}else{
		alert("인증번호 발송 완료!");
		$.ajax({
			url:contextPath + "/user/SendSMS.us?user_phonenum="+phoneNumber,
			type:"get",
			dataType:"text",
			success:
				function(result){
				$("#smsCheck").click(function(){
				if($.trim(result) == $("#user_phonenum_check").val()){
					alert("인증 성공!")
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
};