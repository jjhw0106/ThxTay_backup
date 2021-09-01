<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	.modal-lg {
		max-width: 630px !important;
	}
</style>
<nav class="navbar navbar-expand-lg" id="header" style="background-color:rgba( 0, 0, 0, 0 ); box-shadow: rgb(0, 0, 0, 0.3) 0px 1px 12px;">
	<div class="container">
		<div class="navbar-brand">
			<a style="font-family: 'Lobster', cursive; font-size:40px; text-decoration-line: none; color: #FF5555;" href="/home">Thxtay</a>
		</div>
		<div>
			<ul class="nav justify-content-end">
				<c:if test="${not empty LOGINED_USER }">
					<li class="nav-item"><a class="nav-link active"	aria-current="page" href="hosting">호스트 모드로 전환</a></li>
					<li class="nav-item"><a class="nav-link" href="#">국제화</a></li>
					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown">${LOGINED_USER.name} 님 환영합니다.</a>
						<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">메시지(채팅)</a></li>
							<li><a class="dropdown-item" href="#">여행</a></li>
							<li><a class="dropdown-item" href="#">위시리스트</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">숙소관리</a></li>
							<li><a class="dropdown-item" href="#">계정</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">도움말</a></li>
							<li><a class="dropdown-item" href="/logout">로그아웃</a></li>
							<li><a class="dropdown-item" href="#" id="withdrawal">회원탈퇴</a></li>
						</ul>
					</li>
				</c:if>
				<!--
				<c:if test="${empty LOGINED_USER }"> 로그아웃 상태 (?) 부분은 시간 상 구현가능여부 미정 -->
				<li class="nav-item"><a class="nav-link" href="#">국제화</a></li>
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2"
					role="button" data-bs-toggle="dropdown">로그인</a>
					<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown2">
						<li><a class="dropdown-item" href="#" id="login">로그인&회원가입</a></li>
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

<!---------------------------------------------- 회원탈퇴 ------------------------------------------------------->
<div class="modal fade" id="withdrawalModal" aria-hidden="true" aria-labelledby="withdrawalModal" tabindex="-1">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="row modal-header d-flex justify-content-between">
				<div class="col-4">
					<button type="button" style="float: left;" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="col-4">
					<p class="modal-title text-center" id="withdrawalModalLabel" style="font-size: 1.1em"><strong>회원탈퇴</strong></p>
				</div>
				<div class="col-4">
					&nbsp;
				</div>
			</div>
			<div class="modal-body">
				<div class="form-floating mb-3">
					<p class=""> 정말로 회원을 탈퇴하시겠습니까? </p>
				</div>
				<form action="/withdrawal" method="post" id="Yes">
					<div class="d-grid gap-2">
						<input type="hidden" value="${sessionScope.LOGINED_USER.no}" name="no">
						<button type="submit" class="btn btn-secondary btn-lg" style="font-size: 1.1em;" id="btn-withdrawal">예</button>
					</div>
				</form>
				<div class="d-grid gap-2 mt-3">
					<button type="button" class="btn btn-danger btn-lg" style="font-size: 1.1em;" id="btn-cancel">아니요</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!---------------------------------------------- 로그인 또는 회원가입 ------------------------------------------------------->
<div class="modal fade" id="loginRegisterModal" tabindex="-1" aria-labelledby="loginRegisterModal" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="row modal-header d-flex justify-content-between">
				<div class="col-4">
					<button type="button" style="float: left;" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="col-4">
					<p class="modal-title text-center" id="loginRegisterModalLabel" style="font-size: 1.1em"><strong>로그인 또는 회원가입</strong></p>
				</div>
				<div class="col-4">
					&nbsp;
				</div>
			</div>
			<div class="modal-body container mt-3">
				<h3 class="pb-3"><strong>Thxthy에 오신 것을 환영합니다.</strong></h3>
				<div class="form-floating my-3">
					<input type="email" class="form-control" id="loginEmail" name="email">
					<label for="loginEmail">이메일</label>
				</div>
				<div class="d-grid gap-2">
					<button type="button" class="btn btn-danger btn-lg" id="btn-emailCheck">계속</button>
				</div>
				<hr>
				<div class="d-grid gap-2">
					<button type="button" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;">페이스북으로 로그인하기</button>
					<button type="button" id="kakaoLogout" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;">구글로 로그인하기</button>
					<button type="button" id="kakaoLogin" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;">
						<div class="row">
							<div class="col-1">
								<img src="resources/images/kakaoLogo.png" style="width:30px; height:30px;">
							</div>
							<div class="col-11 text-center">카카오로 로그인하기</div>
						</div>
					</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!---------------------------------------------- 로그인 ------------------------------------------------------->
