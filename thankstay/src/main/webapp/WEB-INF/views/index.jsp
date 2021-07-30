<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<style type="text/css">
.imgbox{
	 border-radius: 20%;
	 object-fit: cover;
	 width:200px;
	 height:200px;
}
#cover{
    height: 100%;
    width: 100%;
    background-image: !important;
    background-size: cover;
}
.sec{
    border-bottom: 1px solid #DDDDDD !important;
}
</style>
<div class="container">
	<!-- 이미지 전체화면+nav바 cover하게 조정해야 -->
	<div class="sec sec-1">
		<img id="cover" src="/resources/front.webp"/>
		<span class=semi-title>올림픽/패럴림픽 출전 선수와 함께하는 온라인 체험</span>
		<button class="btn btn-light">지금 둘러보기</button>
	</div>
	<div class="sec sec-2">
		<span class=semi-title>가까운 여행지 둘러보기</span>
		<!-- 대체 왜 여기부터 또 가로폭이 달라지는 것인가 -->
		<div class="row">
		서울 부산 양양 속초
		</div>
		<div class="row">
		고성군 완주군 대구 평양
		</div>
	</div>
	<div class="sec sec-3">
		<span class=semi-title>어디든 상관없이 떠나고 싶을 때 에어비앤비가 도와드립니다!</span>
		<button class="btn btn-dark">유연한 검색</button>
	</div>
	<!-- 정렬방법 생각하기... 이미지 사이즈 맞추는 방법도 -->
	<div class="sec sec-4">
		<span class=semi-title>어디에서나 여행은 살아보는거야!</span>
		<div class="row">
			<div class="col-3">
				<img class="imgbox box-sec4" src="/resources/main_sec4_1.webp"/>
				<p>자연생활을 만끽할 수 있는 숙소</p>
			</div>
			<div class="col-3">
				<img class="imgbox box-sec4" src="/resources/main_sec4_2.webp"/>
				독특한 공간
			</div>
			<div class="col-3">
				<img class="imgbox box-sec4" src="/resources/main_sec4_3.webp"/>
				집 전체
			</div>
			<div class="col-3">
				<img class="imgbox box-sec4" src="/resources/main_sec4_4.webp"/>
				반려동물 가능
			</div>
		</div>
	</div>
	<div class="sec sec-5">
		<span class=semi-title>특별한 즐길거리 찾아보기</span>
		<div class="row">
			<div class="col-4">
				<img class="imgbox box-sec5" src="/resources/main_sec4_1.webp"/>
				<span class="middle-case">추천 컬렉션: 여행 본능을 깨우는 체험</span>
				<span class="small-case">온라인 체험으로 집에서 랜선 여행을 즐기세요.</span>
			</div>
			<div class="col-4">
				<img class="imgbox box-sec5" src="/resources/main_sec4_2.webp"/>
				<span class="middle-case">온라인 체험</span>
				<span class="small-case">호스트와 실시간으로 소통하면서 액티비티를 즐겨보세요.</span>
			</div>
			<div class="col-4">
				<img class="imgbox box-sec5" src="/resources/main_sec4_3.webp"/>
				<span class="middle-case">체험</span>
				<span class="small-case">가까운 곳에서 즐길 수 있는 잊지 못할 체험을 찾아보세요.</span>
			</div>
		</div>
	</div>
	<div class="sec sec-6">
		<!-- 왜 같은 박스인데도 밖으로 튀어나가는거지...? -->
		<img class="cover box-sec6" src="/resources/main_bottom.webp"/>
		<span class="semi-title">호스팅 시작하기</span>
		<span class="middle-case">숙소를 공유하여 부수입을 올리고 새로운 가능성을 만나세요</span>
		<button class="btn btn-light">자세히 알아보기</button>
	</div>
</div>