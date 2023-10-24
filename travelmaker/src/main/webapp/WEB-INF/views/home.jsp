<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<script>
    function first_onmouseover(){
        first.innerText="숙소";
        first.style.width = '316px';
        first.style.height = '500px';
        first.style.backgroundSize = '1000px';
        first.style.backgroundColor = 'rgba(0, 0, 0, 0.2)';
        first.style.cursor = 'pointer';
    }
    function first_onmouseout(){
        first.innerText="Convenient";
        first.style.background = 'none';
    }
    function first_onclick() {
        location.href = 'https://www.naver.com';
    }
    function second_onmouseover(){
        second.innerText="혼자? 같이!";
        second.style.width = '316px';
        second.style.height = '500px';
        second.style.backgroundSize = '1000px';
        second.style.backgroundColor = 'rgba(0, 0, 0, 0.2)';
        second.style.cursor = 'pointer';
    }
    function second_onmouseout(){
        second.innerText="MATE";
        second.style.background = 'none';
    }
    function second_onclick() {
        location.href = 'https://www.naver.com';
    }
    function third_onmouseover(){
        third.innerText="여행지 추천";
        third.style.width = '316px';
        third.style.height = '500px';
        third.style.backgroundSize = '1000px';
        third.style.backgroundColor = 'rgba(0, 0, 0, 0.2)';
        third.style.cursor = 'pointer';
    }
    function third_onmouseout(){
        third.innerText="Travel";
        third.style.background = 'none';
    }
    function third_onclick() {
        location.href = '${cpath}/recommend_travel/recommend_travel_main';
    }
    function four_onmouseover(){
        four.innerText="이벤트";
        four.style.width = '316px';
        four.style.height = '500px';
        four.style.backgroundSize = '1000px';
        four.style.backgroundColor = 'rgba(0, 0, 0, 0.2)';
        four.style.cursor = 'pointer';
    }
    function four_onmouseout(){
        four.innerText="Promotion";
        four.style.background = 'none';
    }
    function four_onclick() {
        location.href = 'https://www.naver.com';
    }

</script>
<body>
    <div class="Container">
        <div class="left">Travel Maker</div>
        <div class="right">
            <div id="first" class="nav" onmouseover=first_onmouseover() onmouseout=first_onmouseout() 
            onclick=first_onclick()>
                Convenient
            </div>
            <div id="second" class="nav" onmouseover=second_onmouseover() onmouseout=second_onmouseout()
            onclick=second_onclick()>
                Mate
            </div>
            <div id="third" class="nav" onmouseover=third_onmouseover() onmouseout=third_onmouseout()
            onclick=third_onclick()>
                Travel
            </div>
            <div id="four" class="nav" onmouseover=four_onmouseover() onmouseout=four_onmouseout()
            onclick=four_onclick()>
                promotion
            </div>
        </div>
    </div>
</body>
</html>