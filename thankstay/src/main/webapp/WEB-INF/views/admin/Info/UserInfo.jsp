<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="pt-3">
	<table class="table table-striped">
		<colgroup>
			<col style="width:30%">
			<col style="width:70%">
		</colgroup>
		<tr>
			<th scope="row">프로필사진</th>
			<td>
				<c:choose>
					<c:when test="${UserVO.phone eq '010-1234-5678'}">
						<img src="${UserVO.picture}" style="width: 200px; height: 200px;">
					</c:when>
					<c:otherwise>
						<img src="${pageContext.request.contextPath}/resources/images/upload/${UserVO.picture}" style="width: 200px; height: 200px;">
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
		<tr>
			<th scope="row">생년월일</th>
			<td>${UserVO.birth}</td>
		</tr>
		<tr>
			<th scope="row">이름</th>
			<td>${UserVO.name}</td>
		</tr>
		<tr>
			<th scope="row">핸드폰</th>
			<td>${UserVO.phone}</td>
		</tr>
		<tr>
			<th scope="row">이메일</th>
			<td>${UserVO.email}</td>
		</tr>
		<tr>
			<th scope="row">가입날짜</th>
			<td>${UserVO.createdDate}</td>
		</tr>
		<tr>
			<th scope="row">호스트여부</th>
			<td>${UserVO.isHost}</td>
		</tr>
	</table>
	<div class="d-flex justify-content-center">
		<button type="button" class="btn btn-outline-dark btn-lg" onclick="window.close();">닫기</button>
	</div>
</div>