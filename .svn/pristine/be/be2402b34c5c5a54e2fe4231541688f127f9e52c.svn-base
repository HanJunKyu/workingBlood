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

var frm = document.joinForm;
var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
var regEmail =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

$("input[name='user_phonenum_check']").on("click", function(){
	$("input[name='user_phonenum_check']").removeAttr("readonly");
})

$("input[name='user_id']").on("click", function(){
	$("input[name='user_id']").removeAttr("readonly");
})

$("input[name='user_pw']").on("click", function(){
	$("input[name='user_id']").attr("readonly", true);
})



var check = false;

function formSubmit(){
	
		if(!frm.user_id.value){
			alert("아이디를 입력해주세요");
			frm.user_id.focus();
			return false;
		}
		
		if(frm.user_id.value.length < 5 || frm.user_id.value.length > 16){
			alert("아이디는 5자 이상, 16자 이하로 입력해주세요.");
			frm.user_id.focus();
			return false;
		}
		
		if(!frm.user_name.value){
			alert("이름을 입력해주세요.");
			frm.user_name.focus();
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
		
		if(!frm.user_id.readOnly){
			alert("아이디 중복 검사를 진행해주세요");
			return false;
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

function checkId(id){
	check = false;
	console.log(id);
	if(id == ""){
		$("#id_check_true").css("display", "none");
		$("#id_check_false").css("display", "none");
		return;
	}
	
	$.ajax({
		url:contextPath+"/user/UserCheckIdOk.us?user_id=" + id,
		type:"get",
		dataType:"json",
		success:function(result){
			if(result.status == "ok"){
				//DOM
				$("#id_check_true").css("display", "none");
				$("#id_check_false").css("display", "block");
				check = true;
			}else{
				//DOM
				$("#id_check_false").css("display", "none");
				$("#id_check_true").css("display", "block");
			}
		},
		error:function(){
			console.log("오류");
		}
	});
};


$("input[name='user_id']").keyup(function(){
	//중복 검사
	checkId($(this).val());
});


function checkPw(pw){
	check = false;
	if(pw == ""){
		$("#pw_check_true").css("display", "none");
		$("#pw_check_false").css("display", "none");
		return;
	};
	
	$.ajax({
		url:contextPath+"/user/UserCheckPwOk.us?user_pw=" + pw,
		type:"get",
		dataType:"json",
		success:function(result){
			if(result.status == "ok"){
				//DOM
				$("#pw_check_true").css("display", "none");
				$("#pw_check_false").css("display", "block");
				check = true;
			}else{
				//DOM
				$("#pw_check_false").css("display", "none");
				$("#pw_check_true").css("display", "block");
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







