<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
/* CSS초기화 찾아보기 */

/* hostHeader CSS */
:root { -
	-text-color: #f0f4f5; -
	-background-color: #253343; -
	-accent-color: #d49466;
}

a, a:hover{
	margin: 0 auto;
	text-decoration: none;
	color: #222222;
	font-weight: bolder;
}

#navbar_ul li:hover {
	border-radious : 50%;
	background-color: #0000000f;
	color: #222222;
}

.navbar {
	border-bottom: 1px solid #e4e4e4 !important;
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #ffffff;
	padding: 14px 12px;
}

.navbar_logo {
	display: flex;
	align-items: center;
	font-size: 24px;
	color: white;
}

.navbar_logo i {
	color: #FF385C;
	font-size: 35px;
}

.navbar_menu {
	display: flex;
	list-style: none;
	margin: 0 auto;
}

.navbar_menu li {
	padding: 8px 12px;
	border-radius: 100px;
}


.navbar_icons {
	list-style: none;
	color: white;
	padding-left: 0px;
}

.navbar_icons li {
	padding: 8px 12px;
	margin-top: 4px;
	align-items: center;
}

.navbar_toggleBtn {
	display: none;
	position: absolute;
	right: 32px;
	font-size: 24px;
	color: fuchsia;
}
/* 미디어 쿼리  */
@media screen and (max-width: 768px) {
	.navbar {
		border-bottom: 1px solid #e4e4e4 !important;
		flex-direction: column;
		align-items: flex-start;
		padding: 8px 24px;
		position: relative;
		
	}
	.navbar_logo {
		display: flex;
		align-items: center;
		font-size: 24px;
		color: white;
	}
	.navbar_menu {
		display: none;
		flex-direction: column;
		align-items: center;
		width: 100%;
	}
	.navbar_menu li {
		width: 100%;
		text-align: center;
	}
	.navbar_icons {
		display: none;
		justify-content: center;
		width: 100%;
	}
	.navbar_toggleBtn {
		display: block;
	}
	.navbar_menu.active, .navbar_icons.active {
		display: flex;
	}
}
/* hostHeader CSS */
.btn-secondary{
	color: #222222;
	font-weight:bold;
	border: none;
	background-color:white;
}
</style>
<script src="https://kit.fontawesome.com/f421352664.js"
	crossorigin="anonymous"></script>
<header>
	<nav class="navbar">
		<div class="navbar_logo">
			<a href="/home"><i class="fab fa-airbnb"></i></a>
		</div>
		<ul id="navbar_ul" class="navbar_menu">
			<li><a href="">투데이</a></li>
			<li><a href="">메시지</a></li>
			<li><a href="">달력</a></li>
			<li><a href="/host/earnings">인사이트</a></li>
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton2" data-bs-toggle="dropdown"
					aria-expanded="false">메뉴</button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
					<li><a class="dropdown-item" href="/host/listings" style="z-index: 10">숙소</a></li>
					<li><a class="dropdown-item" href="/host/transactionhome" style="z-index: 10">대금수령내역</a></li>
					<li><a class="dropdown-item" href="#" style="z-index: 10">숙소등록하기</a></li>
				</ul>
			</div>
		</ul>
		<div class="navbar_icons">
			<a href=""><i class="fas fa-user-alt"></i></a>
		</div>
		<a href="#" class="navbar_toggleBtn"> <i class="fas fa-bars"
			style="display: block;"></i>
		</a>
	</nav>

</header>
