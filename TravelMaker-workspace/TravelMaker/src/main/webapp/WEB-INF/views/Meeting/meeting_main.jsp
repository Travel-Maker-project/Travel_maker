<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../allUsedHeader.jsp" %>

<div id="meeting_main" class="frame">
	<div id="meeting_main_top" class="flex">
		<h1>게시판</h1>
		<p><a href="meeting_chat">💌단체채팅하기</a></p>
	</div>
	<div id="meeting_board">
		<c:forEach var="list" items="${meetinglist }">
		<c:if test="${list.meeting_Board_IsDeleted != 'Y'}">
			<div class="meeting_board_content flex">
				<div class="board_img">
					<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NDRANDw0RDg4NDw0ODQ0NDQ8NDg4NFhEWFhYSFhMYHCggGBouGxUTITEhKCkrLy4xFyEzODYsNygtLisBCgoKDg0NFxAPGC0fICUrLS0rKy8tLS0tLS0wLTItLS01LS0tNy0rNS0tLS0rKystLS0rKystKy0tLS0rLSsrK//AABEIAOAA4QMBIgACEQEDEQH/xAAaAAEBAQADAQAAAAAAAAAAAAAAAQUCAwQG/8QAMRABAAIAAwUECQUBAAAAAAAAAAECAwQRBSExQVESMmFxEyJCUoGRobHBM3KS0eHx/8QAGQEBAQEBAQEAAAAAAAAAAAAAAAMBAgQF/8QAHhEBAQEBAAMAAwEAAAAAAAAAAAECEQMxQRIhURP/2gAMAwEAAhEDEQA/APrEFfRfNQVBoogxQAAAAAAAAAAAAAQUBBQEFAQUBFRQRQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQBoqAKIoAAwAAAAAAAAAAAAEBqiAKIAogAqAAAAACooAAwAAAAHKlLW3REz5Rq765DFn2dPOYZ2NkteYeqdn4vSJ8rQ6MTBvXvVmPHTd8zsOVwAawABABoAAAAAAAASAAACooAAwAAiNWjldn87/x/tz2dlezHbtHrT3fCHtS1v5Fs4+1K1iI0iNI6QoJqAAPHmchW2+vq26ezP8ATLvWazpMaTHJ9A82ey3pK6x3o4ePgpnf9T1j+McBVFABoAAAAAAAAAAAAqKAAMHdk8Lt4kRy4z5Q6Whsmvet5Q51eR1mdrRAQegAAAAABkbSwuziaxwtv+PN5WptWutInpb6TDLXzexDc5UAdOQAAAAAAAAAAABUUAAYNPZPdt5x9mY92yr6WtX3o1jzj/rnfp3j20wEFwAAAAAHl2n+lPnVkNLa191a9Z7TNWx6Q37QB25AAAAAAAAAJAAAVFAAGDlhYk0tFo4xOriDW/h3i0RaOEuTHyWa9HOk76zx8J6tetomNYnWJ4TCGs8XzrsUBy6AACZ03zwjiMvP5ztepXu856/42Ttc61yPPmsb0l5ty4R5OoF0KgDQAAAAAAAAAAAAVFAAGAADtwMxfDn1Z3c4nhLqGNauFtGk96JrPzh6K5jDnhevzhhI4vjjueSt+cakcb1/lDoxc/h14T2p8P7Y6n+cL5K78xnL4m7hX3Y/LoB3Jxxb0AaxABoAAAAAAAAAAAAqKAAMB3ZfLWxJ3bo52ng08DJ0py1nrLm6kd5zazMLKYl+FdI6zuh68PZnvX+FY/LQE7uqTEeWuz8KOUz5zLnGTwvcj6u8c9rr8Y6ZyeF7kfVwtkMKeUx5TL0h2n4xn32ZHs3+FoeXFyeJT2dY613todTdc3EfPDax8pS/GNJ96N0szM5W2Hx3196Pz0UmpU9YsecB05AAAAAAAAAAAAFRQHryWT7frW3V5Rzt/jjkct6S2s92vHxno2IhPeufqO8Z7+6laxEaRGkRwiFBJYAAAAAAAAJjXdyAGXnsj2db07vOvT/HhfRsjaGV7E9qserPGOkq418qWs/Y8YCiYAAAAAAAAAA5UpNpiscZnSHFobKwtZm88t0ebLeRsna9+DhxSsVjl9Z6uYPO9AAAAAAAAAAAACuN6RaJrPCd0uQMfP4+FNLTWeX1hwae1sLWIv03T5MxfN7ENTlAHTAAAAAAAABt5GnZwq+PrT8WJEPoqxpER0jRPyelPHP2AJKgAAAAAAAAAAAKAMdeYp2qWr1ifmwH0b5/MV0vaOlp+6njqfkcAFUwAAAAAAAHLC71f3V+76B8/hd6v7q/d9Al5Pivj+gCagAAAAAAAAAAACgDBh579W/n+G4w89+rfz/Cnj9uN+nQAqkAAAA//9k=">
				</div>
				<div class="board_content">
					<div class="meeting_writer flex">
						${list.meeting_Board_Writer }
					</div>
					<div class="meeting_date">
						${list.meeting_Board_Date }
					</div>
					<div class="meeting_location">
						${list.meeting_Board_Location }
					</div>
					<div class="meeting_content">
						${list.meeting_Board_Content }
					</div>
				</div>
				<div id="meeting_btn" class="flex">
					<div class="modifyBtn flex">
						<div class="board_idx">${list.meeting_Board_Idx }</div>
						<div class="modify_btn">수정</div>
					</div>
					<div class="deleteBtn flex">
						<div class="board_idx">${list.meeting_Board_Idx }</div>
						X
					</div>
				</div>
			</div>
		</c:if>
		</c:forEach>
	</div>
	
	<div id="meeting_write_btn">
		<button id="write_btn">글쓰기</button>
	</div>
	
	<div id="meeting_write">
		<dialog id="write_modal">
		<h2>새 글 쓰기</h2>
			<div class="write_content">
				<form method="POST">
					<p><textarea name="meeting_Board_Content" placeholder="내용을 입력하세요" required autofocus></textarea></p>
					<p><input type="text" name="meeting_Board_Location" placeholder="현재 계신 숙소 위치" required></p>
					<p><input type="submit" value="작성"></p>
				</form>
				<p class="modal_btn">
					<button id="write_cancel">나가기</button>
				</p>
			</div>
		</dialog>
	</div>
	
	<div id="meeting_modify">
		<dialog id="modify_modal">
		<h2>수정하기</h2>
			<div class="modify_content">
				<form id="modify_form" method="POST" action="${cpath }/Meeting/modify_board/">
					<p><textarea name="meeting_Board_Content" placeholder="내용을 입력하세요" required autofocus rows="30" cols="100"></textarea></p>
					<p><input type="text" name="meeting_Board_Location" placeholder="현재 계신 숙소 위치" required></p>
					<p><input type="submit" value="작성"></p>
				</form>
				<p class="modal_btn">
					<button id="modify_cancel">나가기</button>
				</p>
			</div>
		</dialog>
	</div>
