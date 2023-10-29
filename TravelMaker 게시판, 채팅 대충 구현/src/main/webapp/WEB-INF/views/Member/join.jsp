<%--
  Created by IntelliJ IDEA.
  User: minu
  Date: 10/25/23
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${cpath }/css/main_css/join.css" type="text/css">
    <title>Document</title>
</head>
<body>

<div class="main">
    <div><img src="tm400.png"></div>
    <h2>회원가입</h2>

    <form id="form" method="POST" enctype="multipart/form-data">
        <div class="join_items">
            <span>아이디</span>
            <div>
                <input class="join_input" type="text" name="TRAVELMAKER_MEMBER_USERID" placeholder=" 아이디를 입력해주세요."
                       autofocus required>
                <input id="idCheck" class="btn" type="button" value="확인">
            </div>
        </div>
        <div class="join_items">
            <span>비밀번호</span>
            <div class="join_item">
                <input id="userpw" class="unset" type="password" name="TRAVELMAKER_MEMBER_USERPW" placeholder=" 비밀번호를 입력해주세요." required>
            </div>
        </div>
        <div class="join_items">
            <span>이름</span>
            <div class="join_item">
                <input class="unset" type="text" name="TRAVELMAKER_MEMBER_USERNAME" placeholder=" 이름을 입력해주세요." required>
            </div>
        </div>
        <div class="join_items">
            <span>이메일</span>
            <div>
                <input class="join_input"  type="email" name="TRAVELMAKER_MEMBER_EMAIL" placeholder=" 이메일을 입력해주세요."  required>
                <input id="emailCheck" class="btn" type="button" value="확인">
            </div>
        </div>
        <div  id="certification" class="join_items" style="display: none;">
            <span>인증번호</span>
            <div>
                <input class="join_input"  type="text" name="certification" placeholder=" 인증번호를 입력해주세요."  required>
                <input id="certificationCheck" class="btn" type="button" value="확인">
            </div>
        </div>
        <div class="join_items">
            <span>전화번호</span>
            <div class="join_item">
                <input class="unset" type="text" name="TRAVELMAKER_MEMBER_PNUM" placeholder=" 전화번호를 숫자만 입력해주세요."
                       pattern="[0-9]{11}" title="11자리 숫자만 입력해 주세요." required>
            </div>
        </div>
        <div  class="join_items" style="display: flex;">
            <div>
                <span>성별</span>
                <div>
                    <select class="gender_left" form="form" name="TRAVELMAKER_MEMBER_GENDER">
                        <option value="남성">남성</option>
                        <option value="여성">여성</option>
                    </select>
                </div>
            </div>
            <div>
                <span>생년월일</span>
                <div class="birth_right">
                    <input type="text" name="TRAVELMAKER_MEMBER_BIRTH" placeholder=" 8자리 숫자만 입력해주세요."
                           pattern="[0-9]{8}" title="8자리 숫자만 입력해주세요." required>
                </div>
            </div>
        </div>
        <div class="join_items">
            <span>닉네임</span>
            <div>
                <input class="join_input" type="text" name="TRAVELMAKER_MEMBER_USERNICKNAME" placeholder=" 닉네임을 입력해주세요." required>
                <input id="nickCheck" class="btn" type="button" value="확인">
            </div>
        </div>
        <div class="join_items">
            <span>프로필사진</span>
            <div>
                <input id="upload_name" class="join_input" value="" placeholder=" 첨부파일">
                <input id="input_file" type="file" name="TRAVELMAKER_MEMBER_REALPROFILEIMG" accept="image/*">
                <label class="file_label" for="input_file">첨부</label>
            </div>
        </div>
        <div>
            <input id="join_membership" type="submit" value="회원가입">
        </div>
    </form>
</div>

<script>
    const emailCheck = document.getElementById('emailCheck')
    const certification = document.getElementById('certification')
    const inputFile = document.getElementById("input_file");
    const uploadName = document.getElementById("upload_name");

    emailCheck.addEventListener('click', function() {
        certification.style = 'display: block;'
    })
    // emailCheck.addEventListener('click', function() {
    //     alert("인증번호가 발송되었습니다")
    // })
    inputFile.addEventListener("change", function() {
        const fileName = inputFile.value;
        uploadName.value = fileName;
    })


</script>

</body>
</html>