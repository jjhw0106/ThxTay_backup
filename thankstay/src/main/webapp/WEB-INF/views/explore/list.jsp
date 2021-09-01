<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<style type="text/css">
#left-box{
	padding-right: 30px;
	width: 45%;
}
#right-box{
	width: 55%;
}
.list-box{
	padding-top: 5px;
	padding-bottom: 5px;
	border-bottom-width: 1px !important;
    border-bottom-style: solid !important;
    border-bottom-color: #EBEBEB !important;
    height: 220px;
}
.list-title{
	margin-top: 40px;
}
.spacing{
	border-bottom-width: 1px !important;
    border-bottom-style: solid !important;
    border-bottom-color: #EBEBEB !important;
}
.option-button{
	<!--나중에 쳐낼 부분은 쳐내자-->
    text-align: center !important;
    border: 1px solid black !important;
    background-color: #FFFFFF !important;
    outline: none !important;
    padding: 0px !important;
    margin: 0px !important;
    border-color: #B0B0B0 !important;
    border-radius: 30px !important;
    color: #222222 !important;
    font-family: Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif !important;
    position: relative !important;
    padding: 8px 16px !important;
    font-size: 14px !important;
    line-height: 16px !important;
}
.option-button:hover{
    border-color: black !important;

}
.plus{
	border-top: 1px solid #DDDDDD !important;
}
.search-summary{
	font-size: 15px;
	font-weight: lighter;
	margin:0px;
}
.search-region{
	font-size: 25px;
	font-weight: 800;
	
}
.notice-travel{
	font-size: 15px;
	padding-top: 25px;
}
.notice-travel a { 
	text-decoration:underline;
	color:black;
} 
/*
.carousel-item img{
	border-radius: 30px;
	overflow: hidden;
}*/
.image-wrapper{
	width: 300px;
	height: 200px;
	margin-right: 20px;
	float:left;
}
.list-box-title{
}
.list-box-title-text{
    flex: 1 !important;
    margin-right: 16px !important;
	float:left;
}
.lodging-summary{
	font-size: 15px;
	font-weight: lighter;
	margin:0px;
}
.lodging-name{
	margin:0px;
	font-size: 20px;
	font-style: bold;
}
.share{
	appearance: none !important;
    display: inline-block !important;
    border-radius: 50% !important;
    border: none !important;
    outline: none !important;
    margin: 0px !important;
    padding: 0px !important;
    color: rgb(34, 34, 34) !important;
    cursor: pointer !important;
    touch-action: manipulation !important;
    position: relative !important;
    background: transparent !important;
    transition: -ms-transform 0.25s ease 0s, -webkit-transform 0.25s ease 0s, transform 0.25s ease 0s !important;
}
.zzim{
	appearance: none !important;
    display: inline-block !important;
    border-radius: 50% !important;
    border: none !important;
    margin: 0px !important;
    padding: 0px !important;
    color: rgb(34, 34, 34) !important;
    cursor: pointer !important;
    touch-action: manipulation !important;
    position: relative !important;
    background: transparent !important;
    transition: -ms-transform 0.25s ease 0s, -webkit-transform 0.25s ease 0s, transform 0.25s ease 0s !important;
}
.text-wrapper{
	position: relative;
}
.review-info{
	margin-top: auto;
}
.price-info{
	margin-top: auto;
}
.price-info .discount{
	margin-bottom: 0;
	font-size: 1.15rem;
}
.price-info .total{
	font-size: 0.9rem;
	line-height: 1rem;
	text-decoration: underline;
}
.pagination{
	padding-top: 25px;
}
.pagination .summary{
	font-size: 13px;
	text-align:center;
	margin: auto;
	justify-content: center;
	align-content: center;
}
h5.modal-title{
	justify-content: center;
}
.modal-body .wishlist{
	padding: 10px;
}
.modal-body .wishlist a{
	text-decoration: none;
}	
.modal-body .wishlist .thumbnail{
	width: 60px; height: 60px; border-radius: 10px; background-color: black;
	margin-right: 15px;
}

.recent{
	vertical-align: bottom;
	display: flex;
}