<div class="modal fade" id="loginModal" aria-hidden="true" aria-labelledby="loginModal" tabindex="-1">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="row modal-header d-flex justify-content-between">
				<div class="col-4">
					<i class="fas fa-chevron-left" style="float: left;" data-bs-target="#loginRegisterModal" data-bs-toggle="modal" data-bs-dismiss="modal"></i>
				</div>
				<div class="col-4">
					<p class="modal-title text-center" id="loginModalLabel" style="font-size: 1.1em;"><strong>로그인</strong></p>
				</div>
				<div class="col-4">
					&nbsp;
				</div>
			</div>
			<div class="modal-body">
				<div class="form-floating mb-3">
					<input type="password" class="form-control" id="password" placeholder="******" name="password">
					<label for="password">비밀번호</label>
				</div>
				<div class="d-grid gap-2">
					<button type="button" class="btn btn-danger btn-lg" style="font-size: 1.1em;" id="btn-login">로그인</button>
				</div>

				<div class="pt-3">
					<a><strong>비밀번호를 잊으셨나요?</strong></a>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
				</div>
			</div>
		</div>
	</div>
</div>

<!---------------------------------------------- 회원가입 완료하기 ------------------------------------------------------->
<div class="modal fade" id="registerModal" aria-hidden="true" aria-labelledby="registerModal" tabindex="-1">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="row modal-header d-flex justify-content-between">
				<div class="col-4">
					<i class="fas fa-chevron-left" style="float: left;" data-bs-target="#loginRegisterModal" data-bs-toggle="modal" data-bs-dismiss="modal"></i>
				</div>
				<div class="col-4">
					<p class="modal-title text-center" id="registerModalLabel" style="font-size: 1.1em;"><strong>회원가입 완료하기</strong></p>
				</div>
				<div class="col-4">
					&nbsp;
				</div>
			</div>
			<div class="modal-body">
				<div class="form-floating">
					<input type="text" class="form-control" id="LastName" placeholder="이름(예:길동)">
					<label for="LastName">이름(예:길동)</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="FirstName" placeholder="이름(예:홍)">
					<label for="FirstName">성(예:홍)</label>
					<p style="color: gray; font-size: small" class="pt-1">정부 발급 신분증에 표시된 이름과 일치하는지 확인하세요.</p>
				</div>
				<div class="form-floating mb-3">
					<input type="date" class="form-control" id="RegisterBirth" placeholder="2012.12.12">
					<label for="RegisterBirth">생년월일</label>
					<p style="color: gray; font-size: small" class="pt-1">만 18세 이상의 성인만 회원으로 가입할 수 있습니다.</p>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="RegisterPhone" placeholder="010-1234-5678">
					<label for="RegisterBirth">전화번호</label>
					<p style="color: gray; font-size: small" class="pt-1">전화번호는 호스트나 게스트, 또는 에어비앤비에서 연락을 취하기 위해 필요합니다.</p>
				</div>
				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="RegisterEmail" placeholder="hong@naver.com" readonly>
					<label for="RegisterEmail">이메일</label>
					<p style="color: gray; font-size: small" class="pt-1">예약 확인과 영수증을 이메일로 보내드립니다.</p>
				</div>
				<div class="form-floating mb-3">
					<input type="password" class="form-control" id="RegisterPassword" placeholder="******">
					<label for="RegisterPassword">비밀번호</label>
				</div>
				<div>
					<p style="font-size: small">
						아래의 <strong>동의 및 계속하기</strong> 버튼을 선택하면, Thxtay의
						<strong>
							<a href="https://www.airbnb.co.kr/help/article/2908/%EC%9D%B4%EC%9A%A9%EC%95%BD%EA%B4%80" target="_blank">서비스 약관</a>,
							<a href="https://www.airbnb.co.kr/help/article/2909/%EA%B2%B0%EC%A0%9C-%EC%84%9C%EB%B9%84%EC%8A%A4-%EC%95%BD%EA%B4%80" target="_blank">결제 서비스 약관</a>,
							<a href="https://www.airbnb.co.kr/help/article/2855/%EA%B0%9C%EC%9D%B8%EC%A0%95%EB%B3%B4-%EC%B2%98%EB%A6%AC%EB%B0%A9%EC%B9%A8" target="_blank">개인정보 처리방침</a>,
							<a href="https://www.airbnb.co.kr/help/article/2867/%EC%B0%A8%EB%B3%84-%EA%B8%88%EC%A7%80-%EC%A0%95%EC%B1%85" target="_blank">차별 금지 정책</a>
						</strong> 에 동의하는 것입니다.
					</p>
				</div>
				<div class="d-grid gap-2">
					<button type="button" class="btn btn-danger btn-lg" id="btn-register">동의 및 계속하기</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!---------------------------------------------- Thxtay 커뮤니티 가입하기 ------------------------------------------------------->
