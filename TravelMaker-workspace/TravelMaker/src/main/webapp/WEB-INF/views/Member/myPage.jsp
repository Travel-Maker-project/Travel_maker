<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="cpath" value="${pageContext.request.contextPath }" />
    <%@ include file="../allUsedHeader.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${cpath }/css/main_css/myPage.css" type="text/css">
</head>
<c:if test="${user==null}">
	<c:redirect url="/" />
</c:if>
<body>
 <div id="mypage" class="flex_center">
        <div class="profile flex_center">
            <div class="profile_top">
                <img src="${cpath}/img/tm330.png">
                <div>
                    <h1>마이 페이지</h1>
                </div>
            </div>
            <div class="profile_main">
                <div id="profile_img" class="flex_center" style="background-image: url(${cpath}/img/dtProfile.jfif);">
                    <!-- url(${TRAVELMAKER_MEMBER_ENCODINGPROFILEIMG}) -->
                    <button id="profile_modify_btn">
                        <img src="${cpath}/img/modify.png">
                    </button>
                </div>
                <div class="flex_center">
                    <h2>${user.travelMaker_Member_UserNickName}</h2>
                </div>
            </div>
        </div>
        <div class="info flex_center">
            <div class="info_top">
                <h2>프로필</h2>
            </div>
            <div class="info_item flex_center">
                <div class="border_bottom">
                    <img src="${cpath}/img/name.png">
                    <span>${user.travelMaker_Member_UserName}</span>
                </div>
            </div>
            <div class="info_item flex_center">
                <div class="border_bottom">
                    <img src="${cpath}/img/pun.png">
                    <span>${user.travelMaker_Member_Pnum}</span>
                </div>
            </div>
            <div class="info_item flex_center">
                <div>
                    <img src="${cpath}/img/mail.png">
                    <span>${user.travelMaker_Member_Email}</span>
                </div>
            </div>
        </div>
        <button id="membership_quit">회원 탈퇴 ></button>
    </div>
    <dialog id="membership_quit_check">
        <div class="flex_center">
            <div class="profile_top">
                <img src="${cpath}/img/tm330.png">
                <div style="margin-bottom: 50px;">
                    <h1>회원탈퇴</h1>
                </div>
            </div>
            <form method="get">
                <div class="join_items">
                    <span>비밀번호 확인</span>
                    <div class="join_item">
                        <input id="membership_quit_userpw_check" class="unset" type="password" name="TRAVELMAKER_MEMBER_USERPW" placeholder="현재 비밀번호를 입력해주세요." 
                        autocomplete="off" required>
                    </div>
                    <input id="membership_quit_userpw_none" type="password" value=${user.travelMaker_Member_UserPw} style="display: none;">
                    <!-- value=${travelMaker_Member_UserPw} -->
                </div>
                <input id="membership_quit_complete" type="submit" value="확인">
            </form>
        </div>
        <form method="dialog">
            <button id="membership_quit_close">취소</button>
        </form>
    </dialog>
    <dialog id="profile_modify_check">
        <div class="flex_center">
            <div class="profile_top">
                <img src="${cpath}/img/tm330.png">
                <div style="margin-bottom: 50px;">
                    <h1>회원정보 수정</h1>
                </div>
            </div>
            <div class="join_items">
                <span>비밀번호 확인</span>
                <div class="join_item">
                    <input id="userpw_check" class="unset" type="password" name="TRAVELMAKER_MEMBER_USERPW" placeholder="현재 비밀번호를 입력해주세요." 
                    autocomplete="off" required>
                </div>
                <input id="userpw_none" type="password" value="1234" style="display: none;">
                <!-- value=${TRAVELMAKER_MEMBER_USERPW} -->
            </div>
        </div>
        <button id="profile_modify_check_btn">확인</button>
        <form method="dialog">
            <button id="profile_modify_close">취소</button>
        </form>
    </dialog>
    <dialog id="profile_modify">
        <form method="post" class="flex_center" autocomplete="off">
            <div class="profile_top">
                <img src="${cpath}/img/tm330.png">
                <div>
                    <h1>회원정보 수정</h1>
                </div>
            </div>
            <div class="flex_center">
        		<img id="profile_img_modify" src="${cpath}/img/dtProfile.jfif">       
            </div>
            <div class="join_items">
                <span>닉네임</span>
                <div>
                    <input class="join_input" type="text" name="TRAVELMAKER_MEMBER_USERNICKNAME" value="닉네임" required>
                    <!-- value=${TRAVELMAKER_MEMBER_USERNICKNAME} -->
                    <input id="nickCheck" class="btn" type="button" value="확인">
                </div>
            </div>
            <div class="join_items">
                <span>비밀번호</span>
                <div class="join_item">
                    <input id="userpw" class="unset" type="password" name="TRAVELMAKER_MEMBER_USERPW" placeholder="변경할 비밀번호를 입력해주세요.">
                </div>
            </div>
            <div class="join_items">
                <span>전화번호</span>
                <div class="join_item">
                    <input class="unset" type="text" name="TRAVELMAKER_MEMBER_PNUM" value="01012345678"
                    pattern="[0-9]{11}" title="11자리 숫자만 입력해 주세요." required>
                    <!-- value=${TRAVELMAKER_MEMBER_PNUM} -->
                </div>
            </div>
            <div class="join_items">
                <span>프로필사진</span>
                <div>
                    <input id="upload_name" class="join_input" value="" placeholder="변경할 프로필사진 첨부">
                    <input id="input_file" type="file" name="TRAVELMAKER_MEMBER_REALPROFILEIMG" accept="image/*">
                    <label class="file_label" for="input_file">첨부</label>
                </div>
            </div>
            <input id="profile_modify_complete" type="submit" value="확인">
        </form>
        <form method="dialog">
            <button id="profile_modify_close">취소</button>
        </form>
    </dialog>

    <script>
        const profileBodifyBtn = document.getElementById("profile_modify_btn")
        const profileModify = document.getElementById("profile_modify")
        const profileModifyCheck = document.getElementById("profile_modify_check")
        const profileModifyCheckBtn = document.getElementById("profile_modify_check_btn")
        const userpwCheck = document.getElementById("userpw_check")
        const userpwNone = document.getElementById("userpw_none")
        const inputFile = document.getElementById("input_file")
        const uploadName = document.getElementById("upload_name")
        const profileImg = document.getElementById("profile_img")
        const myPage_ProfileImg = document.querySelector("myPage_ProfileImg")
        const membershipQuit = document.getElementById("membership_quit")
        const membershipQuitCheck = document.getElementById("membership_quit_check")
        const membershipQuitUserpwCheck = document.getElementById("membership_quit_userpw_check")
        const membershipQuitUserpwNone = document.getElementById("membership_quit_userpw_none")
        const membershipQuitComplete = document.getElementById("membership_quit_complete")


        membershipQuit.addEventListener("click", () => {
            membershipQuitCheck.showModal()
        })
        profileBodifyBtn.addEventListener("click", () => {
            profileModifyCheck.showModal()
        })
        profileModifyCheckBtn.addEventListener("click", () => {
        	
        	
            if(userpwCheck.value == userpwNone.value) {
                profileModify.showModal()
            }
            else {
                alert("비밀번호가 틀렸습니다.")
            }
        })
      
        inputFile.addEventListener("change", function() {
            const fileName = inputFile.value;
            console.log('fileName : ', fileName)
            uploadName.value = fileName;
        })
        function changeHandler(event) {
            const profileImgModify = document.getElementById('profile_img_modify')
            if(event.target.files && event.target.files[0]) {
                const reader = new FileReader()
                reader.onload = (e) => {

                	profileImgModify.src= e.target.result;
                }
                reader.readAsDataURL(event.target.files[0])
            }
            else {
                preview.style.backgroundImage = ''
            }
        }
        inputFile.addEventListener('change', changeHandler)
        
        
        const checkbtn = document.getElementById('membership_quit_complete')
        const inputpw = document.getElementById('membership_quit_userpw_check') // membership_quit_userpw_check
       
        
        const url = '${cpath}/ajax/myPage/secession';
        
        
        
        const handler = async function(event) {
        	event.preventDefault();
            const value = inputpw.value; 
            

            if (value === '') {
                alert('비밀번호를 입력해주세요.');
            } 
            else {
              		await fetch(url, {
                    method: 'POST',
                    body: JSON.stringify({ userpw: value }), 
                    headers: {
                        'Content-Type': 'application/json'
                    }
                })
                .then(resp => {
                   return resp.json();
                })
                .then(data => {
                   alert(data.result);
                   location.href='${cpath}'
                })
            };
        }

        checkbtn.addEventListener('click', handler);
        
        
        
    </script>
</body>
</html>