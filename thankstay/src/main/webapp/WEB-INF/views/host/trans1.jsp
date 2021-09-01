<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>Transaction Register Step1</title>
<style type="text/css">
.container {
	padding:0;
}

ul, li {
	margin: 0;
	padding: 0;
	list-style-type: none;
}
.field-description {
	margin:0 auto;
	padding: 0 10px;
	font-size:12px;
	color: #747879;
	height: 15px;
	position: absolute;
	z-index: 1;
	top: -6px;
	background: #fff;
}

.form {
	margin: 0 auto;
	padding: 150px 0;
	width: 800px;
}

.section-progress, .section-field {
    background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABH0AAAAmBAMAAACrPvqgAAAAGFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABWNxwqAAAACHRSTlMAAQcDDRMcJQpMX5MAAAFNSURBVHgB7dndjYJAGEZh7EBCBywNsHQwYTsQOwA6gPaXsEZcwwDf/MCo54mJV97oyTtmiAAAAAAAAAAAAAAc6hS/p8gcYgGcmQ1vQCd2kiJEdDXDewd4q4Mw/Di+03AVngTd01GRpLj5Oiit857VJGGthLorD6MmYS2bv5JOTnNxUkH5sbLBPuMVb2VeTuI8Fcdp/DyownN54rAy51GJKxI3k26UZaXc5aYawCI3peyD0p9o2uUx+8OiZIFUxq6Tqm5eXP3AdtvcVVXMyDUrtBCOzbAIz5H6T7Ojrm06gTBqu45kaZVrMsEy5U8bNJOOPJgtqbjai/GXbJf04Wo1xjpddDrlZV6VWg0pvwc0vie6cLTNrHTSGGin77fr/zWAthteg35ktFzVIm1N2oy8XTea3jVFnni+L5+mfOcnjAafiQAAAAAAAAAAeAm/v9kYRsQrgWoAAAAASUVORK5CYII=)
    			 no-repeat center bottom;
    background-size: 100% 20px;
}

.section-progress {
	padding: 15px 0;
	color: #747879;
}
h1 {
	margin: 30px 0;
	color: #606060;
	font-size: 170%;
}

.section-field {
	width: 800px;
}

#form-tr {
	display:flex;
	justify-content: space-around;
}
</style>


