<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<style type="text/css">
	.header-padding {
		padding-left: 80px;
		padding-right: 80px;
	}
	.header-height {
		height: 100%;
		width: 100%;
	}
	.header {
		padding-top: 64px;
		padding-bottom: 16px;
	}
	.header-text {
		font-size: 32px;
		font-weight: 800;
	}
	.body-padding {
		padding-left: 80px;
		padding-right: 80px;
		display: flex;
		justify-content: flex-start;
		width: 100%;
	}
	.left-relative {
		position: relative;
		width: 50%;
		margin-left: 0%;
		margin-right: 0%;
	}
	.booking-text, .refund-text, .fee-text {
		font-size: 22px;
		font-weight: 800;
	}
	.date-text, .guest-text {
		font-size: 16px;
		font-weight: 800;
	}
	.checkIn-checkOut, .guest {
		margin-top: 8px;
		color: rgb(113, 113, 113);
		font-size: 16px;
	}
	.payment-padding {
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
		padding-top: 24px;
		padding-bottom: 24px;
	}
	.refund-padding {
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
		padding-top: 24px;
		padding-bottom: 16x;
	}
	.rules-padding {
		margin-top: 24px;
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
	}
	.rules-text {
		margin-top: 8px;
		margin-bottom: 8px;
		font-size: 12px;
		color: rgb(34, 34, 34);
	}
	.payment-button {
		display: block;
	}
	.booking-button {
		position: relative;
		text-align: center;
		font-size: 16px;
		font-weight: 600;
		border-radius: 8px;
		outline: none;
		padding: 14px 24px;
		border: none;
		background: rgb(230, 30, 77);
		color: rgb(255, 255, 255);
		width: auto;
	}
	.right-relative {
		position: relative;
		width: 41.6%;
		margin-left: 8.3%;
		margin-right: 0%;
	}
	.right-sticky {
		position: sticky;
		top: 80px;
		z-index: 1;
		display: inline-block;
		width: 100%;
		padding-right: 1px;
	}
	.sticky-padding {
		margin-bottom: 100px;
		padding: 24px;
		border: 1px solid rgb(221, 221, 221);
		border-radius: 12px;
	}
	.sticky-top {
		padding-bottom: 8px;
		display: flex;
	}
	.lodging-image {
		width: 124px;
		height: 106px;
		overflow: hidden;
		border-radius: 8px;
	}
	.image {
		height: 100%;
		width: 100%;
		position: static;
	}
	.lodging-contents {
		padding-left: 16px;
		display: flex;
		justify-content: space-between;
		flex-direction: column;
	}
	.lodging-city {
		font-size: 12px;
		color: rgb(34, 34, 34);
	}
	.bed {
		font-size: 12px;
		margin-top: 4px;
		color: rgb(113, 113, 113);
	}
	.fee-padding {
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
		padding-top: 24px;
		padding-bottom: 24px;
	}
	.fee {
		display: flex;
		justify-content: space-between;
		color: rgb(34, 34, 34);
	}
	
