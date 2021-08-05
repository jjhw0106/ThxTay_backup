<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Listings</title>
<!-- 여기를 먼저? -->
<style type="text/css">
.container {
	padding:0;
}

h1 {
	font-size: 25px;
	font-weight: bolder;
}

.filter-box {
	width: 330px;
	border-radius: 20px;
}

.filter-header, .filter-input {
	padding: 6px 12px 8px 12px;
	border-radius: 20px;
}

.input-group {
	width: unset;
}
</style>
</head>
<body>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>	<!-- 이거 설명..? 어떤 버전이여도 상관 없는지.. -->
<div class="container">
	<main class="pt-5">
		<div class="mb-5">
			<div class="d-flex justify-content-between mb-4">
				<h1>숙소 N개</h1>
				<button>숙소 새로 등록하기</button>
			</div>	
			<div class="d-flex flex-row bd-highlight">
				<div class="input-group">
				 	<span class="filter-input input-group-text">ㅇ</span>
					<input type="text" class="filter-input me-5" placeholder="숙소검색" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				<button id="menu-filter-bed"class="filter-header me-4">침실 및 침대</button>
				<button id="menu-filter-amenity" class="filter-header me-4">편의시설</button>
				<button id="menu-filter-status" class="filter-header me-4">숙소 상태</button>
				<button class="filter-header me-4">필터 더 보기</button>
			</div>
		</div>
		<div>
			<table class="table lodging-table">
				<thead>
					<tr>
						<th scope="col">
							<input type="checkbox">
							<span data-checkbox="true"></span>
						</th>
						<th scope="col">숙소</th>
						<th scope="col">상태</th>
						<th scope="col">위치</th>
						<th scope="col">즉시예약가능</th>
						<th scope="col">침실</th>
						<th scope="col">싱글배드</th>
						<th scope="col">더블배드</th>
						<th scope="col">욕실</th>
						<th scope="col">리뷰 평점</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty lodgings}">
							<tr class="align-middle">
								<td colspan="9" class="text-center">등록된 숙소가 존재하지 않습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="lodging" items="${lodgings}">
							<tr id="lists">
								<th scope="row">
									<input type="checkbox">
									<span data-checkbox="true"></span>
								</th>
								<td><img src="resources/images/banners/item.png">${lodging.name }</td>
								<td>${lodging.status}</td>
								<td>${lodging.address }</td>
								<td>${lodging.immApproval }</td>
								<td>${lodging.bedroom }</td>
								<td>${lodging.singlebed }</td>
								<td>${lodging.doublebed }</td>
								<td>${lodging.bathroom }</td>
								<td>${lodging.reviewAverage }</td>
							</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	</main>
</div>
<form id="form-filtering">
	<div id="filter-space"class="shadow-lg p-3 mb-5 filter-box" style="display:none;">
		<div class="p-4">
			<div class="d-flex justify-content-between">
				<span>침실</span>
				<div class="d-inline-flex">
					<input type="button" id="btn-bR-minus" data-bed-no="${lodging.bedroom }" class="filter-buttons filter-button-minus" value="-" />
					<input type="button" id="input-bR" name="value" class="filter-buttons filter-button-value" value="0">
					<input type="button" id="btn-bR-plus" class="filter-buttons" value="+" />
				</div>
			</div>
			<div class="d-flex justify-content-between mt-4">
				<span>주방</span>
				<div class="d-inline-flex">
					<input type="button" id="btn-kChen-minus" class="filter-buttons filter-button-minus" value="-" />
					<input type="button" id="input-kChen" name="value" class="filter-buttons" value="0">
					<input type="button" id="btn-kChen-plus" class="filter-buttons" value="+" />
				</div>
			</div>
			<div class="d-flex justify-content-between mt-4">
				<span>욕실</span>
				<div class="d-inline-flex">
					<input type="button" id="btn-bTR-minus" class="filter-buttons filter-button-minus" value="-" />
					<input type="button" id="input-bTR" name="value" class="filter-buttons" value="0">
					<input type="button" id="btn-bTR-plus" class="filter-buttons" value="+" />			
				</div>
			</div>
		</div>	
		<div class="d-flex justify-content-between p-4 border-top">
			<button>삭제</button>
			<button class="doFiltering">적용하기</button>
		</div>
	</div>
	<div id="filter-status" class="shadow-lg p-3 mb-5 filter-box" style="display:none;">
		<div class="p-4">
			<div class="d-flex">
				<span class="m-2"><input type="checkbox" class="me-3">등록중</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">승인대기</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">승인</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">휴업</span>
			</div>	
			<div class="d-flex justify-content-between p-4 border-top">
				<button>삭제</button>
				<button class="doFiltering">적용하기</button>
			</div>
		</div>
	</div>
	<div id="filter-amenity" class="shadow-lg p-3 mb-5 filter-box" style="display:none;">
		<div class="p-4">
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">침실수</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">욕실수</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">싱글베드</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">더블베드</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">부엌</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">에어컨</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">난방</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">세탁기</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">건조기</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">와이파이</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">주차장</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">헬스장</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">수영장</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">테라스</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">공원</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">호수와 가까움</span>
			</div>	
			<div class="d-flex justify-content-between">
				<span class="m-2"><input type="checkbox" class="me-3">해변과 가까움</span>
			</div>	
			<div class="d-flex justify-content-between p-4 border-top">
				<button>삭제</button>
				<button class="doFiltering">적용하기</button>
			</div>
		</div>
	</div>