<div class="container">
<input type="hidden" id="user-name" value="${user.name }">
<input type="hidden" id="user-birth" value="${user.birth }">
<input type="hidden" id="user-phone" value="${user.phone }">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
	<div class="form">
		<h1>은행 이체 설정</h1>
		<ul class="section-progress row">
			<li id="process1" class="col-2 text-primary">시작하기</li>
			<li id="process2"class="col-2">연락처 정보</li>
			<li id="process3"class="col-2">거의 완료</li>
		</ul>
		<form id="form-tr" method="post" action="/host/trans2">
			<div id="form-info" class="section-field needs-validation">
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label class="field-description ms-1">이름</label>
					 	<input id="input-name"type="text" class="form-control mt-2 ms-1 border-0" name="name">
					</div>
					<span id="warning-name" class="invalid-feedback">정보에 등록된 본인 이름을 정확히 기입해 주세요.</span>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label class="field-description ms-1">이메일 주소</label>
					 	<input id="input-email" type="text" class="form-control mt-2 ms-1 border-0" name="email">
					</div>
					<span id="warning-email" class="invalid-feedback">이메일 영역은 필수영역 입니다.</span>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label class="field-description ms-1">이메일 주소 다시 입력</label>
					 	<input id="input-email-check" type="text" class="form-control mt-2 ms-1 border-0">
					</div>
					<span id="warning-email-check" class="invalid-feedback">이메일이 일치하지 않습니다 정확히 입력해 주세요.</span>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label class="field-description ms-1">생년 월일</label>
					 	<input id="input-date" type="date" class="form-control mt-2 ms-1 border-0" name="birth" pattern="\d{4}-\d{2}-\d{2}">
					</div>
					<span id="warning-date" class="invalid-feedback">본인의 생년 월일과 일치하지 않습니다.</span>
				</div>
				<button type="button" class="mb-4" id="btn-prev1">이전</button>
				<button type="button" class="mb-4" id="btn-next1">다음</button>
			</div>
				
				
				
				
			<!--  -->
			<div id="form-certification" class="section-field">
				<div class="m-4">
					<div>
						<label class="ms-1 d-block">휴대폰 번호</label>
						<div class="input-group row">
							<select class="form-select" style="width:10%;">
								<option selected>국가를 번호를 지정해주세요.</option>
								<option value="1">+82</option>
							</select>
					 		<input id="input-phone" type="text" class="form-control mt-2 ms-1" name="phone">
						</div>
						<span id="warning-phone" class="invalid-feedback">정보에 등록된 본인 휴대폰을 정확히 기입해 주세요.</span>
					</div>
				</div>
				<div class="position-relative p-4">
					<div class="input-group input-group-lg border border-grey">
					 	<input id="input-number-check" type="text" class="form-control mt-2 ms-1 border-0">
					</div>
					<span id="warning-number-check" class="invalid-feedback">인증번호를 입력해주세요.</span>
				</div>
				<button type="button" class="mb-4" id="btn-prev2">이전</button>
				<button type="button" class="mb-4" id="btn-next2">다음</button>
			</div>
				
				
				
				
				
			
			<!--  -->
			<div id="form-bank" class="section-field">
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label class="field-description ms-1">통화</label>
						<select id="select-currency"class="form-select" style="width:10%;" name="currency">
							<option selected>KOR(￦)</option>
						</select>
					</div>
					<span id="warning-currency" class="invalid-feedback">통화를 선택해주세요.</span>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label class="field-description ms-1">결제수단</label>
						<select id="select-payways" class="form-select" style="width:10%;" name="payment">
							<option selected></option>
						<c:forEach var="code" items="${accountCodes }">
							<option value="${code.commonCode}">${code.codeContent }</option>
						</c:forEach>
						</select>
					</div>
					<span id="warning-payways" class="invalid-feedback">결재수단을 선택해주세요.</span>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label class="field-description ms-1">은행 선택</label>
						<select id="select-bank" class="form-select" style="width:10%;" name="bankCode">
								<option selected>은행을 선택하세요.</option>
						<c:forEach var="code" items="${bankCodes }">
								<option value="${code.commonCode}">${code.codeContent }</option>
						</c:forEach>
						</select>
						<span id="warning-bank" class="invalid-feedback"></span>
					</div>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label class="field-description ms-1">계좌 번호</label>
					 	<input id="input-account"type="text" class="form-control mt-2 ms-1 border-0" name="account">
					</div>
					<span id="warning-account" class="invalid-feedback">계좌번호를 입력해주세요.</span>
				</div>
				<button type="button" class="mb-4" id="btn-prev3">이전</button>
				<button type="submit" class="mb-4" id="btn-next3">다음</button>
			</div>
		</form>
	</div>
</div>

