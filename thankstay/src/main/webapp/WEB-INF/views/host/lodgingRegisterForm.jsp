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
.lodgingEnrollment {
	width: 100%;
}

.leftArea {
	display: flex;
	position: absolute;
	width: 50%;
	height: 100%;
	background-image:
		url('data:image/webp;base64,UklGRoQCAABXRUJQVlA4WAoAAAAgAAAAHQAAHQAASUNDUAwCAAAAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD//1ZQOCBSAAAAUAMAnQEqHgAeAD7ZYKpOtiWooygKqsAbCWQAnTLfAiGYXfAA/uw/rDUG/ySry930W5TklUCdPGwZvhShkxmlA5XTMUKtCBVuol3YS6MrvY4AAA==');
	background-size: cover;
	color: white;
}

.welcomeMessage {
	font-size: 32px;
	margin: 0 auto;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.lodgingStatus {
	display: flex;
	float: right;
	width: 50%;
	height: 100%;
}

.chooseStatus {
	width: 100% !important;
	max-width: 464px !important;
	margin-bottom: 12px !important;
	margin-left: auto;
	margin-right: auto;
	animation-duration: 600ms !important;
	animation-iteration-count: 1 !important;
	animation-fill-mode: both !important;
	animation-name: keyframe_14ic1xm !important;
}

.chooseStatusBtn {
	-webkit-box-align: center !important;
	-webkit-box-pack: justify !important;
	background-color: rgb(255, 255, 255) !important;
	border: 1px solid rgb(221, 221, 221) !important;
	box-sizing: border-box !important;
	border-radius: 12px !important;
	display: flex !important;
	justify-content: space-between !important;
	align-items: center !important;
	width: 100% !important;
	min-height: 68px !important;
	cursor: pointer !important;
	padding: 0px !important;
	outline: none !important;
}

.lodgingStatusWrapper {
	position: absolute;
	top: 50%;
	left: 70%;
	transform: translate(-50%, -50%);
	padding-left: 50px;
}

.lodgingStatusWrapper p {
	width: 300px;
}

.lodgingStatusWrapper h2 {
	padding-bottom: 20px;
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
		<%@include file="../common/hostHeader.jsp"%>
		<div class="lodgingEnrollment">
			<div class="leftArea">
				<div class="welcomeMessage">~님 환영합니다</div>
			</div>
			<div class="lodgingStatus" style="position: absloute;">
				<div class="lodgingStatusWrapper">
				
					<h2 style="font-weight: bold">숙소 등록 완료하기</h2>
					<div class="chooseStatus" style="padding-bottom: 50px;">
						<button class="chooseStatusBtn" type="button" role="radio"
							aria-checked="false">
							<p>숙소 등록일 : 2021-07-30</p>
						</button>
					</div>
					<h2 style="font-weight: bold">숙소 등록 시작하기</h2>
					<div class="chooseStatus">
						<a href="/lodgingAdd">
						<!-- 등록중인 숙소가 있을 때 새로운 숙소 등록하기 누를 시 => 등록중인 숙소 지우고 새로 시작 -->
							<button class="chooseStatusBtn" type="button" role="radio"
								aria-checked="false">
								<p>새로운 숙소 등록하기</p>
							</button>
						</a>
					</div>
					<div class="chooseStatus">
						<button class="chooseStatusBtn" type="button" role="radio"
							aria-checked="false">
							<p>기존 숙소 수정하기</p>
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="nextBox">1</div>
	</div>
	<script>
		
	</script>
</body>
</html>