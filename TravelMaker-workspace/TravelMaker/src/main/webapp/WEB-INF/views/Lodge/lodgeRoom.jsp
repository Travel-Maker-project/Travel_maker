<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../allUsedHeader.jsp"%>
<style>
.RoomListContainer {
	margin-top: 100px;
}

/* daterangepicker css*/
@import
	url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap')
	;

body {
	background-color: black !important;
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	padding: 20px;
	word-wrap: break-word;
	background-color: transparent !important;
	background-clip: border-box;
	border-radius: 6px;
}

.form-control[readonly] {
	background-color: black !important;
	opacity: 1;
	color: white;
	border: 1px solid #f44336
}

.pro-button {
	background-color: #f44336;
	border-color: #f44336;
	height: 20px;
}

.pro-button:focus {
	outline: none !important;
	background-color: #f44336;
	border-color: #f44336;
	box-shadow: 0 0 0 0.2rem rgb(255, 255, 255) !important
}

.pro-button:active {
	outline: none !important;
	background-color: #f44336 !important;
	border-color: #f44336 !important
}

.pro-button:hover {
	background-color: #d8271a;
	border-color: #d8271a
}

label {
	font-weight: 800;
	color: white;
}

/*  헤더 컨텐츠 css    */
.Lodge_Room_HeadContainer {
	width: 1400px;
	border: 2px solid white;
	box-sizing: border-box;
	margin: auto;
	margin-top: 100px;
	color: white;
}

.Lodge_Room_FirstShowInfoBox {
	width: 100%;
	border: 2px solid red;
	height: 400px;
	display: flex;
	color: white;
}

.Lodge_Room_List {
	width: 100%;
	border: 2px solid blue;
	color: white;
}

.Lodge_Room_FirstShowImg {
	width: 600px;
	box-sizing: border-box;
	flex: 1;
}

.Lodge_Room_FirstShowImg img {
	width: 600px;
	height: 400px;
}

.Lodge_Room_FirstShowText {
	margin: 10px 20px;
	color: white;
	width: 100%;
	flex: 2;
}

.firstText {
	padding: 5px 0;
}

.title {
	font-size: 1.5em;
	font-weight: bold;
}

.rate {
	color: white;
	background-color: orange;
	width: fit-content;
	height: fit-content;
	border-radius: 5px;
	padding: 0 5px;
}

.address {
	font-size: 1.2em;
	color: rgba(255, 255, 255, 0.9);
	color: white;
}

.coupon {
	background: linear-gradient(to bottom, green, lightgreen);
}

.intro {
	border: 1px solid white;
	padding: 0 10px;
	height: 250px;
	position: relative;
	box-sizing: border-box;
}

.introTitle {
	font-size: 1.2em;
	font-weight: bold;
	margin-top: 10px;
}

.introContent {
	color: white;
	margin-top: 10px;
	line-height: 25px;
	height: 20px;
}

.more {
	position: absolute;
	right: 20px;
	cursor: pointer;
}

/*  메인 컨텐츠 css    */
.Lodge_Room_MainContainer {
	margin: auto;
	margin-top: 30px;
	width: 1400px;
	border: 1px solid white;
	color: white;
}

.Lodge_Room_NavBar>ul {
	display: flex;
	list-style: none;
}
/* 클릭시 아래 밑줄 생기게 하기*/
.Lodge_Room_NavBar>ul>li {
	font-size: 1.2em;
	font-weight: bold;
	margin-left: 10px;
	padding-bottom: 10px;
}

.rangepicker>input {
	all: unset;
	border: 1px solid white;
	background-color: white;
	color: black;
	font-size: 1.2em;
	width: 300px;
	margin-left: 50px;
	text-align: center;
	font-weight: bold;
}

.adaptTransparent {
	color: transparent;
}

