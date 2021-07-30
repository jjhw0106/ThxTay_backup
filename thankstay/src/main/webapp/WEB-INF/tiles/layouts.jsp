<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html> 
<html> 
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="preconnect" href="https://fonts.googleapis.com"><!-- 폰트설정 공통영역에 필수 -->
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
		<tiles:insertAttribute name="css" ignore="true" />
		<tiles:insertAttribute name="js" ignore="true" />
	</head> 
	<body>
		<div style="display : flex; flex-direction:column; height: 100%;">
			<header>
				<tiles:insertAttribute name="header" ignore="true" />
			</header>
			<div style="flex: 1;">
				<tiles:insertAttribute name="body" ignore="true" />
			</div>
			<footer>
				<tiles:insertAttribute name="footer" ignore="true" />
			</footer>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	</body>
</html>

