<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	/* 사이드바 래퍼 스타일 */
	#page-wrapper {
		padding-left: 250px;
	}

	#sidebar-wrapper {
		position: fixed;
		width: 250px;
		height: 100%;
		margin-left: -250px;
		background: #1B1B27;
		overflow-x: hidden;
		overflow-y: auto;
		border-right: 4px solid #c41dff;
	}

	#page-content-wrapper {
		width: 100%;
		padding: 20px;
	}
	/* 사이드바 스타일 */
	#index {
		color: white !important;
	}

	#index:hover {
		color: rgba(255, 255, 255, 0.2) !important;
	}

	.sidebar-nav, sidebar-image {
		width: 250px;
		margin: 0;
		padding: 0;
		list-style: none;
	}

	.sidebar-nav li {
		text-indent: 1.5em;
		line-height: 2.8em;
		margin-left: 20px;
	}

	.sidebar-nav li a {
		display: block;
		text-decoration: none;
		color: #999;
	}

	.sidebar-nav li a:hover {
		color: #fff;
		background: rgba(255, 255, 255, 0.2);
	}

	.sidebar-nav>.sidebar-brand {
		font-size: 1.3em;
		line-height: 3em;
	}

	.main ul {
		list-style: none;
		padding-left: 0px;
		font-size: 0.9em;
		color: #999;
	}

	.tableCSS thead {
		font-size: 1.1rem;
	}

	.tableCSS tbody {
		font-size: 0.9rem;
	}

	thead {
		background-color: #1B1B27 !important;
		color: white !important;
	}

	tbody td a {
		color: #1B1B27;
	}

	tbody td a:hover {
		color: #c41dff;
	}

	tr.pageing:hover {
		background-color: transparent !important;
	}

	/*			.page-item.active .page-link {
                    background-color: rgba(239, 144, 14) !important;
                    color: #ffffff !important;
                    border-color: none !important;
                }*/

	.page-link {
		color: #1B1B27 !important;
	}

	.page-item.active .page-link {
		z-index: 0 !important;
		background-color: #c41dff !important;
		border-color: #dee2e6 !important;
		color : white !important;
	}
</style>
<!-- 사이드바 -->
<div id="sidebar-wrapper">
	<nav>
		<ul class="sidebar-image">
			<li class="sidebar-brand" style="margin: 15px 0;">
				<a style="font-family: 'Lobster', cursive; font-size:40px; text-decoration-line: none; color: #FF5555; padding-left: 15%;" href="/admin/index">Thxtay</a>
			</li>
			<li class="main text-white d-flex align-items-end" style="padding-left: 10%; list-style: none;">
				<a href="/home" id="index">메인페이지로&nbsp;&nbsp;<i class="fas fa-sign-out-alt"></i></a>
			</li>
		</ul>
		<br>
		<ul class="sidebar-nav">
			<li class="main text-white">
				회원관리
				<ul>
					<li><a href="/admin/userList">일반 회원관리</a></li>
					<li><a href="/admin/deletedUserList">탈퇴한 회원관리</a></li>
				</ul>
			</li>
			<li class="main text-white">
				채팅관리
				<ul>
					<li><a href="#">채팅</a></li>
				</ul>
			</li>
			<li class="main text-white">
				숙소관리
				<ul>
					<li><a href="/admin/lodgingList">숙소관리</a></li>
					<li><a href="#">숙소 취소처리 관리</a></li>
				</ul>
			</li>
			<li class="main text-white">
				공통코드관리
				<ul>
					<li><a href="/admin/commonCodeList">공통코드</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</div>
<!-- /사이드바 -->