</style>
<div class="container">
	<main>
		<div>
			<div class="header-padding">	<!-- 확인 및 결제 -->
				<div class="header-height">
					<div style="padding-bottom: 32px;">
						<div class="header">
							<div class="header-text">확인 및 결제</div>
						</div>
					</div>
				</div>
			</div>
			<div>	<!-- 나머지 부분 -->
				<div class="body-padding">
					<div class="left-relative">
						<div style="margin-bottom: 100px;">
							<div>	<!-- 예약정보 text -->
								<div style="padding-bottom: 24px;">
									<div class="booking-text">예약 정보</div>
								</div>
							</div>
							<div>	<!-- 예약날짜 -->
								<div style="padding-bottom: 24px;">
									<div class="date-text">날짜</div>
									<div class="checkIn-checkOut"><fmt:formatDate value="${booking.checkIn }" pattern="M월dd일"/> - <fmt:formatDate value="${booking.checkOut }" pattern="M월dd일"/></div>
								</div>
							</div>
							<div>	<!-- 예약 인원 -->
								<div style="padding-bottom: 24px;">
									<div class="guest-text">게스트</div>
									<div class="guest">게스트 ${booking.guest }명</div>
								</div>
							</div>
							<div>	<!-- 결제수단 -->
								<div class="payment-padding">
									<div>
										<div class="booking-text">결제 방식</div>
									</div>
								</div>
							</div>
							<div>	
								<div style="padding-bottom: 24px;">
									<div class="checkIn-checkOut">카카오페이</div>
								</div>
							</div>
							<div>	<!-- 환불정책 -->
								<div class="refund-padding">
									<div>
										<div class="refund-text">환불 정책</div>
									</div>
									<div style="padding-top: 24px;"></div>
									<strong>
										<fmt:formatDate value="${indate }" pattern="M월 dd일"/> 3:00PM 전까지 무로료 예약을 취소할 수 있습니다.
									</strong>
									<span style="color: rgb(113, 113, 113); font-size: 16px;">
										그 후에는 <fmt:formatDate value="${booking.checkIn }" pattern="M월 dd일"/> 3:00PM 전에 예약을 취소하면 첫 1박 요금
										및 서비스 수수료를 제외한 요금 전액이 환불됩니다.
									</span>
								</div>
							</div>
							<div>	<!-- 코로나안내문 -->
								<div style="padding-top: 12px; padding-bottom: 12px;">
									<span style="color: rgb(113, 113, 113); font-size: 16px;">
										코로나19로 인한 여행 문제에는 정상참작이 가능한 상황 정책이 적용되지 않습니다.
									</span>
								</div>
							</div>
							<div>	<!-- 이용규칙 설명 -->
								<div class="rules-padding">
									<div style="padding-top: 24px; padding-bottom: 24px;">
										<div class="rules-text">
											아래 버튼을 선택함으로써, 호스트가 설정한 숙소 이용규칙, ThanksTay 코로나19 방역 수칙 및
											게스트 환불 정책에 동의합니다.
										</div>
									</div>
								</div>
							</div>
							<div>	<!-- 확인 및 결제 -->
								<div class="payment-button">
									<form id="form-booking" action="booking" method="post" id="form-booking">
										<input type="hidden" id="user-no" name="userNo" value="${booking.userNo }"> <!-- 로그인이랑 연결되면 넣기${LOGINED_USER.no } -->
										<input type="hidden" id="lodging-no" name="lodgingNo" value="${booking.lodgingNo }">
										<input type="hidden" id="check-in" name="checkIn" value='<fmt:formatDate value="${booking.checkIn }" pattern="yyy-MM-dd"/>'>
										<input type="hidden" id="check-out" name="checkOut" value="<fmt:formatDate value="${booking.checkOut }" pattern="yyy-MM-dd"/>">
										<input type="hidden" id="date" name="date" value="${booking.date }">
										<input type="hidden" id="form-guest" name="guest" value="${booking.guest }">
										<input type="hidden" id="total-lodging-fee" name="totalLodgingFee" value="${booking.totalLodgingFee }">
										<input type="hidden" id="total-cleaning-fee" name="totalCleaningFee" value="${booking.totalCleaningFee }">
										<input type="hidden" id="amount" name="amount" value="${booking.amount }">
										<input type="hidden" id="method" name="method" value="PMT0101">
										<button type="button" class="booking-button">확인 및 결제</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="right-relative">	<!-- sticky -->
						<div class="right-sticky">
							<div class="sticky-padding">
								<div style="padding-bottom: 24px;">
									<div class="sticky-top">
										<div class="lodging-image">
											<div class="" style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%;">
												<img class="image" src="${images[0].uri }" style="object-fit: cover; vertical-align: bottom;">
											</div>
										</div>
										<div class="lodging-contents">
											<div class="lodging-city">
												${lodging.city }, 한국의
												<c:if test="${lodging.lodgingTypeCode eq 'LDG0201' }">	<!-- 집전체 -->
													주거용 공간 전체
												</c:if>
												<c:if test="${lodging.lodgingTypeCode eq 'LDG0202' }">	<!-- 개인실 -->
													주거용 공간의 개인실
												</c:if>
												<c:if test="${lodging.lodgingTypeCode eq 'LDG0203' }">	<!-- 호텔 -->
													호텔의 객실
												</c:if>
											</div>
											<div>
												<div id="lodging-name" style="font-size: 14px; font-weight: 600;">${lodging.name }</div>
												<div class="bed">
													침대 ${lodging.singlebed+lodging.doublebed }개 · 욕실 ${lodging.bathroom }개
												</div>
											</div>
											<div style="font-size: 14px; font-weight: 400;">
												후기 ${lodging.reviewCount }개
											</div>
										</div>
									</div>
								</div>
								<div>
									<div class="fee-padding">
										<div class="fee-text">요금 세부정보</div>
									</div>
								</div>
								<div>
									<div style="display: block;">
										<div class="fee">
											<div>
												₩<fmt:formatNumber value="${booking.totalLodgingFee / booking.date }" pattern="##,###"/> x ${booking.date }박
											</div>
											<div>
												₩<fmt:formatNumber value="${booking.totalLodgingFee }" pattern="##,###"/>
											</div>
										</div>
										<c:if test="${booking.totalCleaningFee ne 0 }">
											<div class="fee" style="margin-top: 16px;">
												<div>
													청소비
												</div>
												<div>
													₩<fmt:formatNumber value="${booking.totalCleaningFee }" pattern="##,###"/>
												</div>
											</div>
										</c:if>
										<!-- 
										<div class="fee" style="margin-top: 16px;">
											<div>
												서비스 수수료
											</div>
											<div>
												₩<fmt:formatNumber value="${booking.totalLodgingFee * 0.14 }" pattern="##,###"/>
											</div>
										</div>
										 -->
										<div class="fee" style="margin-top: 16px;">
											<div>
												숙박세와 수수료
											</div>
											<div>
												₩<fmt:formatNumber value="${booking.totalLodgingFee * 0.1 }" pattern="##,###"/>
											</div>
										</div>
										<div class="fee" style="margin-top: 16px; font-weight: 800;">
											<div>
												총 합계(KRW)
											</div>
											<div>
												₩<fmt:formatNumber value="${booking.amount }" pattern="##,###"/>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	//$( document ).ready(function() {
	//	var checkin = $("input[name=checkIn]").attr('value');
	//	console.log(checkin);
	//});
	
	$('.booking-button').click(function() {
		
		var IMP = window.IMP;
		IMP.init('imp45690034');
		
		var lodgingName = $("#lodging-name").text();
		console.log(lodgingName);
		
		var amount = $("input[name=amount]").attr('value')
		console.log(amount);
		
		var email = "${bookingUser.email }";
		var name = "${bookingUser.name}";
		var phone = "${bookingUser.phone }";
		
		IMP.request_pay({
			pg: 'kakao',
			merchant_uid: 'merchant_' + new Date().getTime(),
			
			name: lodgingName,
			amount: amount,
			buyer_email: email,	// 이부분은 로그인이 구현되면 가져다가 넣기
			buyer_name: name,					// 이부분도
			buyer_tel: phone,			// 여기도
			buyer_addr: '인천광역시 부평구',			// 여기도
			buyer_postcode: '123-456'
		}, function (rsp) {
			console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '숙소이름 : ' + rsp.name;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
				
				alert(msg);
				$('#form-booking').submit();	
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				alert(msg);
			}
		}); 
	});
</script>