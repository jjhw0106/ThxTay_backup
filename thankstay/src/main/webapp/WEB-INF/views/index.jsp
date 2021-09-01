<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<style type="text/css">
.imgbox {
	border-radius: 3%;
	object-fit: cover;
	width: 300px;
	height: 300px;
}

.container-fluid {
	background-image: url('/resources/images/mains/front.webp');
	background-size: cover;
	height: 800px;
}

.semi-title {
	margin-top: 20px;
	margin-bottom: 20px;
	font-size: 28px;
	font-weight: 600;
}

.region-image {
	float: left;
	width: 80px;
	height: 80px;
	margin-right: 10px;
	object: cover;
	border-radius: 15%;
}

.region1 {
	position: relative;
}

.region2 {
	padding-top: 15px;
	display: block;
	top: 100%;
}

.suggestion {
	margin: 5px;
	font-size: 17px;
}

.imgbox-big {
	width: 400px;
	height: 400px;
	border-radius: 3%;
}

.banner-img {
	width: 100%;
	height: 400px;
	object-fit: cover;
	border-radius: 10px;
}

.banner-text {
	position: absolute;
	top: 40%;
	left: 3%;
	color: white;
}

.banner-title {
	margin-bottom: 3px;
	font-size: 30px;
	font-weight: 600;
}

.banner-content {
	margin-bottom: 15px;
	font-size: 18px;
}

.form-label {
	color: white !important;
}
/*
.banner-wrapper{
	border: 1px outset black;
	text-align: center;
	width: 100%;
	height: 300px !important;
	overflow: hidden;
	margin: 0 auto;
}
.banner{
	position: relative !important;
	padding-top: 100%; /* 1:1 ration
	overflow: hidden;
	width: 100% !important;
}
.banner-img{
	position: absolute !important;
	top:25%; left:25%;
	transform: translate(-25%, -75%);
}
*/
</style>
<!-- 이미지 전체화면+nav바 cover하게 조정해야 -->
<div class="container-fluid">
	<div class="container">
		<form action="explore/list">
			<div class="row label-color" style="justify-content: center; padding:15px">
				<div class="col-3">
					<div class="input-box-1">
						<label class="form-label">위치</label> <input type="text"
							class="form-control" value="${location }" name="location"
							placeholder="어디로 여행가세요" />
					</div>
				</div>
				<div class="col-4">
					<div class="row">
						<div class="col-6">
							<div class="input-box-2">
								<label class="form-label">체크인</label> <input type="text"
									class="form-control" value="${checkin}" name="checkin"
									placeholder="날짜입력" />
							</div>
						</div>
						<div class="col-6">
							<div class="input-box-3">
								<label class="form-label">체크아웃</label> <input type="text"
									class="form-control" value="${checkout}" name="checkout"
									placeholder="날짜입력" />
							</div>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="input-box-4">
						<label class="form-label">인원</label> <input type="text"
							class="form-control" name="guests" placeholder="게스트 추가" />
						<ul class="dropdown-menu">
							<li class="dropdown-item"></li>
						</ul>
					</div>
				</div>
				<div class="col-1">
					<button type="submit" style="margin-top: 32px;"
						class="btn btn-primary">검색</button>
				</div>
			</div>
		</form>
		<div class="content text-left"
			style="margin-top: 310px; text-shadow: 1px 1px 5px black;">
			<h1 class="text-white mb-3" style="">올림픽/패럴림픽 출전 선수와 함께하는 온라인 체험</h1>
			<button class="btn btn-light">지금 둘러보기</button>
		</div>
	</div>
</div>
<!-- 		<img id="cover" src="/resources/images/mains/front.webp"/>
		<span class=semi-title>올림픽/패럴림픽 출전 선수와 함께하는 온라인 체험</span>
		<button class="btn btn-light">지금 둘러보기</button> -->
