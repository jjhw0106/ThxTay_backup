<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Listings</title>
<!-- 여기를 먼저? -->
<style type="text/css">
.container {
}

h1 {
	font-size: 25px;
	font-weight: bolder;
}

#lists th, #lists td{
	padding: 20px 0;
}

#lodgingImg {
	width: 30px;
}
</style>

<div class="container">
	<main class="pt-5">
		<div class="mb-5">
			<div class="d-flex justify-content-between mb-4">
				<h1>숙소</h1>
			</div>
		</div>
		<div>
			<table class="table lodging-table">
				<thead class="text-center">
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
				<tbody class="text-center">
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
								<td><img id="lodgingImg" src="${pageContext.request.contextPath}/resources/images/upload/defaultProfile.jpg">  ${lodging.name }</td>

								<c:if test="${lodging.status eq 'LDG0303'}">
									<td>승인</td>
								</c:if>
								<c:if test="${lodging.status eq 'LDG0301'}">
									<td>등록중</td>
								</c:if>

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