<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
/* CSS초기화 찾아보기 */


/* hostHeader CSS */
:root { -
	-text-color: #f0f4f5; -
	-background-color: #253343; -
	-accent-color: #d49466;
}



a {
	margin:0 auto;
	text-decoration: none;
	color: var(- -text-color);
}

.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #ffffff;
	padding: 8px 12px;
}

.navbar_logo {
	display: flex;
	align-items: center;
	font-size: 24px;
	color: white;
}


.navbar_logo i,a {
	color: purple;
	font-weight: bolder;
}

.navbar_menu {
	display: flex;
	list-style: none;
	margin:0 auto;
}

.navbar_menu li {
	padding: 8px 12px;
}

.navbar_menu li:hover {
	background-color: yellow;
	border-radius: 4px;
}

.navbar_icons {
	list-style: none;
	color: white;
	padding-left: 0px;
}

.navbar_icons li {
	padding: 8px 12px;
	margin-top:4px;
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
		flex-direction: column;
		align-items: flex-start;
		padding: 8px, 24px;
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
	/* hostHeader CSS */ 
</style>
<script src="https://kit.fontawesome.com/f421352664.js"
	crossorigin="anonymous"></script>
<header>
	<nav class="navbar">
		<div class="navbar_logo">
			<a href="home"><i class="fab fa-airbnb"></i></a>
		</div>
		<ul class="navbar_menu">
			<li><a href="">투데이</a></li>
			<li><a href="">메시지</a></li>
			<li><a href="">달력</a></li>
			<li><a href="">인사이트</a></li>
			<li><a href="">메뉴</a></li>
		</ul>
		<div class="navbar_icons">
			<a href=""><i class="fas fa-user-alt"></i></a>
		</div>
		<a href="#" class="navbar_toggleBtn"> <i class="fas fa-bars"
			style="display: block;"></i>
		</a>
	</nav>
</header>