/*적용 이후 변경사항*/
.room_detail_container{
    width: 100%;
    border: 1px solid white;
    display: flex;
    padding-bottom: 40px;
}
.room_detail_img{
    margin: auto;
    margin-left: 20px;
}
.room_detail_img >img{
    width: 400px;
    height: 300px;
}
.room_detail_infoContainer{
    width: 100%;
    margin: 40px 90px;
}
.room_detail_name{
    font-size: 1.2em;
    font-weight: bold;
}
.room_detail_count{
    font-size: 0.9em;
    margin-bottom: 50px;
    padding-bottom: 10px;
}
.room_detail_price{
    font-size: 1.1em;
    border-bottom: 1px solid white;
    margin-bottom: 30px;
}
.room_detail_capacity{
    margin-bottom: 30px;

}
.room_detail_payment{

    text-align: right;
}
.paymentBtn{
    all: unset;
    font-size: 1.1em;
    font-weight: bold;
    background-color: white;
    color: black;
    border-radius: 10px;
    padding: 10px;
}
.custom-btn {
    width: 130px;
    height: 40px;
    color: #fff;
    border-radius: 5px;
    padding: 10px 25px;
    font-weight: bold;
    background: transparent;
    cursor: pointer;
    transition: all 0.3s ease;
    position: relative;
    display: inline-block;
     box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
     7px 7px 20px 0px rgba(0,0,0,.1),
     4px 4px 5px 0px rgba(0,0,0,.1);
    outline: none;
    text-align: center;
  }
  .btn-3 {
    background: rgb(0,172,238);
  background: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);
    width: 130px;
    height: 40px;
    line-height: 42px;
    padding: 0;
    border: none;
    
  }
  .btn-3 span {
    position: relative;
    display: block;
    width: 100%;
    height: 100%;
  }
  .btn-3:before,
  .btn-3:after {
    position: absolute;
    content: "";
    right: 0;
    top: 0;
     background: white;
    transition: all 0.3s ease;
  }
  .btn-3:before {
    height: 0%;
    width: 2px;
  }
  .btn-3:after {
    width: 0%;
    height: 2px;
  }
  .btn-3:hover{
     background: transparent;
    box-shadow: none;
  }
  .btn-3:hover:before {
    height: 100%;
  }
  .btn-3:hover:after {
    width: 100%;
  }
  .btn-3 span:hover{
     color: white;
  }
  .btn-3 span:before,
  .btn-3 span:after {
    position: absolute;
    content: "";
    left: 0;
    bottom: 0;
     background: white;
    transition: all 0.3s ease;
  }
  .btn-3 span:before {
    width: 2px;
    height: 0%;
  }
  .btn-3 span:after {
    width: 0%;
    height: 2px;
  }
  .btn-3 span:hover:before {
    height: 100%;
  }
  .btn-3 span:hover:after {
    width: 100%;
  }
</style>

<!-- 먼저 jQuery를 포함합니다. -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS 및 JS를 포함합니다. -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<!-- Font Awesome CSS를 포함합니다. -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- DateDropper CSS 및 JS를 포함합니다. -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/datedropper.css">
<script
	src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/datedropper.js"></script>


<div class="Lodge_Room_HeadContainer">
	<div class="Lodge_Room_FirstShowInfoBox">
		<div class="Lodge_Room_FirstShowImg">
			<img
				src="https://image.goodchoice.kr/resize_490x348/affiliate/2018/08/09/5b6c087868203.jpg">
		</div>
		<div class="Lodge_Room_FirstShowText">
			<div class="firstText title">호텔뉴브</div>
			<div class="firstText rate">9.0</div>
			<div class="firstText address">서울 강남구 역삼동 708-35(lodge커럼에 있어서
				조인)</div>
			<div class="firstText coupon">쿠폰</div>
			<div class="firstText intro">
				<div class="introTitle">
					사장님 한마디<span class="more">더보기</span>
				</div>
				<div class="introContent">선릉역 3번 출구에서 도보 3분 거리에 위치하여 최고의 접근성을
					자랑합니다 18년도 6월에 오픈한 편안하고 쾌적한 컨디션이 인상적인 비즈니스 호텔입니다 비즈니스, 쇼핑, 문화, 교통의
					중심지인 강남권에 위치합니다</div>
			</div>
		</div>
	</div>
	<div class="Lodge_Room_List">
		<div class="Lodge_Room_Img"></div>
	</div>
</div>

