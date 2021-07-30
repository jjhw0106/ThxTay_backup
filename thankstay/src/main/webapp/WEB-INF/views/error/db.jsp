<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" isErrorPage="true" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>샘플 애플리케이션</title>
</head>
<body>
<div class="container my-3">
	<main>
		<div class="row mb-3">
			<div class="col">
				<div class="row mb-3">
					<div class="col">
						<div class="border p-2 bg-dark text-white fw-bold">오류 정보</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col">
				<div class="alert alert-danger" role="alert">
  					<h4 class="alert-heading">데이터베이스 엑세스 오류</h4>
  					<p>데이터베이스 작업중 오류가 발생하였습니다.</p>
  					<p>에러 메세지 : <%=exception.getMessage() %></p>
  					<hr>
  					<p class="mb-0">잠시 후 다시 시작해보시기 바랍니다.</p>
  					<p class="mb-0">오류가 개선되지 않으면 아래의 연락처로 연락바랍니다.</p>
				</div>
			</div>
		</div>
	</main>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

</script>
</body>
</html>