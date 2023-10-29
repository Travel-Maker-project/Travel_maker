<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <link rel="stylesheet" href="${cpath }/css/main_css/lodge.css" type="text/css">
  <script type="text/javascript" src="${cpath }/js/lodge.js"></script>
<body>
	<header>
		<div class="Lodge-header-left-LogoImg"></div>
		<div class="Lodge-header-right-user">
			<a href="" class="login"><span class="profileImg">이미지</span>유저네임</a>
			<a href="" class="join">마이페이지</a> <a href="" class="myInfo">회원가입</a>
			<!-- 로그인 하면 보관함으로-->
			<a href="" class="locker">보관함</a>
		</div>
	</header>
	<!--헤더 (로그인,회원가입,마이페이지)-->

	<aside class="Lodge-Filter">
		<div>
			<div class="DateFilterName">날짜</div>
			<input type="text" name="daterange" value="10/26/2023 - 01/15/2023" />
		</div>
		<div class="ApplyFilterName">상세조건</div>
		<div class="ApplyFilter">
			<div class="ApplyBox">
				<button class="ResetBtn">초기화</button>
				<button class="ApplyBtn">적용</button>
			</div>
		</div>
		<div class="LocationFilterName">지역</div>
		<div class="LocationFilter">
			<div>


				<p>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck "> <label class="form-check-label"
						for="flexCheck "> 서울 </label>
					</p>
					<p>
						<input class="form-check-input" type="checkbox" value=" "
							id="flexCheck 2"> <label class="form-check-label"
							for="flexCheck 2"> 부산 </label>
					</p>
					<p>
						<input class="form-check-input" type="checkbox" value=" "
							id="flexCheck 3"> <label class="form-check-label"
							for="flexCheck 3"> 제주 </label>
					</p>
					<p>
						<input class="form-check-input" type="checkbox" value=" "
							id="flexCheck 4"> <label class="form-check-label"
							for="flexCheck 4"> 강원 </label>
					</p>
					<p>
						<input class="form-check-input" type="checkbox" value=" "
							id="flexCheck 5"> <label class="form-check-label"
							for="flexCheck 5"> 경기 </label>
					</p>
				</div>
			</div>
			<div>
				<p>
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck 6"> <label class="form-check-label"
						for="flexCheck 6"> 인천 </label>
				</p>
				<p>
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck 7"> <label class="form-check-label"
						for="flexCheck 7"> 경상북도 </label>
				</p>
				<p>
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck 8"> <label class="form-check-label"
						for="flexCheck 8"> 경상남도 </label>
				</p>
				<p>
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck 9"> <label class="form-check-label"
						for="flexCheck 9"> 전라북도 </label>
				</p>
				<p>
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck 10"> <label class="form-check-label"
						for="flexCheck 10"> 전라남도 </label>
				</p>
			</div>
		</div>
		</div>
		<div class="TypeFilterName">타입</div>
		<div class="TypeFilter">
			<p>
			<div class="form-check TypeForm">

				<p>
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck 11"> <label class="form-check-label"
						for="flexCheck 11"> 모텔 </label>
				</p>
				<p>
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck 12"> <label class="form-check-label"
						for="flexCheck 12"> 호텔 </label>
				</p>
				<p>
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck 13"> <label class="form-check-label"
						for="flexCheck 13"> 펜션 </label>
				</p>
				<p>
					<input class="form-check-input" type="checkbox" value=" "
						id="flexCheck 14"> <label class="form-check-label"
						for="flexCheck 14"> 캠핑 </label>
				</p>
			</div>
		</div>
	</aside>
	<!--필터-->
	<main>
	<article class="Lodge-Filter-Result"></article>
	<!-- 필터 결과  -->
	<article class="Lodge-Result-List">
		<div class="Lodge-List-InfoBox">
			<div class="Lodge-Info-Name">객실이름</div>
			<div class="Lodge-Info-Rate">9.8</div>
			<div class="Lodge-Info-Address">객실이름</div>
			<div class="Lodge-Info-Count">남은 객실 1개</div>
			<div class="Lodge-Info-Price">25000원</div>
		</div>
		`
		<div class="Lodge-List-InfoBox">
			<div class="Lodge-Info-Name">객실이름</div>
			<div class="Lodge-Info-Rate">9.8</div>
			<div class="Lodge-Info-Address">객실이름</div>
			<div class="Lodge-Info-Count">남은 객실 1개</div>
			<div class="Lodge-Info-Price">25000원</div>
		</div>
		`
		<div class="Lodge-List-InfoBox">
			<div class="Lodge-Info-Name">객실이름</div>
			<div class="Lodge-Info-Rate">9.8</div>
			<div class="Lodge-Info-Address">객실이름</div>
			<div class="Lodge-Info-Count">남은 객실 1개</div>
			<div class="Lodge-Info-Price">25000원</div>
		</div>
		`
		<div class="Lodge-List-InfoBox">
			<div class="Lodge-Info-Name">객실이름</div>
			<div class="Lodge-Info-Rate">9.8</div>
			<div class="Lodge-Info-Address">객실이름</div>
			<div class="Lodge-Info-Count">남은 객실 1개</div>
			<div class="Lodge-Info-Price">25000원</div>
		</div>
			<div class="Lodge-List-InfoBox">
			<div class="Lodge-Info-Name">객실이름</div>
			<div class="Lodge-Info-Rate">9.8</div>
			<div class="Lodge-Info-Address">객실이름</div>
			<div class="Lodge-Info-Count">남은 객실 1개</div>
			<div class="Lodge-Info-Price">25000원</div>
		</div>
		
			<div class="Lodge-List-InfoBox">
			<div class="Lodge-Info-Name">객실이름</div>
			<div class="Lodge-Info-Rate">9.8</div>
			<div class="Lodge-Info-Address">객실이름</div>
			<div class="Lodge-Info-Count">남은 객실 1개</div>
			<div class="Lodge-Info-Price">25000원</div>
		</div>
		
			<div class="Lodge-List-InfoBox">
			<div class="Lodge-Info-Name">객실이름</div>
			<div class="Lodge-Info-Rate">9.8</div>
			<div class="Lodge-Info-Address">객실이름</div>
			<div class="Lodge-Info-Count">남은 객실 1개</div>
			<div class="Lodge-Info-Price">25000원</div>
		</div>
		
			<div class="Lodge-List-InfoBox">
			<div class="Lodge-Info-Name">객실이름</div>
			<div class="Lodge-Info-Rate">9.8</div>
			<div class="Lodge-Info-Address">객실이름</div>
			<div class="Lodge-Info-Count">남은 객실 1개</div>
			<div class="Lodge-Info-Price">25000원</div>
		</div>
		



	</article>
	<!-- 숙소 내용 --> </main>
</body>
</html>