</form>
<script type="text/javascript">
//스크립트 맨 마지막꺼 보고 강사님한테 질문하기
// sample-09-dom.html처럼 tbody없애고 할 수 있는지 꼭 배열이 필요한지?
// 검색필터 전부다 써야하는지? 
//document쓰지 말아라!!
$('.doFiltering').click(function() {
	$lodgingTableTbody = $('#lodging-table tbody').empty()
	$.ajax({
		type: "GET",
		url: "/host/filtering",
		data: $("#form-filtering").serialize(),
		dataType:'filtering/json',
		success: function(lodgingLists) {
			$.each(lodgingLists, function(index, lodgings) {
				var row = "<tr>"
				row += "<td>"+'<img src="resources/images/banners/item.png">'+lodgings.name+"</td>"
				row += "<td>"+lodgings.status+"</td>"
				row += "<td>"+lodgings.address+"</td>"
				row += "<td>"+lodgings.immApproval+"</td>"
				row += "<td>"+lodgings.bedroom+"</td>"
				row += "<td>"+lodgings.singleroom+"</td>"
				row += "<td>"+lodgings.doublebed+"</td>"
				row += "<td>"+lodgings.bathroom+"</td>"
				row += "<td>"+lodgings.reviewAverage+"</td>"
				row += "</tr>";

				$lodgingTableTbody.append(row);
			})
		}	
	})	
});

$(function() {
	
	$('#menu-filter-bed').click(function(event) {
		event.preventDefault()
		
		//data-bed-no -> bed-no 이렇게 ok
		var bedNo = $(this).data('bed-no')	//여기 숫자를 받아와서 기존 디비랑 비교?
		
		if($('#form-filtering #filter-space').css('display') == 'none') {
			$('#filter-space').show()
			
			var filterBedroom = $(this).data('filter-bR')
		} else {
			$('#filter-space').hide()
		}
	})
	
	
	$('#menu-filter-amenity').click(function(event) {
		event.preventDefault()
		if($('#form-filtering #filter-amenity').css('display') == 'none') {
			$('#filter-amenity').show()
		} else {
			$('#filter-amenity').hide()
		}
	})
	
	$('#menu-filter-status').click(function(event) {
		event.preventDefault()
		if($('#form-filtering #filter-status').css('display') == 'none') {
			$('#filter-status').show()
		} else {
			$('#filter-status').hide()
		}
	})
	
		/* 필터 for 침실 및 침대 */
			/* 침실 */
	$('#btn-bR-minus').click(function() {
		var count = $('#input-bR').val()
		$('#input-bR').val(count-1)
	})
	$('#btn-bR-plus').click(function() {
		$('#btn-bR-minus').prop('disabled',false)
		var count = $('#input-bR').val()
		$('#input-bR').val(parseInt(count) +1)
	})
			/* 주방 */
	$('#btn-kChen-minus').click(function() {
		var count = $('#input-kChen').val()
		$('#input-kChen').val(count-1)
	})
	$('#btn-kChen-plus').click(function() {
		var count = $('#input-kChen').val()
		$('#input-kChen').val(parseInt(count) +1)
	})
			/* 욕실 */
	$('#btn-bTR-minus').click(function() {
		var count = $('#input-bTR').val()
		$('#input-bTR').val(count-1)
	})
	$('#btn-bTR-plus').click(function() {
		var count = $('#input-bTR').val()
		$('#input-bTR').val(parseInt(count) +1)
	})
	
	/* 필터 for 편의시설 */
	/*
	*/
	
})
</script>
</body>
</html>