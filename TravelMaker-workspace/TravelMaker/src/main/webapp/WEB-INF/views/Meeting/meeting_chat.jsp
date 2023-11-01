<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../allUsedHeader.jsp" %>

<div id="meeting_chat" class="frame">
	<p id="status">연결 대기중...</p>
	<input type="text" id="room_id">
	<button onclick="connect()">방 만들기</button>
	<br><br>
	
	<input type="text" id="message">
	<button onclick="send()">보내기</button>
	
	<div id="test"></div>
	
	
	<!-- 메시지 출력 영역 -->
	<div id="messageArea"></div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script>

	let socket;
	let stompClient;

	let roomId;


	function connect() {
		socket = new SockJS('/www/chat');
		stompClient = Stomp.over(socket);
		roomId = document.getElementById('room_id').value;

		stompClient.connect({}, (frame) => {


			const status = document.getElementById('status');
			status.innerText = '연결됨';


			console.log('Connected: ' + frame);

			// '/broker/receive' 주소를 구독하여 메시지를 받음
			stompClient.subscribe('/broker/room/' + roomId, onReceive);
		})

		function onReceive(chat){
			const param = JSON.parse(chat.body);
			const content = param.content;
			const userid = '${user.travelMaker_Member_UserId}'

			const test = document.getElementById('test');
			const sender = document.createElement('p');
			sender.innerText = '보낸사람: ' + userid;
			const msg = document.createElement('p');
			msg.innerText = '메시지: ' + content;
			test.appendChild(sender);
			test.appendChild(msg);
		}
	}

	function send() {
		const message = document.getElementById('message');

		stompClient.send('/app/enter', {}, JSON.stringify({
			from: '${user.travelMaker_Member_UserId}',
			content: message.value,
			roomId: roomId
		}));
	}

</script>
</body>
</html>