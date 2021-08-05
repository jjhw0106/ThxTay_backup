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
.left-area {
  flex:1;
  width:50%;
  align-items: center;
  color: white;
  
	background-image:
		url('data:image/webp;base64,UklGRoQCAABXRUJQVlA4WAoAAAAgAAAAHQAAHQAASUNDUAwCAAAAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD//1ZQOCBSAAAAUAMAnQEqHgAeAD7ZYKpOtiWooygKqsAbCWQAnTLfAiGYXfAA/uw/rDUG/ySry930W5TklUCdPGwZvhShkxmlA5XTMUKtCBVuol3YS6MrvY4AAA==');
	background-size: cover;
}
  .left-area p{
    margin: 0 auto;
    font-size: 32px;
  }

  .right-area{
    flex:1;
    width:50%;
    background-color:white;
    align-items:center;
     
}
.right-area form{
}
  .wrapper{
    display: flex;
    height:100vh;
    background-color: gray;
  }
</style>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>새 숙소 등록하기</title>
</head>

<body>
  <div class="container-fluid"`>
    <div class="wrapper">
      <div class="left-area">
        <p>숙소 정보를 입력해주세요!</p>
      </div>
      <div class="right-area">
      	<div>
        <form id="register-form" method="post" action="#">
          <div>
            <label class="form-label">숙소명</label>
            <input type="text" class="form-control" id="lodging-name" name="lodgingName">
          </div>
          <div>
            <label class="form-label">숙소명</label>
            <input type="text" class="form-control" id="lodging-name" name="lodgingName">
          </div>
          <div>
            <label class="form-label">숙소명</label>
            <input type="text" class="form-control" id="lodging-name" name="lodgingName">
          </div>
          <div>
            <label class="form-label">숙소명</label>
            <input type="text" class="form-control" id="lodging-name" name="lodgingName">
          </div>
          <div>
            <label class="form-label">숙소명</label>
            <input type="text" class="form-control" id="lodging-name" name="lodgingName">
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