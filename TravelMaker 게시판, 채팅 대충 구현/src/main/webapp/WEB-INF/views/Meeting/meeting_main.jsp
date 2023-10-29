<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="meeting_header.jsp" %>

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
					<div class="meeting_writer">
						${list.meeting_Board_Writer }
					
					</div>
					<div class="meeting_date">
						${list.meeting_Board_Date }
					</div>
					<div class="meeting_content">
						${list.meeting_Board_Content }
					</div>
				</div>
				<div id="meeting_btn" class="flex">
					<div class="modifyBtn flex">
						<div class="board_idx flex">${list.meeting_Board_Idx }</div>
						수정
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
</div>

<script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>

<script>
	$(".deleteBtn").click(function(event) {
		const idx = event.target.innerText.replace("X","")
		let flag = confirm('정말 삭제 하시겠습니까?')
		if(flag) {
			location.href = '${cpath}/Meeting/delete_board/' + idx
		}
	})
	
	$(".modifyBtn").click(function(event) {
		const idx2 = event.target.innerText.replace("수정","")
		let flag = confirm('정말 수정 하시겠습니까?')
		if(flag) {
			location.href = '${cpath}/Meeting/modify_board/' + idx2
		}
	})
</script>


</body>
</html>


</body>
</html>