<script src="https://momentjs.com/downloads/moment-with-locales.js"></script>
<!-- JavaScript Bundle with Popper -->
<script type="text/javascript">
$(function() {
	console.log($('#user-birth').val())
	console.log($('#user-phone').val())
	
	$('#form-certification').hide()
	$('#form-bank').hide()

	$('#btn-next1').on('click', function() {
		
		var name = $('#input-name').val()
		var user = $('#user-name').val()
		if(name.trim() != user.trim()) {
			$('#warning-name').show()
			return false;
		} else { 
			$('#warning-name').hide()
		}
		var email = $('#input-email').val()
		if(!email.trim()) {
			$('#warning-email').show()
			return false;
		} else { 
			$('#warning-email').hide()
		}
		var emailCheck = $('#input-email-check').val()
		if(emailCheck.trim() != email) {
			$('#warning-email-check').show()
			return false;
		} else { 
			$('#warning-email-check').hide()
		}
		var date = $('#input-date').val()
		var user = $('#user-birth').val()
		console.log(date)
		if(date != user) {
			$('#warning-date').show()
			return false;
		} else { 
			$('#warning-date').hide()
			$('#process1').removeClass('text-primary').addClass('text-dark')
			$('#form-info').hide(500)
			$('#form-certification').show()
		}
	})
	
	$('#btn-next2').on('click', function() {
		
		var phone = $('#input-phone').val()
		var user = $('#user-phone').val()
		if(phone.trim() != user.trim()) {
			$('#warning-phone').show()
			return false;
		} else {
			$('#warning-phone').hide()
		}
		var number = $('#input-number-check').val()
		if(number != 'abc') {
			$('#warning-number-check').show()
			return false;
			//math그걸로 돌려서 넣을까
		} else {
			$('#warning-number-check').hide()
			$('#process1').removeClass('text-primary').addClass('text-dark')
			$('#form-certification').hide(500)
			$('#form-bank').show()
		}
	})

	$('#form-tr').submit(function() {
		
		var selectCurrency = $('#select-currency').val()
		console.log(selectCurrency)
		if(!selectCurrency) {
			$('#warning-currency').show()
			return false;
		} else {
			$('#warning-currency').hide()
		}
		
		var selectPayWays = $('#select-payways').val()
		if(!selectPayWays) {
			$('#warning-payways').show()
			return false
			//math그걸로 돌려서 넣을까
		} else {
			$('#warning-payways').hide()
		}
		
		var selectbank = $('#select-bank').val()
		if(!selectbank) {
			$('#warning-bank').show()
			return false
		} else {
			$('#warning-bank').hide()
		}
		
		var inputAccount = $('#input-account').val()
		if(!inputAccount) {
			$('#warning-account').show()
			return false
		} else {
			$('#warning-account').hide()
			$('#process1').removeClass('text-primary').addClass('text-dark')
		}
		return ture
	})
//1994-10-02 00:00:00		
		/*
//		$('#input-name').focusout(function() {
//			var name = $.trim($('#input-name').val())
//			if(name == '') {
//				$('#warning-name').show()
//				$('#btn-next').prop('disabled') 
//			} else {
//				$('#warning-name').hide()
//				
//			}
//		})
	
		$('#input-email').focusout(function() {
			var email = $.trim($('#input-email').val())
			if(email == '') {
				$('#warning-email').show()
				$('#btn-next').prop('disabled') 
			} else {
				$('#warning-email').hide()
				
			}
		})
	
		$('#input-email-check').focusout(function() {
			var emailCheck = $.trim($('#input-email-check').val())
			if(emailCheck == '') {
				$('#warning-email-check').show()
				$('#btn-next').prop('disabled')  
			} else {
				$('#warning-email-check').hide()
				
			}
		})
		
		$('#input-date').focusout(function() {
			var date = $.trim($('#input-date').val())
			if(date == '') {
				$('#warning-date').show()
				$('#btn-next').prop('disabled')  
			} else {
				$('#warning-date').hide()
				
			}
		})
		$('#form-info').hide(500)
		$('#form-certification').show()
	})	

	$('#input-phone').focusout(function() {
		var phone = $.trim($('#input-phone').val())
		if(phone == '') {
			$('#warning-phone').show()
			$('#btn-confirm').prop('disabled') 
		} else {
			$('#warning-phone').hide()
			
		}
	})
	
	$('#input-confirm').focusout(function() {
		var confirm = $.trim($('#input-confirm').val())
		if(confirm == '') {
			$('#warning-confirm').show()
			$('#btn-confirm').disabled ='disabled' 
		} else {
			$('#warning-confirm').hide()
			
		}
*/
/*
var name = $.trim($('#input-name').val())
var email = $.trim($('#input-email').val())
var emailCheck = $.trim($('#input-email-check').val())
var date = $.trim($('#input-date').val())
//만약 하나라도 경고창이있으면 다음버튼 비활성화이렇게할까?
	$('#btn-next1').on('click',function() {
		if(name == '') {
			$('#warning-name').show()
			$('#btn-next').disabled ='disabled' 
		}
		if(email == '') {
			$('#warning-email').show()
			$('#btn-next').disabled ='disabled' 
		}
		if(emailCheck == '') {
			$('#warning-email-check').show()
			$('#btn-next').disabled ='disabled' 
		}
		if(date == '') {
			$('#warning-date').show()
			$('#btn-next').disabled ='disabled'  
		} 
		if(name && email && emailCheck && date != '') {
			$('#btn-next').removeAttr('disabled')
			$('#process1').removeClass('text-primary').addClass('text-dark')
			$('#form-info').hide(500)
			$('#form-certification').show()
		}
	})
	
	*/
})
</script>