<div class="modal fade" id="registerModal2" aria-hidden="true" aria-labelledby="registerModal2" tabindex="-1">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="row modal-header d-flex justify-content-center">
				<div class="col-12">
					<p class="modal-title text-center" id="registerModalLabel2" style="font-size: 1.1em;"><strong>Thxtay 커뮤니티 완료하기</strong></p>
				</div>
			</div>
			<div class="modal-body">
				<h3 class="py-3">Thxaty는 누구나 어디에서나 우리 집처럼 편안함을 느낄 수 있는 커뮤니티입니다.</h3>
				<p class="pb-3">이를 위해 Thxtay는 다음에 동의해 주실 것을 부탁드립니다.</p>

				<p><strong>Thxtay 커뮤니티를 위한 약속</strong></p>
				<p>모든 Thxtay 커뮤니티 회원을 인종, 종교, 출신 국가, 민족, 피부색, 장애, 성별, 성적 정체성, 성적 취향 또는 연령에 상관없이 존중하며 개인적 판단이나 편견 없이 대하겠습니다. <strong>자세히 알아보기</strong></p>

				<hr>
				<div class="d-grid gap-2 mb-3">
					<button type="button" class="btn btn-danger btn-lg" data-bs-target="#addProfile" data-bs-toggle="modal" data-bs-dismiss="modal">동의 및 계속하기</button>
				</div>
				<div class="d-grid gap-2">
					<button type="button" class="btn btn-lg" style="background-color:white !important; border: 1px solid black !important;">거절하기</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!---------------------------------------------- 프로필 생성하기 ------------------------------------------------------->
<div class="modal fade" id="addProfile" aria-hidden="true" aria-labelledby="addProfile" tabindex="-1">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="row modal-header d-flex justify-content-between">
				<div class="col-4">
					<button type="button" style="float: left;" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="col-4">
					<p class="modal-title text-center" id="addProfileLabel" style="font-size: 1.1em"><strong>프로필 생성하기</strong></p>
				</div>
				<div class="col-4">
					&nbsp;
				</div>
			</div>
			<div class="modal-body">
				<div class="d-flex justify-content-center">
					<p style="font-family: 'Lobster', cursive; font-size:40px; text-decoration-line: none; color: #FF5555;">Thxtay</p>
				</div>
				<div class="text-center">
					<h3><strong>Thxtay에 오신 것을 환영합니다</strong></h3>
					<p>전 세계 숙소, 현지 레스토랑 및 독특한 체험을 찾아보세요.</p>
				</div>
				<div class="d-grid gap-2 py-2">
					<button type="button" class="btn btn-dark btn-lg" data-bs-target="#addProfileImg" data-bs-toggle="modal" data-bs-dismiss="modal">계속</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!---------------------------------------------- 프로필 생성하기2 ------------------------------------------------------->
