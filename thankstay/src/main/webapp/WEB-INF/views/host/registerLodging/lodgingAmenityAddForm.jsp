<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
.amt-area {
	width: 500px;
	margin: 0 auto;
}

.amt-area .btn-wrapper {
	display: flex;
	align-items: stretch;
	margin-top: 20px;
	flex-flow: wrap;
	padding-bottom:10px;
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
.scroll-wrapper{
	overflow-y:scroll;
	-ms-overflow-style: none; 
} 
.scroll-wrapper::-webkit-scrollbar{
	display:none;
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
							<form id="save-data" method="post">
							<c:if test="${lodgingRegistering.status ne null }">
								<input type="hidden" name="no" value="${lodgingRegistering.no }">
								<input type="hidden" name="userNo" value="${lodgingRegistering.userNo }">
							</c:if>
							</form>
						</div>
					</div>
				</div>
				<div id="ldg-step1"
					style="height: 80%; display: flex; align-items: center; flex-direction: column; justify-content: center; ">
					<div class="scroll-wrapper">
						<form id="form-register" style="width: 50%;" method="post"
							novalidate="novalidate">
							<div class="amt-area">
								<div class="amt-category" >
									<h2 style="font-weight:bold">편의시설</h2>
									<div class="btn-wrapper">
									<c:forEach var="amenity" items="${amnTypes }">
										<label style="display:flex; "><input type="checkbox"/>${amenity.codeContent }</label>
									</c:forEach>
									</div>
								</div>
							</div>
							<div class="amt-area">
								<div class="amt-category"  id="checked-category">

								</div>
							</div>
						</form>
					</div>
				</div>

				<div style="height: 9%">
					<div class="progress" style="height: 3px;">
						<div class="progress-bar" role="progressbar" aria-valuenow="40"
							aria-valuemin="0" aria-valuemax="10"
							style="width: 64%; background-color: black; height: 2px;">
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
var checked=$('.amt-category :checked').parent('label').text();
$('.amt-category input').on("click",function(){
	//먼저 초기화
	$("#checked-category").empty();
	//클릭시마다 체크박스 each로 돌면서 append
	$(".amt-category input").each(function(){
		if($(this).prop('checked')==true){
			var codeContent = $(this).parent().text();
			$.ajax({
				url:"/lodgingAmenityAdd"
				,type:"post"
				,data:
				{"codeContent":codeContent}
				,dataType:"json"
				,success:function(retVal){
					$("#checked-category").append("<h5 style='border-top:1px black dotted; padding-top:20px; font-weight:bold'>"+codeContent+"</h5>")
					for(i in retVal){
						$("#checked-category").append("<div class='amt-category'><label class='btn-wrapper'><input type='checkbox'>"+retVal[i].codeContent+"</input></label></div>")
					}
				}
				,error:function(){
					alert(codeContent)
				}
			})
		}
	})

})

$("#save-btn").click(function(){
	/* #checked-category의 모든 input태그 중 checked를 선택해서 saveTemp3로 보내줄 것 */
	amenityList = new Array();
	$("#checked-category input").each(function(){
		if($(this).prop('checked')==true){
			amenityList.push($(this).parent().text())
		}
	})
	for(i in amenityList){
		$("#save-data").append("<input name='selected-items' type='hidden' value="+amenityList[i]+">")
	}
	$("#save-data").attr("action","saveTemp3").submit();
});

$("#prev").click(function() {
	history.back();
})

$("#next").click(function() {
	/* #checked-category의 모든 input태그 중 checked를 선택해서 saveTemp3로 보내줄 것 */
	amenityList = new Array();
	$("#checked-category input").each(function(){
		if($(this).prop('checked')==true){
			amenityList.push($(this).parent().text())
		}
	})
	for(i in amenityList){
		$("#save-data").append("<input name='selected-items' type='hidden' value="+amenityList[i]+">")
	}
	$("#save-data").attr("method","get").attr("action","lodgingImgAdd").submit();
})

</script>

