<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .modal-lg {
      max-width: 630px !important;
    }
</style>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#loginRegisterModal">Launch demo modal
</button>

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
                <h3 class="pb-3"><strong>Thxty에 오신 것을 환영합니다.</strong></h3>
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
                  <button type="button" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;">구글로 로그인하기</button>
                  <button type="button" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;">전화번호로 로그인하기</button>
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
                    <input type="email" class="form-control" id="RegisterEmail" placeholder="hong@naver.com">
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
                <form id="profileImg-register" method="post" action="profileImg" novalidate="novalidate">
                    <div class="d-flex justify-content-center">
                        <img src="resources/images/defaultProfile.jpg" style="display: block; height: 185px; width: 185px;" id="preview-image" name="picture"/>
                    </div>
                    <div class="d-grid gap-2 py-2">
                        <button type="button" class="btn btn-dark btn-lg" id="btn-upload">사진 업로드하기</button>
                        <input type="file" id="input-image" style="display: none;"/>
                    </div>
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;" id="btn-complete">완료</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    $(function () {
        var emailModal = new bootstrap.Modal(document.getElementById("loginRegisterModal"));
        var passwordModal = new bootstrap.Modal(document.getElementById("loginModal"));
        var registerModal = new bootstrap.Modal(document.getElementById("registerModal"));
        var registerModal2 = new bootstrap.Modal(document.getElementById("registerModal2"));

        function CheckEmail(str) {
            var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
            if (!reg_email.test(str)) {
                return false;
            }

            return true;
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
                    }
                    emailModal.hide();
                },
                error : function () {
                    alert('ajax통신 실패!!!!');
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
                success:function () {
                    alertify.alert("로그인 성공");
                },
                error : function () {
                    alertify.alert('ajax통신 실패!!!!');
                }
            })

            return true;
        })

        $('#btn-register').click(function () {
            var lastName = $.trim($('#LastName').val());
            var firstName = $.trim($('#FirstName').val());
            var name = firstName + lastName;
            var birth = $.trim($('#RegisterBirth').val());
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

            if (!password) {
                alertify.alert("성을 입력해주세요.")
                $('#RegisterPassword').focus();

                return false;
            }

            $.ajax({
                url:"/register",
                dataType: 'json',
                method: 'post',
                data:{
                    name: name,
                    birth: birth,
                    email: email,
                    password: password
                },
                success:function (retVal) {
                    if (retVal.res === "OK") {
                        alertify.alert('회원가입 성공');
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

        $('#profileImg-register').submit(function () {

        })
    })

    function readImage(input) {
        // input 태그에 파일이 있는 경우
        if(input.files && input.files[0]) {
            // FileReader 인스턴스 생성
            const reader = new FileReader();

            // 이미지가 로드가 된 경우
            reader.onload = e => {
                const  previewImage = document.getElementById("preview-image")
                previewImage.src = e.target.result;
            }

            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0]);
        }
    }

    // input file에 change 이벤트 부여
    const inputImage = document.getElementById('input-image');
    inputImage.addEventListener("change", e => {
        readImage(e.target);
    })
</script>