.recent .row{
	display: flex;
	padding: 0 35px 0 0;
}
.recent .recent-title{
	font-size: 25px;
	font-weight: 800;
	margin: 10px 0 10px 0;
	display: flex;
}
.recent .arrow{
	justify-content: flex-end;
}
.recent .arrow i{
	object-fit: cover;
	width: 35px;
	height: 35px;
	border-radius: 20px;
	align-items: center;
	background-color: #efefef;
	justify-content: center;
}
.recent .row .col-4 .card{
	width: 14.5rem; justify-content: space-between;
}
.card-body .lodge-review{
	font-size: 1rem;
	line-height: 1.3rem;
}
.card-body .lodge-type{
	font-size: 1rem;
	line-height: 1.3rem;
}
.card-body .lodge-name{
	font-size: 1.2rem;
	line-height: 1.6rem;
	font-weight: 400;
}
.card-body .lodge-price{
	font-size: 1rem;
	line-height: 1.4rem;
}

.gray-text{
	font-size: 14px;
	color: #555;
}
.bi-star-fill{
	font-size: 13px;
	color: #ff5555;
	vertical-align: center;
}
.bi-suit-heart-fill{
	font-size: 16px;
	color: #ff5555;
}
.bi-wishlist-fill{
	color: #ff5555;
}
.marker{
	border-radius:35px;
	position:relative;
	background-color: #fff;
	color: black;
	padding: 3px 10px 3px 10px;
	box-shadow: 1px 1px 1px #aaa;
	font-weight: 700;
	font-size: 1rem;
}
.marker:hover{
	transform:scale(1.05);
	transition: 0.05s;
	z-index: 0;
}
</style>
<div class="container-fluid">
	<div class="row ms-3">
		<div id="left-box">
			<!-- 300개 이상의 숙소·8월 16일-8월 18일 -->
			<div class="list-title">
				<p class="search-summary">숙박 <span class="totalResult"></span>건 · <span class="searchDate"></span> · 게스트 ${param.guests }명</p>
				<p class="search-region"><span class="keyword">${param.location }</span>에서 선택한 지역"의 숙소</p>
			</div>
			<!-- dropbox와 pop-up이 섞여있음 -->
			<div class="options-button-box">
				<button class="option-button">취소가능</button><!-- 각각 기능이랑 설명 추가 -->
				<button class="option-button">숙소유형</button>
				<button class="option-button">요금</button>
				<button class="option-button" id="option-immApproval">즉시 예약</button>
				<button class="option-button" data-bs-toggle="modal" data-bs-target="#moreOptions">필터 추가하기</button>
			</div>
			<form id="pageFilters">
				<div id="immApproval-window"class="shadow-lg p-3 mb-5 filter-box" style="display:none;">
					<div class="p-4">
						<div class="justify-content-between">
							<div class="filter-title">즉시예약</div>
							<div class="form-check form-switch">
			  					<input class="form-check-input" type="checkbox" id="immApproval">
			  					<label class="form-check-label" for="immApproval">호스트의 승인을 기다릴 필요 없이 예약할 수 있는 숙소</label>
							</div>
							<button type="button" class="doFilter btn btn-dark">적용하기</button>
						</div>
					</div>	
				</div>
			</form>
			<div class="notice-travel">
				<p><span>예약하기 전에 코로나19 관련 여행 제한 사항을 확인하세요. </span><a href="#">자세히 알아보기</a></p>
			</div>
			<!-- 이것이 본론이다! -->
			<div class="spacing">
			</div>
			<script id="template" type="x-tmpl-mustache">
			<div class="list-box">
				<div class="image-wrapper">
					<div id="carouselControls" class="carousel slide" data-bs-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active" data-bs-interval="1000">
								<img src="{{imageList1}}" class="d-block w-100" alt="">
							</div>
							<div class="carousel-item" data-bs-interval="1000">
								<img src="{{imageList2}}" class="d-block w-100" alt="">
							</div>
							<div class="carousel-item" data-bs-interval="1000">
								<img src="{{imageList3}}" class="d-block w-100" alt="">
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
				<div class="text-wrapper">
					<div class="list-box-title" style="display:flex; padding-top: 3px;">
						<div id="list-box-title-text">
							<div class="lodging-summary"><span class="location"></span>의 <span>게스트용 별채 전체</span></div>
							<div class="lodging-name">{{name}}<br/></div>
						</div>
						<div class="list-box-title-zz" style="margin-left:auto;">
							<a href="#"><button class="share" style="text-align:right;"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
 							<path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
							</svg></button></a>
							<button class="zzim"><i" class="bi bi-suit-heart"></i></button>
						</div>
					</div>
					<div class="list-box-spacer" style="width: 20px; height: 1px; background: #aaaaaa; margin: 0px; padding:0px; display: inline-block;">
					</div>
					<div class="list-box-detail" data="2줄 공간" style="margin-top:10px">
						<div class="first-row">
							<span>{{maxGuest}}</span><span>명</span><span> · </span>
							<span>침실</span><span>{{bedroom}}개</span><span> · </span>
							<span>침대</span><span>{{totalBed}}개</span><span> · </span>
							<span>욕실</span>1<span>{{bathroom}}개</span>
						</div>
						<div class="second-row">
							{{#lodging}}
							<span>{{amenityList}}</span><span> · </span>
							{{/lodging}}
							<span>주방</span><span> · </span>
							<span>에어컨</span><span> · </span>
							<span>무선인터넷</span><span> · </span>
							<span>세탁기</span>
						</div>
					</div>
					<div class="dynamic-info" style="display:flex; margin-top:15px">
						<div class="review-info">
							<i class="bi bi-star-fill"></i>
							<span>{{reviewAverage}}</span>
							<span class="gray-text">(후기 {{reviewCount}}개)</span>
						</div>
						<div class="price-info" style="margin-left:auto; text-align:right;">
							<span class="discount"><b>₩{{perDayFee}}</b>/박</span><br/>
							<span class="total">총액 ₩{{totalFee}}</span>
						</div>
					</div>
				</div>
			</div>
			</script>
			<!-- 중앙정렬 -->
			<div class="pagination">
				<div class="page">
				</div>
				<div class="summary">
				</div>
			</div>
			<!-- <div class="plus recent-visit">
				최근조회
			</div>
			<div class="plus reschedule">
				날짜조정
			</div>-->
			<div class="recent">
				<div class="row" style="">
					<div class="recent-title">
						최근 조회한 목록
						<div class="arrow">
							<!-- <i class="bi bi-chevron-left"></i><i class="bi bi-chevron-right"></i> -->
						</div>
					</div>
					<div class="col-4">
						<div class="card">
						  <img src="/resources/images/lodgings/10003_6.jpg" class="card-img-top" alt="...">
						  <div class="card-body">
						  	<div class="lodge-review"><i class="bi bi-star-fill"></i> 4.81<span class="gray-text">(후기 19개)</span></div>
						  	<div class="lodge-type">종로구의 호텔 전체</div>
						    <div class="lodge-name">OO호텔 401호</div>
						    <div class="lodge-price"><b>₩104000</b>/박</div>
						  </div>
						</div>
					</div>
					<div class="col-4">
						<div class="card">
						  <img src="/resources/images/lodgings/10003_6.jpg" class="card-img-top" alt="...">
						  <div class="card-body">
						  	<div class="lodge-review"><i class="bi bi-star-fill"></i> 4.81<span class="gray-text">(후기 19개)</span></div>
						  	<div class="lodge-type">종로구의 호텔 전체</div>
						    <div class="lodge-name">OO호텔 401호</div>
						    <div class="lodge-price"><b>₩104000</b>/박</div>
						  </div>
						</div>
					</div>
					<div class="col-4">
						<div class="card">
						  <img src="/resources/images/lodgings/10003_6.jpg" class="card-img-top" alt="...">
						  <div class="card-body">
						  	<div class="lodge-review"><i class="bi bi-star-fill"></i> 4.81<span class="gray-text">(후기 19개)</span></div>
						  	<div class="lodge-type">종로구의 호텔 전체</div>
						    <div class="lodge-name">OO호텔 401호</div>
						    <div class="lodge-price"><b>₩104000</b>/박</div>
						  </div>
						</div>
					</div>
				</div>	
			</div>
		</div>
		<!-- 이 부분 화면 스크롤 마다 어떻게...? -->
		<div id="right-box" style="position: relative;">
			<div id="map" style="width:100%; height:1000px;"></div>
			<div id="lodging-popUp" style="position: absolute; top: 10px; left: 30px; z-index: -1; width: 400px; heigth: 200px;">
				<div class="card card-primary">
					<div class="card-body">
						<div class="lodging-review"></div>
						<span id="lodging-name"></span>
						<small id="store-description"></small></div>
					</div>
					<div class="card-footer text-end">
						<button id="btn-close-modal" class="btn btn-outline-dark btn-sm py-0">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ------------------------------------------편의시설 체크용 모달----------------------------------------------- -->
<div class="modal fade" id="moreOptions" tabindex="-1" aria-labelledby="moreOptionsModal" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="moreOptionsModal">필터 추가하기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="option option-beds">
        	<div class="option-title">침실과 침대</div>
        	<ul>
				<li>침대 수</li>        	
				<li>침실 수</li>        	
				<li>욕실 수</li>        	
        	</ul>
        </div>
        <div class="option option-amenities">
        	<div class="option-title">편의시설</div><!-- 은혜님한테 도움! -->
        	<ul>
				<li>침대 수</li>        	
				<li>침실 수</li>        	
				<li>욕실 수</li>        	
        	</ul>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-dark-secondary">전체해제</button>
        <button type="button" class="btn btn-dark">숙소 <span>10</span>개 더 보기</button>
      </div>
    </div>
  </div>
</div>

<!-- -----------------------------------------위시리스트용 모달--------------------------------------------------------- -->
<div class="modal fade" id="wishlist" tabindex="-1" aria-labelledby="wishlistModal" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h5 class="modal-title center" style="justify-content: center; text-align:center;" id="wishlistModal">위시리스트</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	<div class="wishlist-wrapper">
	       	<div class="wishlist">
	       		 <a href="#addWishlistModal" data-bs-target="#addWishlistModal" data-bs-toggle="modal" data-bs-dismiss="modal">
		       		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-plus-lg thumbnail" style="padding: 15px;" viewBox="0 0 16 16">
	  <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
	</svg>
		       		<span>새로운 위시리스트 만들기</span>
	        	</a>
	        </div>
       	</div>
      </div>
    </div>
  </div>
</div>
<!------------------새 위시리스트 추가하기---------------------- -->
<div class="modal fade" id="addWishlistModal" aria-hidden="true" aria-labelledby="addWishlistModal" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">위시리스트 이름</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form id="newWishName">
	      <div class="modal-body">
	        <div class="mb-3">
			    <label for="wishlistNameInput" class="form-label">이름</label>
			    <input type="text" class="form-control" id="wishlistNameInput" value="" aria-describedby="wishlist-name"/>
			    <div id="wishlist-condition" class="form-text">최대 30자</div>
			  </div>
	      </div>
	      <div class="modal-footer">
	      	<!-- data-bs-target="#wishlist" 모달에 바로 업데이트 하고 싶었는데 또륵-->
	        <button class="btn btn-dark" id="submitName" data-bs-toggle="modal" data-bs-dismiss="modal">새로 만들기</button>
	      </div>
      </form>
    </div>
  </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45232a8f6f95ec00ae6343c8933658fb&libraries=services,clusterer,drawing"></script>
<script src="https://unpkg.com/mustache@latest"></script>
<script type="text/javascript">

//검색용 변수들
var south;
var north;
var west;
var east;
var checkIn = '${param.checkin}';
var checkOut = '${param.checkout}'; 
var guests;
var locations = '${param.location}';
var immApproval;

//지도 중심좌표의 동 이름
var keyword;

var wishlistModal = new bootstrap.Modal(document.getElementById('wishlist'));
var emailModal = new bootstrap.Modal(document.getElementById("loginRegisterModal"));

$("#left-box").on('click', '.zzim', function(event){
	var isLogined = "${not empty LOGINED_USER ? 'true' : 'false'}" //el을 여기서 쓸 수 있다? 자바스크립트에서 el이나 jstl을 쓸 수는 없음. 다 실행되고 난 html컨텐츠가 내려

	if(isLogined=='true'){			
		$('#wishlist').removeAttr("data-lodging-no");	//왜 지워줬는데도 계속 남아있는거지 -- 질문
		var lodgeNo = $(this).parents(".list-box").data("lodging-no");
		$('#wishlist').attr("data-lodging-no", lodgeNo); //새로 들어가면 자동으로 update?
		var wishlodgeNo = $('#wishlist').data('lodging-no');
		console.log(wishlodgeNo);
		wishlistModal.show();
		getWishlist();
	} else {
		emailModal.show();
	}
	return false;
});

$("#left-box").on('click', '.list-box', function(){
	location.href='/booking?no='+$(this).data("lodging-no");
})
//지도표시

var mapContainer = document.getElementById('map'),
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도 초기값
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
var ps = new kakao.maps.services.Places();


//ajax로 검색결과 받아오기
function getList(){	//나중에 parameter 정리해서 넣을 것
	eraseMark();
	$('.alert').remove();
   	var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	var imageSize = new kakao.maps.Size(24, 35); 
  	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
	$.ajax({
		//이 url문제도 처리해야됨
	    url: '/explore/list/json',
	    type: 'get',
	    data: {
	 	  		"east" : east
	   			,"west" : west
	   			,"south" : south
	   			,"north" : north
	    		,"checkIn": checkIn
	    		,"checkOut": checkOut
	     		,"guests": '${param.guests}'
	     		,"location": '${param.location}'
	     		, "immApproval" : immApproval
	       		},
	    dataType: "json",    		
	    success: function (lodgings) {
	          $("#left-box .list-box").remove();

	          var template = $("#template").html();
	          if(lodgings.length != 0){
		          $.each(lodgings, function(index, lodging) {
		            var htmlContent = Mustache.render(template, lodging);
		            $(htmlContent).appendTo("#left-box .notice-travel");
		            $(".location").text(locations);

		            //summary
		            $(".totalResult").text(lodgings.length);
		            //임시 포맷
		            var strCheckIn = checkIn.split('-');
		            var strCheckOut = checkOut.split('-');
		            var A = strCheckIn[1];
		            var B = strCheckIn[2];
		            var C = strCheckOut[1];
		            var D = strCheckOut[2];
		            $(".searchDate").text(A+"월 "+B+"일 - "+C+"월 "+D+"일");
		            
		            //list-box에 링크부여
		            $('.list-box').attr("data-lodging-no", lodging.no);
		            $('.list-box').css({"cursor": "pointer"});
					
		            $('.pagination .summary').text("총 숙소 "+lodgings.length+"개 중 1 - "+lodgings.length+"번째 숙소");
		            //후기가 0개이면 후기 부분 안 보이게 하기
		            
		          	//Wishlist반영
		          	if(lodging.wishlist == 1){
		          	 	$('.list-box-title-zz .zzim').html("<i style='font-size: 22px;' class='bi bi-suit-heart-fill'></i>");
		          	}
		          	
					setMark(lodging);
					//하나 검색은 되는데 두 개는 안 됨ㄸㄹㄹ - 버튼은 뜨는데 옆에 리스트가 뜨지 않는다. break속성이 있나?
				   
		            
		            /*
		            var iwContent = document.createElement('div');
		            iwContent.className = 'card';
		            iwContent.style.cssText='width: 18rem; z-index:0;';
		            //지도 실행안됨.... 왜?
		            */		
		            var iwContent = '<div class="card" style="width: 18rem; z-index:0; position:absolute; top: -50%;">'
		            				 + '<img src="" class="card-img-top" alt="">'
		           					 + '<div class="card-body">'
		            				 + '<p class="card-text">Some quick example text to build on the card title and make up the bulk of the cards content.</p>'
		          					 + '</div>'
		          					 + '</div>'; 
		          					 // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
					
		         	// 인포윈도우를 생성합니다
		        	var infowindow = new kakao.maps.InfoWindow({
		            	content : iwContent
		         	});
		            
		          	//실행안됨....
		            //$(".btn-outline-dark").on('click', function(infowindow){
		            //content.addEventListener('click', function () {
		            //	infowindow.open(map, customOverlay);
		            //});
		            	
		            /*
		            kakao.maps.event.addListener(customOverlay, 'click', function() {
			              infowindow.open(map, marker);  
	
		            });
					*/
		            /*
		            var marker = new kakao.maps.Marker({
				        map: map, // 마커를 표시할 지도
				        position: new kakao.maps.LatLng(lodging.longitude, lodging.latitude),
				        title : lodging.name, 
				        image : markerImage
				    });
				    */
		          });
		     } else {
		    	 $('.alert').remove();
		    	 $('.pagination .summary').empty();
		    	 var htmlContent = '<div class="alert" style="margin: 0; padding: 10px 0 30px 0;"><b>검색 결과</b>가 없습니다.</div>';
		    	 $(htmlContent).insertAfter($('.spacing'));
		     }
	    },
	    error: function(request, status, error){
	    	//alert('통신실패')
	    	//alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
	    	console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);

	    }			
	});	
	
}
function eraseMark(){
	$('.marker').remove();
}
function setMark(lodging){
    var content = document.createElement('div');
    content.className = 'marker';
    content.innerHTML = '₩'+lodging.perDayFee;
    content.style.cssText = ''

    var customOverlay = new kakao.maps.CustomOverlay({
        position: new kakao.maps.LatLng(lodging.latitude, lodging.longitude),
    	content: content
    });
    customOverlay.setMap(map);	
}
	
//지도 영역이 이동하면 Refresh
kakao.maps.event.addListener(map, 'bounds_changed', function() {             
   	//$(".marker").remove();
	var bounds = map.getBounds();
	var boundsStr = bounds.toString().replace(/[()]/g, '').split(',');
	
	south = boundsStr[0];
	north = boundsStr[2];
	west = boundsStr[1];
	east = boundsStr[3];
	
	getCenterInfo();
	$('.keyword').text(keyword);
	getList();
});

function getCenterInfo(){
    var center = map.getCenter(); 
    var geocoder = new kakao.maps.services.Geocoder();
    
    var callback = function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
			keyword = result[0].address_name;
			keyword = keyword.slice(6, 9);
        }
    };
    geocoder.coord2RegionCode(center.getLng(), center.getLat(), callback);
}


