<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="https://kit.fontawesome.com/f421352664.js"	crossorigin="anonymous"></script>
<style>

/* 공통 CSS */
a{
	text-decoration: none;
}

.container-fluid {
	padding: 0;
}

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

body {
	margin: 0;
	font-family: 'nanumgothic' !important;
	font-family: 'Source Sans Pro';
}

@media ( min-width :744px) {
	.go-main {
		display: inline !important;
		font-size: 24px;
	}
}

.go-main {
	position: fixed;
	z-index: 1;
	top: 27px;
	left: 32px;
	display: none;
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

<title>숙소 등록 상태</title>

<div class="container-fluid">
	<div class="lodgingEnrollment">
		<div class="leftArea">
			<a href="home" class="go-main"><i class="fab fa-airbnb"
				style="color: white; padding: 10px;"></i></a>
			<div class="welcomeMessage">${loginedUser.name }님환영합니다</div>
		</div>
		<div class="lodgingStatus" style="position: absloute;">
			<div class="lodgingStatusWrapper">
				<div class="chooseStatus" style="padding-bottom: 50px;">
					<c:forEach var="lodging" items="${lodgings }">
						<c:if test="${lodging.status eq 'LDG0301' }">
							<c:set var="lodgingRegistering" value="${lodging}" />
						</c:if>
					</c:forEach>
					<c:if test="${lodgingRegistering.status eq 'LDG0301'}">
						<h2 style="font-weight: bold">숙소 등록 완료하기</h2>
						<div class="chooseStatus">
						<a href="/lodgingTypeAdd">
							<button class="chooseStatusBtn" type="button" role="radio"
								aria-checked="false">
								<p id="lodgingRegistering">${lodgingRegistering.name }</p>
							</button>
						</a>
						</div>
					</c:if>
				</div>
				<h2 style="font-weight: bold">숙소 등록 시작하기</h2>
				<div class="chooseStatus">
					<a href="/lodgingTypeAdd"> <!-- 등록중인 숙소가 있을 때 새로운 숙소 등록하기 누를 시 => 등록중인 숙소 지우고 새로 시작 -->
						<button class="chooseStatusBtn" type="button" role="radio" aria-checked="false">
							<p>새로운 숙소 등록하기</p>
						</button>
					</a>
				</div>
				<div class="chooseStatus">
					<button class="chooseStatusBtn" type="button" role="radio" aria-checked="false">
						<p>기존 숙소 수정하기</p>
					</button>
				</div>
			</div>
		</div>
	</div>
</div>