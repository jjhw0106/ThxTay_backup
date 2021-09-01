<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<script src="https://kit.fontawesome.com/f421352664.js"	crossorigin="anonymous"></script>
<style>
/* 공통 CSS */
.container-fluid {
	padding: 0;
}

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

body {
	font-family: 'nanumgothic' !important;
	font-family: 'Source Sans Pro';
	margin: 0;
}

.form-wrapper {
	align-items: center;
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

.nextback-box {
	align-items: center;
	cursor: pointer;
	display: flex;
	flex-direction: row-reverse;
	height: 100%;
	justify-content: space-between;
}

.nextback-items {
	background-color: white;
	border-style: none;
	border-radius: 10px;
	font-weight: bold;
	font-size: 17px;
	padding: 15px 25px;
	margin: 0 40px;
	text-align: center;
}

.nextback-box button:hover {
	background-color: gray;
}

/* 공통 CSS */
.left-area {
	align-items: center;
	flex: 1;
	background-image:
		url('data:image/webp;base64,UklGRoQCAABXRUJQVlA4WAoAAAAgAAAAHQAAHQAASUNDUAwCAAAAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD//1ZQOCBSAAAAUAMAnQEqHgAeAD7ZYKpOtiWooygKqsAbCWQAnTLfAiGYXfAA/uw/rDUG/ySry930W5TklUCdPGwZvhShkxmlA5XTMUKtCBVuol3YS6MrvY4AAA==');
	background-size: cover;
	color: white;
	display: flex;
	width: 50%;
}

.left-area p {
	margin: 0 auto;
	font-size: 32px;
	margin: 0 auto;
}

.right-area {
	background-color: white;
	display: flex;
	flex: 1;
	width: 50%;
}

.right-area-top {
	z-index: 2 !important;
	width: 50vw !important;
	height: 10%;
}

.right-area form {
	align-items: center;
}

.register-form {
	width: 100%;
}

.type-choose-btn-wrapper {
	width: 100%;
	max-width: 500px;
	margin-left: auto;
	margin-right: auto;
}

.type-choose-btn-wrapper button:hover {
	background: tomato;
}

.type-choose-btn-wrapper {
	padding-top: 30px;
}

.type-choose-btn {
	width: 100%;
	display: flex;
	border-radius: 10px;
	border: 1px solid #d4d4d4;
}

.type-choose-btn.active {
	background: tomato;
}

.type-font-pos {
	
}

.type-font {
	margin: 16px 16px 16px 24px;
}

.type-img-pos {
	margin-left: auto;
}

.type-img {
	
}

.type-img img {
	width: 55px;
	height: 55px;
}

.wrapper {
	background-color: gray;
	display: flex;
	height: 100vh;
}

.save-info {
	align-items: center;
	display: flex;
	flex-direction: row-reverse;
	height: 88px;
	padding-right: 30px;
}

.save-info-items {
	border-style: none;
	border-radius: 10px;
	font-weight: bold;
	font-size: 13px;
	padding: 5px 10px;
	margin: 5px;
	text-align: center;
}
.save-info-items.disabled {
  opacity: 0.6;
  cursor: not-allowed;
}
</style>


<title>새 숙소 등록하기</title>

<div class="container-fluid">
	<div class="wrapper">
		<div class="left-area">
			<a href="home" class="go-main"><i class="fab fa-airbnb"
				style="color: white; padding: 10px;"></i></a>
			<p>숙소 타입을 선택하세요!</p>
		</div>
		<div class="right-area">
			<div class="form-wrapper">
				<div class="right-area-top">
					<div class="save-info">
						<div>
							<button class="save-info-items">도움말</button>
						</div>
						<div>
							<button class="save-info-items disabled">저장 및 나가기</button>
						</div>
					</div>
				</div>
				<div id="ldg-step1" style="height: 80%; display: flex; align-items: center; flex-direction: row; justify-content: center">
					<form class="register-form" method="post" action="/lodgingDetailAdd">
						<c:forEach var="lodgingType" items="${lodgingTypes }">
							<div class="type-choose-btn-wrapper">
								<button class="type-choose-btn" type="button" role="radio" aria-checked="false">
									<input type="hidden" class="" name="ldgType" value="">
									<div class="type-font-pos">
										<div class="type-font">${lodgingType.codeContent }</div>
									</div>

									<div class="type-img-pos">
										<div class="type-img">
											<img aria-hidden="true" alt=""
												src="https://a0.muscache.com/im/pictures/eadbcbdb-d57d-44d9-9a76-665a7a4d1cd7.jpg?im_w=240"
												data-original-uri="https://a0.muscache.com/im/pictures/eadbcbdb-d57d-44d9-9a76-665a7a4d1cd7.jpg?im_w=240"
												style="object-fit: cover; vertical-align: bottom; border-radius: 4px;">
										</div>
									</div>
								</button>
							</div>
						</c:forEach>
					</form>
				</div>

				<div style="height: 9%">
					<div class="progress" style="height: 3px;">
						<div class="progress-bar" role="progressbar" aria-valuenow="40"
							aria-valuemin="0" aria-valuemax="10"
							style="width: 16%; background-color: black; height: 2px;">
						</div>
					</div>
					<div class="nextback-box">
						<div>
							<button class="nextback-items" id="next"
								style="color: white; background-color: black">다음</button>
						</div>
						<div>
							<button class="nextback-items" id="prev"
								style="text-decoration: underline;">뒤로</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
<script>
	/* $(".type-choose-btn-wrapper button").each(function(){
		alert($(this)."${lodgingRegistering.lodgingTypeCode})
	    if($(this).text()=="${lodgingRegistering.lodgingTypeCode}")
	        $(this).addClass("active");
	}) */
	
	$(".type-choose-btn-wrapper button").click(
			function() {
				$(".type-choose-btn-wrapper *").removeClass("active");
				$(".type-choose-btn-wrapper button input").removeAttr("name");
				$(this).addClass("active");
				$(this).find("input").addClass("active");
				$(this).find("input").attr("name","ldgType");
				clickedType = $('.type-choose-btn-wrapper').find('.active').text().trim();
				$(".type-choose-btn-wrapper button input.active").val(clickedType);
			}
	);

	$("#prev").click(function() {
		history.back();
	});

	$("#next").click(function() {
		$(".register-form").submit();
	});
</script>