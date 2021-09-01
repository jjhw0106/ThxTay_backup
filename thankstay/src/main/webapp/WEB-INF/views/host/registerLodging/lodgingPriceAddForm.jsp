<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}
</style>


<title>새 숙소 등록하기</title>

<div class="container-fluid">
	<div class="wrapper">
		<div class="left-area">
			<a href="home" class="go-main"><i class="fab fa-airbnb"
				style="color: white; padding: 10px;"></i></a>
			<p>숙소 정보를 입력해주세요!</p>
		</div>
		<div class="right-area">
			<div class="form-wrapper">
				<div class="right-area-top">
					<div class="save-info">
						<div>
							<button class="save-info-items">도움말</button>
						</div>
						<div>
							<button id="save-btn" class="save-info-items">저장 및 나가기</button>
						</div>
					</div>
				</div>
				<div id="ldg-step1"
					style="height: 80%; display: flex; align-items: center; flex-direction: row; justify-content: center">
					<form id="form-register" style="width: 50%;" method="post" novalidate="novalidate">
						<c:if test="${lodgingRegistering.status ne null }">
							<input type="hidden" name="lodgingNo" value="${lodgingRegistering.no }">
							<input type="hidden" name="userNo" value="${lodgingRegistering.userNo }">
						</c:if>
						
						<div class="">
							<label class="form-label">숙박비 설정</label>
							<div style="display: flex">
								<input type="date" class="form-control form-control-sm"	style="border: none; text-align: center"
									   id="start-date" name="startDate" value="" />
								<input type="date" class="form-control form-control-sm"	style="border: none; text-align: center"
									   id="end-date" name="endDate" value="2021-8-5" />
							</div>
							<div>
								<div style="padding-top:25px;margin: 0px auto; text-align:right">
									<label>숙박료:<input type="number" name="lodgingFee" style="text-align:right; border:none; border-bottom:1px solid black" value=0></label>
									<label>청소비:<input type="number" name="cleaningFee" style="text-align:right; border:none; border-bottom:1px solid black"value=0></label>
								</div>
							</div>
						</div>
					</form>
				</div>

				<div style="height: 9%">
					<div class="progress" style="height: 3px;">
						<div class="progress-bar" role="progressbar" aria-valuenow="40"
							aria-valuemin="0" aria-valuemax="10"
							style="width: 100%; background-color: black; height: 2px;">
						</div>
					</div>
					<div class="nextback-box">
						<div>
							<button class="nextback-items" id="next"
								style="color: white; background-color: black">등록완료</button>
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
	//달력에 오늘날짜 기본값 넣기
	var today=new Date();
	var year=today.getFullYear();
	var month=('0'+(today.getMonth()+1)).slice(-2);
	var day=('0'+today.getDate()).slice(-2);
	today=year+'-'+month+'-'+day
	$("#start-date").val(today);
	$("#end-date").val(today);

	// 증감 적용 위한 아이디 배열	=> 강사님 코드로 변경해보기
	var selectorArray = ["#lodging-bedroom","#lodging-bathroom","#lodging-singlebed","#lodging-doublebed"];

	selectorArray.forEach(element => {
		$(element).prev("#minus-button").click(function(){
			var cnt = $(element).val();
			if(cnt>0){
				$(element).val($(element).val()-1);
			}
		})
		$(element).next("#plus-button").click(function(){
			var cnt = $(element).val();
			$(element).val(Number(cnt)+1);	//Q3. 함수안에 jQuery 못쓰는지(꼭 변수로?), cnt자리에 $(파람명).val쓰니까 오류가 남
		})
	});

	$("#save-btn").click(function(){
		$("#form-register").attr("action","saveTemp4")
		$("#form-register").submit()
	});

	$("#prev").click(function() {
		history.back();
	})

	$("#next").click(function() {
		$("#form-register").attr("action","saveTemp4")
		$("#form-register").submit();
	})
</script>
