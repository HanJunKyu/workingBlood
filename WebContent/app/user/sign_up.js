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

var check = false;

function join(){
	var form = document.signUpForm;
	
	if($("#demo-copy").is(":checked")){
			//체크가 되어 있다면,
			check= true;
		}else{
			//체크되어 있지 않다면
			alert('이용약관 동의가 필요합니다.');
			return;
		}
	if(check){
		form.submit();
	}
}