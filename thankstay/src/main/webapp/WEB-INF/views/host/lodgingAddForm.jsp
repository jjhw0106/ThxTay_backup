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

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/f421352664.js"
	crossorigin="anonymous"></script>
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
/* 공통 CSS */
.left-area {
	align-items: center;
	flex:1;
	background-image:
	url('data:image/webp;base64,UklGRoQCAABXRUJQVlA4WAoAAAAgAAAAHQAAHQAASUNDUAwCAAAAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD//1ZQOCBSAAAAUAMAnQEqHgAeAD7ZYKpOtiWooygKqsAbCWQAnTLfAiGYXfAA/uw/rDUG/ySry930W5TklUCdPGwZvhShkxmlA5XTMUKtCBVuol3YS6MrvY4AAA==');
	background-size: cover;
	color: white;
	display:flex;
	width: 50%;
}

.left-area p {
	margin:0 auto;
	font-size: 32px;
	margin: 0 auto;
}

.right-area {
	background-color: white;
	display:flex;
	flex:1;
	width: 50%;
	
}
.right-area-top{
	z-index: 2 !important;
    width: 50vw !important;
	
}

.right-area form {
	align-items:center;
}


.register-form{
	-webkit-box-align: center !important;
    -webkit-box-pack: justify !important;
    border: 1px solid transparent !important;
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
    box-shadow: rgb(34 34 34) 0px 0px 0px 2px !important;
    background-color: rgb(247, 247, 247) !important;
}

.type-choose-btn-wrapper{
	width: 100%;
	max-width:464px;
	margin-left: auto ;
    margin-right: auto ;
}
.type-choose-btn-wrapper{
	padding-top: 32px;

}

.type-choose-btn{
	width:100%;
	display:flex;
	border-width: 1px;
	border-radius: 10px;
	margin-bottom:20px;
}
.type-font-pos{}

.type-font{
	
	margin:16px 16px 16px 24px;
}

.type-img-pos{
	margin-left:auto;
}

.type-img{
	
}
.type-img img{
	width:55px;
	height:55px;
}


.wrapper {
	background-color: gray;
	display: flex;
	height: 100vh;
}
@media(min-width:744px){
.go-main{
display:inline !important;
font-size: 24px;
}
}

.go-main{
	position:fixed;
	z-index: 1;
	top:27px;
	left:32px;
	display:none;
}

.save-info{
	height:88px;
	display:flex;
	flex-direction:row-reverse;
	align-items:center;
}
.save-info-items{
	border-style:none;
	border-radius: 10px;
	font-weight:bold;
	font-size:13px;
	padding:5px 10px;
	margin:5px;
	text-align:center;
}

</style>


<title>새 숙소 등록하기</title>
</head>

<body>
	<div class="container-fluid"`>
		<div class="wrapper">
			<div class="left-area">
				<a href="home" class="go-main"><i class="fab fa-airbnb" style="color: white; padding: 10px;"></i></a>
				<p>숙소 정보를 입력해주세요!</p> 
			</div>
			<div class="right-area">
				<div>
					<form id="register-form" method="post" action="#">
					<div class = "right-area-top">
						<div class = "save-info">
							<div><button class="save-info-items">도움말</button></div>
							<div><button class="save-info-items">저장 및 나가기</button></div>
						</div>
					</div>
						<div class="type-choose-btn-wrapper">
							<button class="type-choose-btn" type="button" role="radio">
								<div class="type-font-pos">
									<div class="type-font">아파트</div>
								</div>
								
								<div class="type-img-pos">
									<div class="type-img">
										<img aria-hidden="true" 
										alt="" 
										src="https://a0.muscache.com/im/pictures/eadbcbdb-d57d-44d9-9a76-665a7a4d1cd7.jpg?im_w=240" 
										data-original-uri="https://a0.muscache.com/im/pictures/eadbcbdb-d57d-44d9-9a76-665a7a4d1cd7.jpg?im_w=240" 
										style="object-fit: cover; vertical-align: bottom; border-radius: 4px;">
									</div>
								</div>
							</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<script>
		
	</script>
</body>
</html>