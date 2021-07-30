<%@ page pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg" id="header" style="background-color:rgba( 255, 255, 255, 0.5 );">
	<div class="container">
		<div class="navbar-brand">
			<div class="">
				<a style="font-family: 'Lobster', cursive; font-size:40px; text-decoration-line: none; color: #FF5555;" href="/home">Thxtay</a>
			</div>
		<!-- 이 부분이 airbnb에는 button으로 구현되어 있는 듯 하다: 아래와 엮어서 form으로 묶여있음 -->
		<!-- <ul class="nav justify-content-center">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">숙소</a></li>
				<li class="nav-item"><a class="nav-link" href="#">체험</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#"
					tabindex="-1" aria-disabled="true">온라인체험</a></li>
			</ul>
		 -->
		</div>
		<div>
			<ul class="nav justify-content-end">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="hosting">호스트 모드로 전환</a></li>
				<li class="nav-item"><a class="nav-link" href="#">국제화</a></li>
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown">로그인시</a>
					<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">메시지(채팅)</a></li>
						<li><a class="dropdown-item" href="#">여행(?)</a></li>
						<li><a class="dropdown-item" href="#">위시리스트</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">숙소관리</a></li>
						<li><a class="dropdown-item" href="#">계정(?)</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">도움말</a></li>
						<li><a class="dropdown-item" href="#">로그아웃</a></li>
					</ul>
				</li>
				<!--
				<c:if test="${empty LOGINED_USER }"> 로그아웃 상태 (?) 부분은 시간 상 구현가능여부 미정 -->
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown">로그아웃시</a>
					<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">로그인</a></li>
						<li><a class="dropdown-item" href="#">회원가입</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">도움말</a></li>					
						<li><a class="dropdown-item" href="#">숙소호스트 되기</a></li>
					</ul>
				</li>
				<!--</c:if>-->
			</ul>
		</div>
	</div>
</nav>