</div>

<script>
	$(".deleteBtn").click(function(event) {
		const idx = event.target.innerText.replace("X","")
		const loginUserid = '${user.travelMaker_Member_UserId}'
		const writer = event.target.parentNode.previousElementSibling.firstElementChild.innerText
		if(loginUserid == writer) {
			let flag = confirm('정말 삭제 하시겠습니까?')
			if(flag) {
				location.href = '${cpath}/Meeting/delete_board/' + idx
			}
		} else {
			alert('본인만 삭제 가능합니다')
		}
		
	})
	
	$("#write_btn").click(function(event) {
		if('${user}' == null) {
			alert('로그인을 해주세요')
			location.href = '${cpath}/Member/login'
		}
		var write_modal = document.getElementById('write_modal')
		write_modal.showModal();
	})
	
	$('#write_cancel').click(function(event) {
		var write_modal = document.getElementById('write_modal')
		write_modal.close();
	})
	
	$(".modify_btn").click(function(event) {
		const idx = event.target.previousElementSibling.innerText
		
		const loginUserid = '${user.travelMaker_Member_UserId}'
		const writer = event.target.parentNode.parentNode.previousElementSibling.firstElementChild.innerText
		if(loginUserid == writer) {
			const modify_form = document.querySelector('#modify_form')
			let flag = confirm('정말 수정하시겠습니까?')
			if(flag) {
				var modify_modal = document.getElementById('modify_modal')
				modify_modal.showModal()
				modify_form.action = '${cpath}/Meeting/meeting_modify/' + idx 
			}
		}
		else {
			alert('본인만 수정 가능합니다')
		}
	})
	
	$('#modify_cancel').click(function(event) {
		var modify_modal = document.getElementById('modify_modal')
		modify_modal.close();
	})
</script>
</body>
</html>