<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member information modify page</title>
</head>
<body>
<jsp:include page="../header.jsp"/>

<h3>회원정보 수정</h3>


<form id = "informationModifyForm" name = "infomationModifyForm"
	action = "${conPath}/join/update" method = "post">
	
	<br><br><br><br>
	아이디<input type = "text" name = "curId" readonly = "" value = "${loginMember.login_id}">
	<br><br><br><br>
	이름<input type = "text" name = "curName" readonly = "" value = "${loginMember.name}">
	
	
	<br><br><br><br>
	<input type = "password" name = "newPw" class = "newPw" id="reg_mb_password" placeholder = "새 비번">
	<input type = "password" name = "newPw2" class = "newPw2" id="reg_mb_password_re" placeholder = "새 비번 확인">
	<span id="password_error" style="color: red; display: none;">비밀번호가 일치하지 않습니다.</span>
	<br><br><br><br>
	<input type = "text" name = "newPostCode" id = "sample4_postcode" placeholder = "새 우편번호" readonly = "">
	<button type = "button" class = "btn_postcode" onclick = "sample4_execDaumPostcode()">
	우편번호 찾기</button>
	<br><br><br><br>
	<input type = "text" name = "newAddr" placeholder = "새 주소">
	<input type = "text" name = "newAddrDetail" placeholder = "새 주소2">
	<br><br><br><br>
	<input type = "text" name = "newEmail" placeholder = "이메일 주소">
	<br><br><br><br>
	<input type = "text" name = "newPhone" placeholder = "새 폰번호">
	<input type = "text" name = "newNote" placeholder = "새 특이사항">
	
	<button type = "submit" onclick = "return validatePassword()">수정</button>
	
</form>




<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<script>
function validatePassword() {
    var password = document.getElementById("reg_mb_password").value;
    var confirmPassword = document.getElementById("reg_mb_password_re").value;
    var errorMsg = document.getElementById("password_error");

    if (password !== confirmPassword) {
        errorMsg.style.display = "block";
        return false; // 제출을 막음
    } else {
        errorMsg.style.display = "none";
        return true; // 제출 허용
    }
}
</script>

<jsp:include page="../footer.jsp"/>
</body>
</html>