<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<script src="https://kit.fontawesome.com/f421352664.js"	crossorigin="anonymous"></script>

<!-- 카카오 지도 -->
<!-- <script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ad83f287ea8866c42b5fa5c4bce63d20&libraries=services,clusterer"></script>
 -->
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
.amt-area {
	width: 500px;
	margin: 0 auto;
}

.amt-area .btn-wrapper {
	display: flex;
	align-items: stretch;
	margin-top: 20px;
	flex-flow: wrap;
}

.amt-area .amt-category .btn-wrapper label {
	width: 50%;
	padding: 10px 0;
	vertical-align: middle;
}

.amt-area .amt-category .btn-wrapper input[type="checkbox"] {
	width: 22px;
	margin-top: 5px;
	padding: auto 0;
	vertical-align: middle;
}

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

#photo-zone {	
	width: 80%;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-evenly;
}

#photo-zone .boxdesign {
	/* transform: translate(0px, -20px); */
	/* width: 450px;
	height: 350px; */
	/* 노트북 */
	/* width: 250px;
	height: 200px; */
	width:30vh;
	height:30vh;
	margin: 10px;
	text-align: center;
 	border: gray solid 1px; 
}

#photo-zone .boxdesign img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>


<title>새 숙소 등록하기</title>

<div class="container-fluid">
	<div class="wrapper">
		<div class="left-area">
			<a href="home" class="go-main"><i class="fab fa-airbnb"
				style="color: white; padding: 10px;"></i></a>
			<p>숙소의 사진을 등록해주세요</p>
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
					<div id="photo-zone" >
						<div class="boxdesign"><img src="${imgList[0].uri }" alt="사진을 등록해주세요!"></div>
						<div class="boxdesign"><img src="${imgList[1].uri }" alt="사진을 등록해주세요!"></div>
						<div class="boxdesign"><img src="${imgList[2].uri }" alt="사진을 등록해주세요!"></div>
						<div class="boxdesign"><img src="${imgList[3].uri }" alt="사진을 등록해주세요!"></div>
					</div>
					<!-- 파일 업로드  단수-->
					<form id="form-upfile" style="margin-top:20px; " method="post" action="lodgingImgAdd" enctype="multipart/form-data">
						<div class="row">
							<div class="col-12 mb-1 d-flex justify-content-between">
								<span>숙소사진을 첨부하세요 </span>
							</div>
							<div class="col-12">
								<div class="mb-3">
									<div class="input-group">
										<input type="file" id="form-upload" class="form-control" name="upfile"
											aria-label="Upload">
										<button id="file-remove" class="btn btn-outline-danger" type="button">
											<i class='fas fa-minus'></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="text-end">
							<button type="button" id="enroll" class="btn btn-primary">등록</button>
						</div>
					</form>
					<!-- 파일 업로드  복수-->
					<!-- <form id="form-upfile" style="width: 50%;" method="post"
						novalidate="novalidate" enctype="multipart/form-data">
						<div class="row">
							<div class="col-12 mb-1 d-flex justify-content-between">
								<span>숙소사진을 첨부하세요 </span> <span><button type="button"
										class="btn btn-outline-primary btn-sm">
										필드추가 <i class='fas fa-plus'></i>
									</button></span>
							</div>
							<div class="col-12">
								<div class="mb-3">
									<div class="input-group">
										<input type="file" class="form-control" name="upfiles"
											aria-label="Upload">
										<button class="btn btn-outline-danger" type="button">
											<i class='fas fa-minus'></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="text-end">
							<button type="submit" class="btn btn-primary">등록</button>
						</div>
					</form> -->
				</div>

				<!-- 뒤로가기-다음페이지가기 -->
				<div style="height: 9%">
					<div class="progress" style="height: 3px;">
						<div class="progress-bar" role="progressbar" aria-valuenow="40"
							aria-valuemin="0" aria-valuemax="10"
							style="width: 80%; background-color: black; height: 2px;">
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
var imgIdx=0;
for(i=0; i<4; i++){
	// 사진 추가 시 빈 칸 부터 표현해주기 위한 코드
	// ($(".boxdesign img[src$='.jpg']")[i]!=undefined) ? imgIdx++ : break;	//=>3항 연산자는 값이 반환돼야 한다.
	// img태그의 src에 .jpg로 끝나는 경로가 있는 요소의 값을 반환
	if($(".boxdesign img[src$='.jpg']")[i]!=undefined){
		imgIdx++;
	}else{
		break;
	}
}



$("#form-upfile #enroll").click(function(){
	if($("#form-upfile input").val()==''){
		alert("등록할 사진을 선택해주세요");
		return false;
	}
	/* ajax */
	//타입이 파일인 input 박스는 기본적으로 복수 파일 등록가능
	var formData=new FormData();
	var file = $("#form-upload")[0].files[0]

	formData.append("picture", file);

	$.ajax({
		url:"/lodgingImgAdd"
		,type:"POST"
		,enctype:"multipart/form-data"
		,dataType:"json"
		,processData:false
		,contentType:false
		,data:formData
		,success:function(retVal){
			var imgList=retVal;
			$("#photo-zone").find("img:nth("+imgIdx%4+")").attr("src", URL.createObjectURL(file));
			imgIdx++;
		}
		,error:function(){
			alert("접속실패")
		}
	})
})

$("#file-remove").click(function(){
	$("#form-upfile input").val('');
})

/* 이미지 add에선 의미가 없음 */
$("#save-btn2").click(function(){
	/* 클릭 시 숙소명의 값을 읽어와야 한다. */
	$("#form-register").attr("action","saveTemp")
	$("#form-register").submit()
});

$("#prev").click(function() {
	history.back();
})

$("#next").click(function() {
	location.href="lodgingRegister"
})

$("input:checked").each(function(i){
	list.push($(this).val());
})
</script>