// 주소로 좌표를 검색합니다
geocoder.addressSearch('${param.location}', function(result, status) {
    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});

$('.doFilter').click(function(event) {
	//만약 immApproval이 체크된 상태라면 : immApproval 변수를 Y로 바꿈, option-button의 css 상태도 짙은 테두리로
	if($('#immApproval').is(":checked") == true){
	    immApproval = 'Y';
		$('option-immApproval').css('border','2px black solid');
	} else {
		immApproval = 'N';
		$('option-immApproval').css('border','none');
	}

	getList();		
	event.preventDefault()
	$('#immApproval-window').toggle();

})	
$('#option-immApproval').click(function(event) {
	event.preventDefault()
	$('#immApproval-window').toggle();
});

//위시리스트
//새 위시리스트 추가
$('#submitName').click(function(event) {
	//입력하자마자 뜨는 값은 별로인걸...
	var newWishName = $('#wishlistNameInput').val();
	console.log(newWishName);//온다
	$.ajax({
		//이 url문제도 처리해야됨
	    url: '/wishlist/add/json',
	    type: 'get',
	    data: { "wishName" : newWishName },
	    success: function (lodgings) {
			console.log('성공이당');
			//이전 모달 어떻게 업데이트? --성공!
			getWishlist();
			wishlistModal.show();
	    },
	    error: function(request, status, error){
	    	console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
	    }
	});
	//여기서 한 번 getWishlist해줘야하는지
	return false;
});
//위시리스트 불러오기
function getWishlist(){
	//첫째를 제외하고 리프레시
	$('.wishlist:not(:first-child)').remove();
	//유저번호로 검색, ajax로 모든 위시리스트의 사진+이름+위시리스트 번호 불러오기
	$.ajax({
		//이 url문제도 처리해야됨
	    url: '/wishlist/get/json',
	    type: 'get',
	    dataType: "json",    		
	    success: function (wishlists) {
	    	if(wishlists.length != 0){
		    	$.each(wishlists, function(index, wishlist) {
			    	var wishlistContent = '<div class="wishlist" data-wishlist-no="'+wishlist.no+'">'
			    		wishlistContent += 		'<a href="#" class="wishlist-click" data-wishlist-no="'+wishlist.no+'">'
			    		wishlistContent +=			'<img class="thumbnail" src="/resources/images/mains/seoul.webp">'
			    		wishlistContent +=			'<span class="wishlist-name">'+wishlist.name+'</span>'
			    		wishlistContent +=		'</a>'
			    		wishlistContent += '</div>'
				//하나씩 화면에 등록
					$('.wishlist-wrapper').append(wishlistContent);
		    	});
	    	}
	    },
	    error: function(request, status, error){
	    	console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
	    }
	});
};


//$('.wishlist-click').click(function(event) {
//	console.log('여기 오나요');
//	var lodgeNo = $('#wishlist').data(lodging-no);
//	console.log(lodgeNo);
//});
//function saveLodgeToWishlist(){
	//유저번호, 위시리스트 번호, 해당 숙소 번호를 모두 보낸다.
	
	//버튼의 모양을 예쁘게 바꿔준다
//}

//function deleteLodgeFromWishlist(){
	//숙소 번호로 위시리스트 번호를 획득한다.
	//위시리스트 번호로 조회해서 로그인한 유저의 정보와 맞는지 확인한다.
	//모든 조건이 맞으면 삭제
	//버튼의 모양을 슬프게 바꿔준다
//}
//위시리스트에 찜 추가
</script>