<div class="modal fade" id="addProfileImg" aria-hidden="true" aria-labelledby="addProfileImg" tabindex="-1">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="row modal-header d-flex justify-content-between">
				<div class="col-4">
					<i class="fas fa-chevron-left" style="float: left;" data-bs-target="#addProfile" data-bs-toggle="modal" data-bs-dismiss="modal"></i>
				</div>
				<div class="col-4">
					<p class="modal-title text-center" id="addProfileImgLabel" style="font-size: 1.1em"><strong>프로필 생성하기</strong></p>
				</div>
				<div class="col-4">
					&nbsp;
				</div>
			</div>
			<div class="modal-body">
				<div class="d-flex justify-content-center">
					<h4><strong>프로필 사진 추가</strong></h4>
				</div>
				<div class="text-center">
					<p>얼굴이 보이는 이미지를 선택하세요. 호스트는 예약이 확정된 후에만 사진을 볼 수 있습니다.</p>
				</div>
				<div class="d-flex justify-content-center">
					<img src="resources/images/defaultProfile.jpg" style="display: block; height: 185px; width: 185px; border-radius: 100px;" id="preview-image"/>
				</div>
				<div class="d-grid gap-2 py-2">
					<button type="button" class="btn btn-dark btn-lg" id="btn-upload">사진 업로드하기</button>
					<input type="file" id="input-image" style="display: none;"/>
				</div>
				<div class="d-grid gap-2">
					<button type="button" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;" id="btn-complete">완료</button>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
	$(function () {
		var emailModal = new bootstrap.Modal(document.getElementById("loginRegisterModal"));
		var passwordModal = new bootstrap.Modal(document.getElementById("loginModal"));
		var registerModal = new bootstrap.Modal(document.getElementById("registerModal"));
		var registerModal2 = new bootstrap.Modal(document.getElementById("registerModal2"));
		var profileImgModal = new bootstrap.Modal(document.getElementById("addProfileImg"));
		var withdrawalModal = new bootstrap.Modal(document.getElementById("withdrawalModal"));

		$('#login').click(function () {
			emailModal.show();
		});


		$('#withdrawal').click(function () {
			withdrawalModal.show();
		});

		$('#btn-cancel').click(function() {
			withdrawalModal.hide();
		});

		function CheckEmail(str) {
			var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
			if (!reg_email.test(str)) {
				return false;
			}

			return true;
		}

		function CheckAge(age) {
			var d = new Date(age.split("/").reverse().join("-"));
			var dd = d.getDate();
			var mm = d.getMonth()+1;
			var yy = d.getFullYear();
			var age_date = yy + "/" + mm + "/" + dd;
			var birthDate = new Date(age_date);
			var cur = new Date();
			var diff = cur - birthDate;
			var age = Math.floor(diff/31536000000);
			if (age >= 18) {
				return true;
			} else {
				return false;
			}
		}

		$('#btn-emailCheck').click(function () {
			var checkEmail = $.trim($('#loginEmail').val());
			if (!checkEmail) {
				alertify.alert("이메일은 필수 입력값 입니다.")
				$('#loginEmail').focus();

				return false;
			} else {
				if(!CheckEmail(checkEmail)) {
					alertify.alert("이메일 형식이 잘못되었습니다.");
					$('#loginEmail').focus();

					return false;
				}
			}

			$('#RegisterEmail').val(checkEmail);

			$.ajax({
				url:"/emailCheck",
				dataType: 'json',
				data:{email: checkEmail},
				success:function (retVal) {
					if (retVal.res === "OK") {
						passwordModal.show();
					} else if(retVal.res === "FAIL") {
						registerModal.show();
					} else if(retVal.res === "ERROR") {
						alertify.alert("회원탈퇴된 회원입니다.");
						return false;
					}
					emailModal.hide();
				},
				error : function (request, status, error) {
					alertify.alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			})

			return true;
		})

		$('#btn-login').click(function () {
			var email = $.trim($('#loginEmail').val());
			var password = $.trim($('#password').val());

			if (!password) {
				alertify.alert("비밀번호를 입력해주세요.")
				$('#password').focus();

				return false;
			}

			$.ajax({
				url:"/login2",
				dataType: 'json',
				method: 'post',
				data:{email: email, password: password},
				success:function (retVal) {
					if (retVal.res === "OK") {
						passwordModal.hide();
						window.location.reload();
					} else if (retVal.res === "FAIL") {
						alertify.alert("비밀번호가 맞지 않습니다.");
						$('#password').val("").focus();

						return false;
					}
				},
				error : function (request, status, error) {
					alertify.alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			})

			return true;
		})

		$('#btn-register').click(function () {
			var lastName = $.trim($('#LastName').val());
			var firstName = $.trim($('#FirstName').val());
			var name = firstName + lastName;
			var birth = $.trim($('#RegisterBirth').val());
			var phone = $.trim($('#RegisterPhone').val());
			var email = $.trim($('#RegisterEmail').val());
			var password = $.trim($('#RegisterPassword').val());

			if (!lastName) {
				alertify.alert("이름을 입력해주세요.")
				$('#lastName').focus();

				return false;
			}

			if (!firstName) {
				alertify.alert("성을 입력해주세요.")
				$('#FirstName').focus();

				return false;
			}

			if (!birth) {
				alertify.alert("생년월일을 입력해주세요.")
				$('#RegisterBirth').focus();

				return false;
			}

			if (!phone) {
				alertify.alert("전화번호를 입력해주세요.")
				$('#RegisterPhone').focus();

				return false;
			}

			if (!password) {
				alertify.alert("비밀번호를 입력해주세요.")
				$('#RegisterPassword').focus();

				return false;
			}


			if (CheckAge(birth) == false) {
				alertify.alert("만 18세 미만은 가입을 할 수 없습니다.");

				return false;
			}


			$.ajax({
				url:"/register",
				dataType: 'json',
				method: 'post',
				data:{
					name: name,
					birth: birth,
					phone: phone,
					email: email,
					password: password
				},
				success:function (retVal) {
					if (retVal.res === "OK") {
						registerModal2.show();
					}
					registerModal.hide();
				},
				error : function () {
					alertify.alert('ajax통신 실패!!!!');
				}
			})

			return true;
		})

		// 버튼을 클릭하면
		$('#btn-upload').click(function (e) {
			e.preventDefault();
			// input file 타입이 실행됨
			$('#input-image').click();
		})

		$('#btn-complete').click(function() {
			var formData = new FormData();
			formData.append("picture", $("#input-image")[0].files[0]);
			formData.append("email", $.trim($('#loginEmail').val()));
			/* key 확인하기 */
			for (let key of formData.keys()) {
				console.log(key);
			}

			/* value 확인하기 */
			for (let value of formData.values()) {
				console.log(value);
			}
			jQuery.ajax({
				url : "/img",
				type : "POST",
				enctype: 'multipart/form-data',
				dataType : 'json',
				processData : false,
				contentType : false,
				data : formData,
				success:function(retVal) {
					if (retVal.res === "OK") {
						profileImgModal.hide();
					}
				},
				error: function (jqXHR)
				{
					alertify.alert(jqXHR.responseText);
				}
			});
		})

		Kakao.init('13a6b02c06860d591edf918abaed6fea'); // 발급받은 javascript 키를 사용
		console.log(Kakao.isInitialized()); // sdk초기화 여부 판단

		// 카카오 로그인
		$('#kakaoLogin').click(function() {
			Kakao.Auth.login({
				success: function() {
					Kakao.API.request({
						url: '/v2/user/me',
						success: res => {
							const email = res.kakao_account.email;
							const picture = res.properties.profile_image;
							const name = res.properties.nickname;

							const birthday = res.kakao_account.birthday;
							// 카카오에서 받아오는 나이는 출생년도는 테스트용으론 불가하고, 연령대만 받아올 수 있어서 가정을 둔다.
							const ageRange = res.kakao_account.age_range;
							var age = ageRange.substring(0,2);

							const getBirth = a => {
								const date = new Date();
								return date.getFullYear() - a + 1; // 올해 - 나이 + 1
							}

							var birth = getBirth(age) + "-" + birthday.substr(0,2) + "-" + birthday.substr(2,4);

							$.ajax({
								url:"/registerKakao",
								dataType: 'json',
								method: 'post',
								data:{
									name: name,
									birth: birth,
									email: email,
									picture: picture
								},
								success:function (retVal) {
									if (retVal.res === "OK") {
										alertify.alert('로그인&회원가입 성공');
										emailModal.hide();
										window.location.reload();
									} else if (retVal.res === "ERROR") {
										alertify.alert('탈퇴처리된 회원입니다.');
										return false;
									}
								},
								error : function (request, status, error) {
									alertify.alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
								}
							})
						},
						fail: function(error) {
							console.log("로그인은 성공했지만, request user informations : " +  JSON.stringify(error));
						}
					})
				},
				fail: function(error) {
					console.log("failed to login: " + JSON.stringify(error));
				}
			})
		})

		//카카오로그아웃
		$('#kakaoLogout').click(function() {
			if (Kakao.Auth.getAccessToken()) {
				Kakao.API.request({
					url: '/v1/user/unlink',
					success: function (response) {
						console.log(response)
					},
					fail: function (error) {
						console.log(error)
					},
				})
				Kakao.Auth.setAccessToken(undefined)
			}
		})
	})

	//이미지 미리보기
	var sel_file;

	$(document).ready(function() {
		$("#input-image").on("change", handleImgFileSelect);
	});

	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;

		filesArr.forEach(function(f) {
			if (!f.type.match(reg)) {
				alertify.alert("확장자는 이미지 확장자만 가능합니다.");
				return false;
			}

			sel_file = f;

			var reader = new FileReader();
			reader.onload = function(e) {
				$("#preview-image").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
</script>
<script>
	$(document).on("keyup", "#RegisterPhone", function() {
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})/,"$1-$2-$3").replace("--", "-") );
		// copy from https://cublip.tistory.com/326
		//﻿ 원본과 class 명만 바뀐 상태다.
	});
</script>