<div class="container">
	<div class="sec sec-2">
		<div class="semi-title">가까운 여행지 둘러보기</div>
		<div class="component mb-3 justify-content-center align-items-center">
			<!-- 대체 왜 여기부터 또 가로폭이 달라지는 것인가 -->
			<div class="row mb-3">
				<div class="col-3">
					<div class="region align-items-center">
						<img class="region-image" src="/resources/images/mains/seoul.webp">
						<div class="region-1">
							<span class="region2"><b>서울</b><br />차로 15분 거리</span>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="region align-items-center">
						<img class="region-image" src="/resources/images/mains/busan.webp">
						<div class="region-1">
							<span class="region2"><b>부산</b><br />차로 5시간 거리</span>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="region align-items-center">
						<img class="region-image" src="/resources/images/mains/yangy.webp">
						<div class="region-1">
							<span class="region2"><b>양양군</b><br />차로 2.5시간 거리</span>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="region align-items-center">
						<img class="region-image"
							src="/resources/images/mains/sockcho.webp">
						<div class="region-1">
							<span class="region2"><b>속초시</b><br />차로 2.5시간 거리</span>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-3">
					<div class="region align-items-center">
						<img class="region-image" src="/resources/images/mains/daegu.webp">
						<div class="region-1">
							<span class="region2"><b>대구</b><br />차로 4시간 거리</span>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="region align-items-center">
						<img class="region-image" src="/resources/images/mains/wanju.webp">
						<div class="region-1">
							<span class="region2"><b>완주군</b><br />차로 3시간 거리</span>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="region align-items-center">
						<img class="region-image"
							src="/resources/images/mains/jeonju.webp">
						<div class="region-1">
							<span class="region2"><b>전주시</b><br />차로 3시간 거리</span>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="region align-items-center">
						<img class="region-image"
							src="/resources/images/mains/gosung.webp">
						<div class="region-1">
							<span class="region2"><b>고성군</b><br />차로 3시간 거리</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="sec sec-4">
		<div class=semi-title>어디에서나, 여행은 살아보는거야!</div>
		<div class="row">
			<div class="col-3">
				<img class="imgbox box-sec4"
					src="resources/images/mains/main_sec4_1.webp" />
				<div class="suggestion">
					<b>자연생활을 만끽할 수 있는 숙소</b>
				</div>
			</div>
			<div class="col-3">
				<img class="imgbox box-sec4"
					src="resources/images/mains/main_sec4_2.webp" />
				<div class="suggestion">
					<b>독특한 공간</b>
				</div>
			</div>
			<div class="col-3">
				<img class="imgbox box-sec4"
					src="resources/images/mains/main_sec4_3.webp" />
				<div class="suggestion">
					<b>집 전체</b>
				</div>
			</div>
			<div class="col-3">
				<img class="imgbox box-sec4"
					src="resources/images/mains/main_sec4_4.webp" />
				<div class="suggestion">
					<b>반려동물 가능</b>
				</div>
			</div>
		</div>
	</div>
	<div class="sec sec-5">
		<div class=semi-title>특별한 즐길거리 찾아보기</div>
		<div class="row mb-3">
			<div class="col-4">
				<img class="imgbox-big" src="/resources/images/mains/activity3.jpg" />
				<div class="middle-case mt-2">
					<b>추천 컬렉션: 여행 본능을 깨우는 체험</b>
				</div>
				<div class="small-case">온라인 체험으로 집에서 랜선 여행을 즐기세요.</div>
			</div>
			<div class="col-4">
				<img class="imgbox-big" src="/resources/images/mains/activity1.webp" />
				<div class="middle-case mt-2">
					<b>온라인 체험</b>
				</div>
				<div class="small-case">호스트와 실시간으로 소통하면서 액티비티를 즐겨보세요.</div>
			</div>
			<div class="col-4">
				<img class="imgbox-big" src="/resources/images/mains/activity2.webp" />
				<div class="middle-case mt-2">
					<b>체험</b>
				</div>
				<div class="small-case">가까운 곳에서 즐길 수 있는 잊지 못할 체험을 찾아보세요.</div>
			</div>
		</div>
	</div>
	<div class="sec sec-6 mt-5 mb-5">
		<div class="wapper" style="position: relative;">
			<!-- 왜 같은 박스인데도 밖으로 튀어나가는거지...? -->
			<img class="banner-img"
				src="/resources/images/mains/main_bottom.webp" />
			<div class="banner-text">
				<div class="banner-title">호스팅 시작하기</div>
				<div class="banner-content">숙소를 공유하여 부수입을 올리고 새로운 가능성을 만나세요</div>
				<button class="btn btn-light">
					<b>자세히 알아보기</b>
				</button>
			</div>
		</div>
	</div>
</div>
