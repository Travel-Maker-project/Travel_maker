<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${cpath }/css/main_css/recommend_travel.css" type="text/css">


<div>
      <div class="top">
          <div class="kind_wrap2">
              <div class="kind_slider2">
                  <ul class = "slider2">
                      <li class="li_slider2">
                          <div class="TextBox">textBox1</div>
                      </li>
                      <li class="li_slider2">
                          <div class="TextBox">textBox2</div>
                      </li>
                      <li class="li_slider2">
                          <div class="TextBox">textBox3</div>
                      </li>
                      <li class="li_slider2">
                          <div class="TextBox">textBox4</div>
                      </li>
                      <li class="li_slider2">
                          <div class="TextBox">textBox5</div>
                      </li>
                  </ul>    
              </div>
              
          </div>
          <div class="kind_wrap">
              <div class="kind_slider">
                <ul class="slider flex" style="margin: 0; padding: 0;">
                  <li class="li_slider">
                      <img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=97352946-9e39-4e52-8b2c-bc311711ac4f&mode=raw">
                  </li>
                  <li class="li_slider">
                      <img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=727cae9b-49d2-4d36-a5ec-a5c5d8bd73c1&mode=raw">
                  </li>
                  <li class="li_slider">
                      <img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=e19def1f-c59d-4f36-b829-ae5d12f0cce7&mode=raw">
                  </li>
                  <li class="li_slider">
                      <img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=c0fee2b1-45ae-4d7e-ae78-4564bbe523dc&mode=raw">
                  </li>
                  <li class="li_slider">
                      <img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=828ed0e2-bbee-403b-97e6-13b13c02b1ed&mode=raw">
                  </li>
                </ul>
              </div>
              <div class="arrow" style="border: 1px solid blue;">
                  <a class="prev">이전</a>
                  <a class="next">다음</a>
              </div>
          </div>
      </div>
  </div>
    <div class="bottom frame">
        <div class="bottom_logo flex">
            <h2>Travel 콕콕</h2>
            <h2>|</h2>
            <p>여행 드가자</p>
        </div>
        <div class="bottom_main">
            <div class="bottom_bar">
                <p>추천 드가자</p>
            </div>
            <p>당신이 마음에 쏙 들만한 여행지를 추천 드릴게요</p>
            <div class="bottom_area">
                <ul class="flex">
                	<li><a href="${cpath }/ajax/location" class="btn" value="전국">전국</a></li>
					<li><a href="${cpath }/ajax/location" class="btn" value="서울">서울</a></li>
					<li><a href="${cpath }/ajax/location" class="btn" value="인천">인천</a></li>
					<li><a href="${cpath }/ajax/location" class="btn" value="경기">경기</a></li>
					<li><a href="${cpath }/ajax/location" class="btn" value="강원">강원</a></li>
					<li><a href="${cpath }/ajax/location" class="btn" value="전북">전북</a></li>
					<li><a href="${cpath }/ajax/location" class="btn" value="전남">전남</a></li>
					<li><a href="${cpath }/ajax/location" class="btn" value="경남">경남</a></li>
					<li><a href="${cpath }/ajax/location" class="btn" value="경북">경북</a></li>
				</ul>	
            </div>
            <div class="bottom_img">
                <div class="bottom_nav">
					
                </div>
            </div>
        </div>
    </div>
    <!-- JavaScript 스크립트 시작 -->
