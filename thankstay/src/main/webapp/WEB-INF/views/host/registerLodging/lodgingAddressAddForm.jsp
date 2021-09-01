<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<script src="https://kit.fontawesome.com/f421352664.js"	crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- 카카오 지도 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ad83f287ea8866c42b5fa5c4bce63d20&libraries=services,clusterer"></script>

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
							<button id="save-btn2" class="save-info-items">저장 및 나가기</button>
						</div>
					</div>
				</div>
				<div id="ldg-step1"
					style="height: 80%; display: flex; align-items: center; flex-direction: column; justify-content: center">
					<form id="form-register" style="width: 50%;" method="post" novalidate="novalidate">
						<c:if test="${lodgingRegistering.status ne null }">
							<input type="hidden" name="no" value="${lodgingRegistering.no }">
							<input type="hidden" name="userNo" value="${lodgingRegistering.userNo }">
						</c:if>
						<!-- 8/12일 강의 참고해보기 -->
						<input type="hidden" name="name" value="${lodgingRegistering.name }">
						<input type="hidden" name="status" value="${lodgingRegistering.status }">
						<input type="hidden" name="lodgingTypeCode" value="${lodgingRegistering.lodgingTypeCode }">
						<input type="hidden" name="bedroom" value="${lodgingRegistering.bedroom }">
						<input type="hidden" name="bathroom" value="${lodgingRegistering.bathroom }">
						<input type="hidden" name="doublebed" value="${lodgingRegistering.doublebed }">
						<input type="hidden" name="singlebed" value="${lodgingRegistering.singlebed }">
						<input type="hidden" name="description" value="${lodgingRegistering.description }">

						<input id="lat" type="hidden" name="latitude" value="${lodgingRegistering.latitude }">
						<input id="lng" type="hidden" name="longitude" value="${lodgingRegistering.longitude }">



						<div class="mb-3" style="text-align: left">
							<label class="form-label">우편번호</label>
							<input type="text" class="form-control" style="width: 100%"	id="member_post" 
								   name="postNo" autocomplete="off" value="${lodgingRegistering.postNo }"	onclick="findAddr()" />
						</div>
						<div class="mb-3" style="text-align: left">
							<label class="form-label">주소</label>
							<input type="text" class="form-control" style="width: 100%" id="member_addr"
							name="address" autocomplete="off" value="${lodgingRegistering.address }" />
						</div>
						<div class="mb-3" style="text-align: left">
							<label class="form-label">상세주소</label>
							<input type="text" class="form-control" style="width: 100%"	id="lodging-address-rest"
							name="addressRest" autocomplete="off" value="${lodgingRegistering.addressRest }" />
						</div>

					</form>
				</div>

				<div style="height: 9%">
					<div class="progress" style="height: 3px;">
						<div class="progress-bar" role="progressbar" aria-valuenow="40"
							aria-valuemin="0" aria-valuemax="10"
							style="width: 48%; background-color: black; height: 2px;">
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
// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
function findAddr(){
	new daum.Postcode({
		oncomplete: function(data) {

			console.log(data);

			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var roadAddr = data.roadAddress; // 도로명 주소 변수
			var jibunAddr = data.jibunAddress; // 지번 주소 변수
			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('member_post').value = data.zonecode;
			if(roadAddr !== ''){
				document.getElementById("member_addr").value = roadAddr;
			}
			else if(jibunAddr !== ''){
				document.getElementById("member_addr").value = jibunAddr;
			}

			geocoder.addressSearch(roadAddr, function(result, status) {
				// 정상적으로 검색이 완료됐으면
				 if (status === kakao.maps.services.Status.OK) {
					var lng = new kakao.maps.LatLng(0,result[0].x).La;//경도
					var lat = new kakao.maps.LatLng(result[0].y,0).Ma;//위도
					document.getElementById("lat").value = lat;
					document.getElementById("lng").value = lng;
					alert("경도="+lng+", 위도="+lat)
				}
			});
		}
	}).open();
}
$("#save-btn2").click(function(){
	/* 클릭 시 숙소명의 값을 읽어와야 한다. */
	$("#form-register").attr("action","saveTemp")
	$("#form-register").submit()
});

$("#prev").click(function() {
	history.back();
})

$("#next").click(function() {
	$("#form-register").attr("method","get").attr("action","lodgingAmenityAdd").submit();
})
</script>