<div class="Lodge_Room_MainContainer">
	<div class="Lodge_Room_NavBar">
		<ul>
			<li>객실안내/예약</li>
			<li>숙소정보</li>
			<li>리뷰</li>
		</ul>
	</div>

	<div class="container mt-100">
		<div class="card">
			<div class="row">
				<div class="col-md-4">
					<label>From</label> <input type="text"
						class="form-control startDate">
				</div>
				<div class="col-md-4">
					<label>To</label> <input type="text" class="form-control endDate">
				</div>
				<div class="col-md-4">
					<label class="adaptTransparent">Search</label>
					<button class="btn btn-primary pro-button w-100">적용하기</button>
				</div>
			</div>
		</div>
	</div>


	<div class="RoomListContainer">
		<c:forEach var="dto" items="${RoomList }">
			<div class="room_detail_container">

				<div class="room_detail_img">
					<img src="${dto.lodge_Room_Type_Img}">
				</div>
				 <div class="room_detail_infoContainer">
				<div class="room_detail_name">호실명 : ${dto.lodge_Room_Type_Name}(${dto.lodge_Room_Type_MinCapacity} ~ ${dto.lodge_Room_Type_MaxCapacity }인)</div>
				<div class="room_detail_count">남은 호실 개수 : ${dto.lodge_Room_Type_Count}</div>
				<div class="room_detail_price">가격 : ${dto.lodge_Room_Type_price}</div>
				<div class="room_detail_capacity">예약시작 및 종료일 : 2023.11.01 ~ 2023.11.02 (1박2일)</div>
				<div class="room_detail_payment"><button class="custom-btn btn-3 paymentBtn" value=${dto.lodge_Room_Type_Idx } ><span>결제</span></button></div>
				 </div>
			</div>
		</c:forEach>
	</div>
</div>


<script>
	
		
		
	

    /* 사장님 한마디에 더보기란 클릭시 전체 내용이 출력됨 내용은 최대한 크기에 맞게 나오도록 하기
        사장님 한마디는 아래 숙소정보란으로 이동해야 할듯
    */
    const intro = document.querySelector('.intro');
    const introContent = document.querySelector('.introContent');
    const moreBtn = document.querySelector('.more');
    let flag =-1 ;
    const originContent = introContent.innerText;
    const resizeContent = introContent.innerText.substring(0,60)+'...';
    introContent.innerText= resizeContent;
    introContent.style.height = '150px';
    intro.style.height = '150px';
    
    
    const heightHandler = function(){
        
        if(flag==1){
            introContent.style.height = '150px';
            intro.style.height = '150px';
            moreBtn.innerText = '접기';
            flag *= -1;
            console.log(flag)
            introContent.innerText= resizeContent;
        }
        else{
            introContent.style.height = '250px';
            intro.style.height = '250px';
            moreBtn.innerText = '더보기';
            flag *= -1;
            console.log(flag)
            introContent.innerText= originContent;
        }
    }

    moreBtn.addEventListener('click',heightHandler);

    let selectedStartDate = null;
    let selectedEndDate = null;
    $(document).ready(function () {
        $('.startDate').dateDropper();
        $('.endDate').dateDropper();

        // Start Date 변경 이벤트 리스너 추가
        $('input.startDate').on('change', function () {
            const selectedStartDate = $(this).val();
            console.log('시작일:', selectedStartDate);
        });

        // End Date 변경 이벤트 리스너 추가
        $('input.endDate').on('change', function () {
            const selectedEndDate = $(this).val();
            console.log('종료일:', selectedEndDate);
        });

        // '적용하기' 버튼 클릭 이벤트 처리
        const applyButton = $('.pro-button');
        applyButton.on('click', function () {
             selectedStartDate = $('input.startDate').val();
             selectedEndDate = $('input.endDate').val();
             
            
            // 시작일과 종료일을 Date 객체로 변환
            const startDate = new Date(selectedStartDate);
            const endDate = new Date(selectedEndDate);

            // 시작일이 종료일보다 크면 경고 메시지 표시
            if (startDate > endDate) {
            	alert('종료일은 시작일과 같을 수 없으며 시작일보다 빠를 수 없습니다.');

                // 종료일을 시작일로 설정
                $('input.endDate').val(selectedStartDate);
            }
        });
    });
		
   
    
    const payBtn = document.querySelectorAll('.paymentBtn');
	console.log(payBtn)
	
	payBtn.forEach(e=>{
		e.addEventListener('click',() => {
			selectedStartDate=selectedStartDate.replaceAll('/','-')
            selectedEndDate=selectedEndDate.replaceAll('/','-')
			location.href='${cpath}/lodge/Payment/'+e.value+'/'+selectedStartDate+'/'+selectedEndDate;
		});
	})
	</script>

</body>
</html>