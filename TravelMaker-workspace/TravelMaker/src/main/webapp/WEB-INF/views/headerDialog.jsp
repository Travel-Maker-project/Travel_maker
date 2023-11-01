<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<dialog id="model">
        <div class="model">
            <img src="${cpath}/img/tm400.png" id="mark">
            <form id="login" method="POST" >
                <div>
                    <img class="idIcon" src="${cpath}/img/id.png">
                    <input type="text" name="travelMaker_Member_UserId" placeholder="아이디" autofocus required autocomplete="off">
                </div>
                <div>
                    <img class="pwIcon" src="${cpath}/img/pw.png">
                    <input type="password" name="travelMaker_Member_UserPw" placeholder="비밀번호" required>
                </div>
                <input class="loginBtn" type="submit" value="로그인">
            </form>
            <div id="member">
                <a>회원찾기</a>
                <span>|</span>
                <!-- 수정 -->
                <button id="login_join_btn">회원가입</button>
                <!-- 수정 -->
            </div>

            <div id="kakao">
            <a class="KaKaoLoginBtn" href="https://kauth.kakao.com/oauth/authorize?client_id=9810e4d47aa744b120cb9d4c343b295f&redirect_uri=http://localhost:8080/www/Member/KaKaoLogin&response_type=code">
            <img src="${cpath}/img/kakao_login_medium_wide.png">
            </a>
            </div>
            <div id="naver"><img src="https://vendor-cdn.imweb.me/images/naver_login2x.png">네이버 로그인</div>
            <div id="google"><img src="https://vendor-cdn.imweb.me/images/google_icon.png">Google 로그인</div>

            <form method="dialog">
                <!-- 수정 -->
                <button class="closeLoginBtn login_CloseBtn">나가기</button>
                <!-- 수정 -->
            </form>
        </div>
    </dialog>
    <!-- 수정 -->
    <dialog id="login_join_modal">
        <div class="flex_center">
            <img src="${cpath}/img/tm400.png" id="mark">
            <div id="API_login_btn_box">
                <button class="API_login_btn KaKaoJoinBtn" style="background: url(${cpath}/img/kakaoIcon.png); background-size: cover;"></button>
                <button class="API_login_btn NaverJoinBtn" style="background: url(${cpath}/img/naverIcon.png); background-size: cover;"></button>
                <button class="API_login_btn GoogleJoinBtn" style="background: url(${cpath}/img/googleIcon.png); background-size: cover;"></button>
            </div>
            <button class="header-joinBtn" style="margin-top: 10px;">일반가입</button>
            <form method="dialog">
                <button class="closeJoinBtn login_CloseBtn" style="margin-top: 50px;">나가기</button>
            </form>
        </div>
    </dialog>
    </div>
    <dialog id="my_coupon">
        <div class="flex_center">
            <div class="mylocker_top">
                <img src="${cpath}/img/tm330.png">
                <div>
                    <h1>쿠폰함</h1>
                </div>
            </div>
            <!-- c:forEach -->
            <div class="my_coupon_img_box">
                <div class="my_coupon_name">
                    쿠폰이름
                    <!-- ${coupon_name} -->
                </div>
                <img class="my_coupon_img" src="${cpath}/img/coupon.jpg">
              
            </div>
            <!-- c:forEach -->
            <!-- c:forEach -->
            <div class="my_coupon_img_box">
                <div class="my_coupon_name">
                    쿠폰 이름
                    <!-- ${coupon_name} -->
                </div>
                <img class="my_coupon_img" src="${cpath}/img/coupon.jpg">
             
            </div>
            <!-- c:forEach -->
            <form method="dialog">
                <button class="my_coupon_close_btn">나가기</button>
            </form>
    </div>
    </dialog>
    <dialog id="my_favorite">
        <div class="flex_center">
            <div class="mylocker_top">
                <img src="${cpath}/img/tm330.png">
                <div>
                    <h1>찜숙소</h1>
                </div>
            </div>
            <!-- c:forEach -->
            <div class="my_favorite_item_box">
            </div>
            <!-- c:forEach -->
            <form method="dialog">
                <button class="my_coupon_close_btn">나가기</button>
            </form>
        </div>
    </dialog>
    <dialog id="my_reserved">
        <div class="flex_center">
            <div class="mylocker_top">
                <img src="${cpath}/img/tm330.png">
                <div>
                    <h1>예약내역</h1>
                </div>
            </div>
            <!-- c:forEach -->
            <div class="my_reserved_item_box">
                <div class="my_reserved_item_top">
                    <img class="my_reserved_item_img" src="${cpath}/img/lodge.jfif">
                    <div>
                        <p class="my_reserved_item_lodge_name">숙소이름</p>
                        <!-- ${lodge_detail_name} -->
                        <span class="my_reserved_item_room_name">방이름</span>
                        <!-- ${lodge_room_type_name} -->
                    </div>
                </div>
                <div class="my_reserved_item_mid">
                    <div class="my_reserved_item_chek">
                        <div class="my_reserved_item_inout">
                            <span class="my_reserved_item_room_name">체크인</span>
                            <p class="reserved_lodge_cuurent_state_date">2023-10-28</p>
                            <!-- ${reserved_lodge_cuurent_state_date} -->
                        </div>
                        <div class="my_reserved_item_inout">
                            <span class="my_reserved_item_room_name">체크아웃</span>
                            <p class="reserved_lodge_cuurent_end_date">2023-10-29</p>
                            <!-- ${reserved_lodge_cuurent_end_date} -->
                        </div>
                    </div>
                </div>
                <div class="my_reserved_item_bottom">
                        <button class="my_reserved_cancel_btn">예약 취소</button>
                        <div class="my_reserved_unCancel_btn">예약 취소</div>
                        <button class="my_reserved_review_btn">리뷰 쓰기</button>
                        <div class="my_reserved_unReview_btn">리뷰 쓰기</div>
                </div>
            </div>
            <!-- c:forEach -->
            <form method="dialog">
                <button class="my_coupon_close_btn">나가기</button>
            </form>
        </div>
    </dialog>