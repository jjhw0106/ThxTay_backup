<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/f421352664.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>부트스트랩5 템플릿</title>
<style>
/* 공통 CSS */
.container-fluid{padding: 0;}
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body {
	margin: 0;
	font-family:'nanumgothic' !important;
	font-family: 'Source Sans Pro';
}
/* 공통 CSS */

.enrollButton {
	margin: 0;
	align-items: center;
	font-size: 20px;
	border-radius: 10px;
}

.reservationWrapperBox {
	align-items: center;
	background-image:
		url('https://a0.muscache.com/im/pictures/cd29ad57-8934-4075-9d5c-6578863fb1dd.jpg?im_w=1920');
	background-repeat: no-repeat;
	background-position: center;
	height: 500px;
	width: 100%;
}

.reservationAlarmBox {
	justify-content: space-between;
}

.reservationAlarmText {
	width: 1440px;
	margin: 0 auto;
}

.reservationAlarmText p:first-child {
	font-weight: bold;
	font-size: 32px;
	padding-top: 50px;
	padding-bottom: 0;
	padding-left: 10%;
}
/* 체크 */
.reservationAlarmText p:nth-child(2) {padding-left 10%;
	padding-left: 10%;
}

.todayBox {
	height: 300px;
	width: 100%;
	background-image:
		url('data:image/webp;base64,UklGRoQCAABXRUJQVlA4WAoAAAAgAAAAHQAAHQAASUNDUAwCAAAAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD//1ZQOCBSAAAAUAMAnQEqHgAeAD7ZYKpOtiWooygKqsAbCWQAnTLfAiGYXfAA/uw/rDUG/ySry930W5TklUCdPGwZvhShkxmlA5XTMUKtCBVuol3YS6MrvY4AAA==');
	background-size: cover;
}

.todayInnerbox {
	width: 1440px;
	padding-top: 100px;
	justify-content: space-between;
	align-items: center;
	margin: 0 auto;
}

.todayTitle {
	display: flex;
	font-size: 32px;
	color: white;
	align-items: center;
	justify-content: space-between;
	padding: 0% 10%;
}

.todayTitle p {
	padding-top: 0;
	margin: 0px;
}

.todayNotice {
	color: white;
	padding-top: 20px;
	padding-left: 10%;
}
</style>

</head>
<body>
	<div class="container-fluid">
		<%@include file="../common/hostHeader.jsp"%>
		<section>
			<div class="todayBox">
					<%-- <c:if 숙소상태: !등록중> --%>
				<div class="todayInnerbox">
					<div class="todayTitle">
						<p>투데이</p>
						<span><a href="lodgingRegister"><button
									class="enrollButton">새 숙소 등록하기</button></a></span>
					</div>
					<div class="todayNotice">지금 바로 에어비앤비의 호스트가 되어 보세요!</div>
				</div>
				<%-- </c:if>
					<c:if 숙소상태: 등록중>
					<div class="todayInnerbox">
						<div class="todayTitle">
							<p>투데이</p>
							<span><a href="#"><button class="enrollButton">숙소 등록 완료하기</button></a></span>
						</div>
						<div class="todayNotice">숙소 등록 절차가 거의 완료되었습니다! 숙소 페이지에 누락된 세부정보 몇 가지를 입력해주세요.</div>
					</div>
				</c:if> --%>
			</div>
			<div class="reservationWrapperBox">
				<div class="reservationAlarmBox"></div>
				<div class="reservationAlarmText">
					<p>예약</p>
					<p>게스트가 숙소를 예약하면 여기에 표시됩니다.</p>
				</div>
			</div>
		</section>
	</div>

	<script src="https://kit.fontawesome.com/f421352664.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		/* hostHeader JS */
		const toggleBtn = document.querySelector(".navbar_toggleBtn");
		const menu = document.querySelector('.navbar_menu');
		const icons = document.querySelector('.navbar_icons');

		toggleBtn.addEventListener('click', function() {
			menu.classList.toggle('active');
			icons.classList.toggle('active');
		});
	</script>
</body>
</html>


<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>

/* 공통 CSS */
.container-fluid {
	padding: 0;
}

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

body {
	margin: 0;
	font-family: 'nanumgothic' !important;
	font-family: 'Source Sans Pro';
}
/* 공통 CSS */
.leftArea {
	display: flex;
	position: absolute;
	float: left;
	width: 50%;
	height: 100%;
	background-image:
		url('data:image/webp;base64,UklGRoQCAABXRUJQVlA4WAoAAAAgAAAAHQAAHQAASUNDUAwCAAAAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD//1ZQOCBSAAAAUAMAnQEqHgAeAD7ZYKpOtiWooygKqsAbCWQAnTLfAiGYXfAA/uw/rDUG/ySry930W5TklUCdPGwZvhShkxmlA5XTMUKtCBVuol3YS6MrvY4AAA==');
	background-size: cover;
	color: white;
}

.leftAreaMessage{
	font-size: 32px;
	margin: 0 auto;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.rightArea{
	width:50%;
	height:100%;
	float:left;
	border-style:solid;
}

</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>숙소 등록 상태</title>
</head>
<body>
	<div class="container-fluid">
		<div class="leftArea">
			<div class="leftAreaMessage">
				<p>숙소 정보를 등록해주세요</p>
			</div>
			<div class="rightArea">
				<p>영역확인</p>
			</div>
		</div>
		<div>
			<p></p>
		</div>
	</div>
	<script>
		
	</script>
</body>
</html> --%>