<script>
    

	window.onload = function() {
	    const kindWrap = document.querySelector('.kind_wrap');
	    const slider = kindWrap.querySelector('.slider');
	    const slideLis = slider.querySelectorAll('.li_slider');
	    const moveButton = kindWrap.querySelector('.arrow');
	
	    // 슬라이더의 첫 번째와 마지막 이미지를 복제하여 무한 루프를 위해 준비합니다.
	    const clone1 = slideLis[0].cloneNode(true);
	    const cloneLast = slideLis[slideLis.length - 1].cloneNode(true);
	    slider.insertBefore(cloneLast, slideLis[0]);
	    slider.appendChild(clone1);
	
	    // 슬라이더와 이미지 이동에 필요한 초기 설정을 합니다.
	    let currentIdx = 0; // 현재 슬라이드 인덱스
	    let translate = 0; // 현재 슬라이더의 위치
	    const speedTime = 500; // 슬라이드 이동 속도 (밀리초)
	
	    // 슬라이더의 CSS 스타일을 설정합니다.
	    const sliderCloneLis = slider.querySelectorAll('li');
	    const liWidth = slideLis[0].clientWidth;
	    const sliderWidth = liWidth * sliderCloneLis.length;
	    slider.style.width = sliderWidth + 'px'; // 수정된 부분
	    currentIdx = 1; // 시작 시 첫 번째 슬라이드로 이동
	    translate = -liWidth;
	    slider.style.transform = 'translateX(' + translate + 'px)'; // 수정된 부분
	
	    const kindWrap2 = document.querySelector('.kind_wrap2');
	    const slider2 = kindWrap2.querySelector('.slider2');
	    const slideLis2 = slider2.querySelectorAll('.li_slider2');
	    const moveButton2 = kindWrap2.querySelector('.arrow2');
	
	    // 슬라이더2의 첫 번째와 마지막 이미지를 복제하여 무한 루프를 위해 준비합니다.
	    const clone2 = slideLis2[0].cloneNode(true);
	    const cloneLast2 = slideLis2[slideLis2.length - 1].cloneNode(true);
	    slider2.insertBefore(cloneLast2, slideLis2[0]);
	    slider2.appendChild(clone2);
	
	    let currentIdx2 = 0; // 현재 슬라이드 인덱스
	    let translate2 = 0; // 현재 슬라이더의 위치
	    const speedTime2 = 500; // 슬라이드 이동 속도 (밀리초)
	
	    // 슬라이더2의 CSS 스타일을 설정합니다.
	    const sliderCloneLis2 = slider2.querySelectorAll('li');
	    const liWidth2 = slideLis2[0].clientWidth;
	    const sliderWidth2 = liWidth2 * sliderCloneLis2.length;
	    slider2.style.width = sliderWidth2 + 'px'; // 수정된 부분
	    currentIdx2 = 1; // 시작 시 첫 번째 슬라이드로 이동
	    translate2 = -liWidth2;
	    slider2.style.transform = 'translateX(' + translate2 + 'px)'; // 수정된 부분
	
	    const top = document.querySelector('.top')
	    const topColorArray = ['red', 'blue', 'white', 'yellow']
	    let topColorIdx = 0;
	
	    // 이전 및 다음 버튼에 클릭 리스너를 추가합니다.
	    moveButton.addEventListener('click', moveSlide);
	
	    // 슬라이더를 이동시키는 함수
	    function move(D) {
	        currentIdx += (-1 * D); // 다음 슬라이드로 이동 또는 이전 슬라이드로 이동
	        translate += liWidth * D; // 슬라이더를 이동할 거리 계산
	        slider.style.transform = 'translateX(' + translate + 'px)'; // 수정된 부분
	        slider.style.transition = 'all ' + speedTime + 'ms ease'; // 수정된 부분
	
	        top.style.backgroundColor = topColorArray[(++topColorIdx / 2) % 4]
	    }
	
	    function move2(D) {
	        currentIdx2 += (-1 * D); // 다음 슬라이드로 이동 또는 이전 슬라이드로 이동
	        translate2 += liWidth2 * D; // 슬라이더를 이동할 거리 계산
	        slider2.style.transform = 'translateX(' + translate2 + 'px)'; // 수정된 부분
	        slider2.style.transition = 'all ' + speedTime2 + 'ms ease'; // 수정된 부분
	    }
       

        // 이전 또는 다음 버튼을 클릭할 때 호출되는 함수
        function moveSlide(event) {
            event.preventDefault();
            if (event.target.className == 'next') {
                // "다음" 버튼을 클릭한 경우
                move(-1);
                if (currentIdx == sliderCloneLis.length - 1) {
                    setTimeout(() => {
                        // 끝까지 도달하면 순환하기 위해 슬라이더 위치를 조정합니다.
                        slider.style.transition = 'none';
                        currentIdx = 1;
                        translate = -liWidth;
                        slider.style.transform = 'translateX(' + translate + 'px)';
                    }, speedTime);

                
                }
                
            } else {
                // "이전" 버튼을 클릭한 경우
                move(1);
                if (currentIdx == 0) {
                    // 처음까지 도달하면 순환하기 위해 슬라이더 위치를 조정합니다.
                    setTimeout(() => {
                        slider.style.transition = 'none';
                        currentIdx = sliderCloneLis.length - 2;
                        translate = -(liWidth * currentIdx);
                        slider.style.transform = 'translateX(' + translate + 'px)';
                    }, speedTime);
                    
                }
               
            }

            if (event.target.className == 'next') {
                // "다음" 버튼을 클릭한 경우
                move2(-1);
                if (currentIdx2 == sliderCloneLis2.length - 1) {
                    setTimeout(() => {
                        // 끝까지 도달하면 순환하기 위해 슬라이더 위치를 조정합니다.
                        slider2.style.transition = 'none';
                        currentIdx2 = 1;
                        translate2 = -liWidth2;
                        slider2.style.transform = 'translateX(' + translate + 'px)';
                    }, speedTime2);
                }
            } else {
                // "이전" 버튼을 클릭한 경우
                move2(1);
                
                if (currentIdx2 == 0) {
                    // 처음까지 도달하면 순환하기 위해 슬라이더 위치를 조정합니다.
                    setTimeout(() => {
                        slider2.style.transition = 'none';
                        currentIdx2 = sliderCloneLis2.length -2;
                        translate2 = -(liWidth2 * currentIdx2);
                        slider2.style.transform = 'translateX(' + translate + 'px)';
                    }, speedTime2);
                }
            }


        }
    }

       

    function move2(D) {
        
    }

    // 이전 또는 다음 버튼을 클릭할 때 호출되는 함수
    function moveSlide2(event) {
        event.preventDefault();
       
    }

	const btns = document.querySelectorAll('.btn');
	const bottom_nav = document.querySelector('.bottom_nav')
	
	
	
	
	const Handler = function(event) {
		event.preventDefault(); 
		
		bottom_nav.innerHTML = ``
		
		const liElement = event.target.parentElement;
		const value = liElement.querySelector('a').getAttribute('value');
		console.log(value);
		
		const link = event.target.getAttribute('href');
		const recommend = fetch(link + '?value=' + value)
			.then(resp => resp.json())
			.then(data => {
				data.forEach(e => {
					const img = new Image();
					const div = document.createElement('div')
					const p = document.createElement('p')
					img.src = e.recommend_travel_img
					p.innerText = e.recommend_travel_title
					div.appendChild(img)
					div.appendChild(p)
					bottom_nav.appendChild(div)
					
				})
			});
		
	};
	
	btns.forEach(btn => {
		btn.addEventListener('click', Handler);
	});
</script>

</body>
</html>