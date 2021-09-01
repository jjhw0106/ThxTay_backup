<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 본문 -->
<div id="page-content-wrapper" style="padding-top: 5%;">
	<div class="container-fluid">
		<div class="d-flex bd-highlight mb-3">
			<div class="mr-auto p-2 bd-highlight align-self-end">
				<h6>숙소관리 > 숙소관리 </h6>
			</div>
			<br><br>
			<div class="input-group p-2 bd-highlight" style="width: 300px !important;">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-default"><i class="fas fa-search"></i></span>
				</div>
				<input type="text" class="form-control" aria-describedby="inputGroup-sizing-default" placeholder="이름을 입력하세요" id="keyword">
			</div>
		</div>
		
		<div style="height: 700px; overflow-y: auto;">
			<table class="table table-hover tableCSS" id="user-table"></table>
		</div>
		<div class="d-flex justify-content-center">
			<nav aria-label="Page navigation example" class="paginated" id="user-page"></nav>
		</div>
	</div>
</div>
<!-- /본문 -->

<!-- UserList -->
<script>
	// 목록
	$(function () {
		$('#remo').remove();
		// table 내부 내용 모두 제거(초기화)
		$('#user-table').empty();
		$.ajax({
			url: '/admin/getLodging',
			type: 'POST',
			dataType : "json", //서버에서 보내줄 데이터 타입
			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
			success:function(data) {
				var title = '';
				title += '<thead class="text-center">';
				title += '<tr>';
				title += '<th style="width: 10%;">번호</th>';
				title += '<th style="width: 25%;">숙소이름</th>';
				title += '<th style="width: 10%;">도시</th>';
				title += '<th style="width: 25%;">주소</th>';
				title += '<th style="width: 10%;">최대인원수</th>';
				title += '<th style="width: 10%;">숙소상태</th>';
				title += '<th style="width: 10%;">숙소타입</th>';
				title += '</tr>';
				title += '</thead>';
				$('#user-table').append(title);
				$.each(data, function(index, item) {
					var output = '';
					output += '<tbody class="text-center">'
					output += '<tr>';
					output += '<td>' + item.no + '</td>';
					output += '<td>' + item.name + '</td>';
					output += '<td>' + item.city + '</td>';
					output += '<td>' + item.address + '</td>';
					output += '<td>' + item.maxGuest + '</td>';
					if (item.status == 'LDG0303') {
						output += '<td>등록완료</td>';
					} else if (item.status == 'LDG0302'){
						output += '<td>등록대기</td>';
					} else {
						output += '<td>등록중</td>';
					}

					if (item.lodgingTypeCode == 'LDG0201') {
						output += '<td>집전체</td>';
					} else if (item.lodgingTypeCode == 'LDG0202') {
						output += '<td>개인실</td>';
					} else if (item.lodgingTypeCode == 'LDG0203') {
						output += '<td>호텔객실</td>';
					} else {
						output += '<td>다인실</td>';
					}

					output += '</tr>';
					output += '</tbody>'
					console.dir("output : " + output);
					$('#user-table').append(output);
				});
				page();
			},
			error: function(request,status,error) {
				alert("ajax memberlist 통신 실패!");
				alert("code:"+request.status+"\n"+"error:"+error);
			}
		});
	});

	// 만들어진 테이블에 페이지 처리
	function page() { 	
		$('#remo').empty();
		var reSortColors = function($table) {};
		$('nav.paginated').each(function() {
			var pagesu = 10;  //페이지 번호 갯수
	  		var currentPage = 0;
	  		var numPerPage = 10;  //목록의 수
	  		var $table = $('#user-table');    
	  		var $user = $('#user-page');
	  
			//length로 원래 리스트의 전체길이구함
			var numRows = $table.find('tbody tr').length;
			//Math.ceil를 이용하여 반올림
			var numPages = Math.ceil(numRows / numPerPage);
			//리스트가 없으면 종료
			if (numPages==0) return;
			//pager라는 클래스의 div엘리먼트 작성
			var $pager = $('<ul id="remo" class="pager pagination"></ul>');
			
			var nowp = currentPage;
			var endp = nowp+10;
	  
			//페이지를 클릭하면 다시 셋팅
			$table.bind('repaginate', function() {
			//기본적으로 모두 감춘다, 현재페이지+1 곱하기 현재페이지까지 보여준다
	  
				$table.find('tbody tr').hide().slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show();
				$("#remo").html("");
	   
				if (numPages > 1) {     // 한페이지 이상이면
					if (currentPage < 5 && (numPages-currentPage) >= 5) {   // 현재 5p 이하이면
						nowp = 0;     // 1부터 
						endp = pagesu;    // 10까지
					} else {
						nowp = currentPage -5;  // 6넘어가면 2부터 찍고
						endp = nowp+pagesu;   // 10까지
						pi = 1;
					}
				 
					if (numPages < endp) {   // 10페이지가 안되면
						endp = numPages;   // 마지막페이지를 갯수 만큼
						nowp = numPages-pagesu;  // 시작페이지를   갯수 -10
					}
					if (nowp < 1) {     // 시작이 음수 or 0 이면
						nowp = 0;     // 1페이지부터 시작
					}
				} else {       // 한페이지 이하이면
					nowp = 0;      // 한번만 페이징 생성
					endp = numPages;
				}
				// [처음]
				$('<li class="page-item" cursor: "pointer"><a class="page-link" href="#">처음</a></li>').bind('click', {newPage: page},function(event) {
					currentPage = 0;   
					$table.trigger('repaginate');  
					$($(".page-item")[2]).addClass('active').siblings().removeClass('active');
				}).appendTo($pager).addClass('clickable');
				
		    	// [이전]
				$('<li class="page-item" cursor: "pointer"><a class="page-link" href="#">이전</a></li>').bind('click', {newPage: page},function(event) {
					if(currentPage == 0) return; 
					currentPage = currentPage-1;
					$table.trigger('repaginate'); 
					$($(".page-item")[(currentPage-nowp)+2]).addClass('active').siblings().removeClass('active');
				}).appendTo($pager).addClass('clickable');
		    	
		    	// [1,2,3,4,5,6,7,8]
				for (var page = nowp ; page < endp; page++) {
					$('<li class="page-item" cursor: "pointer"></li>').html('<a class="page-link" href="#">' + (page + 1) + '</a>').bind('click', {newPage: page}, function(event) {
						currentPage = event.data['newPage'];
						$table.trigger('repaginate');
						$($(".page-item")[(currentPage-nowp)+2]).addClass('active').siblings().removeClass('active');
					}).appendTo($pager).addClass('clickable');
				}
		    	
		    	// [다음]
				$('<li class="page-item" cursor: "pointer"><a class="page-link" href="#">다음</a></li>').bind('click', {newPage: page},function(event) {
					if(currentPage == numPages-1) return;
					currentPage = currentPage+1;
					$table.trigger('repaginate'); 
					$($(".page-item")[(currentPage-nowp)+2]).addClass('active').siblings().removeClass('active');
				}).appendTo($pager).addClass('clickable');
		    	
		    	// [끝]
				$('<li class="page-item" cursor: "pointer"><a class="page-link" href="#">끝</a></li>').bind('click', {newPage: page},function(event) {
					currentPage = numPages-1;
					$table.trigger('repaginate');
					$($(".page-item")[endp-nowp+1]).addClass('active').siblings().removeClass('active');
				}).appendTo($pager).addClass('clickable');
		     
		     	$($(".page-item")[2]).addClass('active');
	  		});
			
			$pager.insertAfter($pager).find('li.page-item:first').next().next().addClass('active');   
			$pager.appendTo($user);
			$table.trigger('repaginate');
		});
	}
	
	$(document).ready(function() {
		$("#keyword").keyup(function() {
			var k = $(this).val();
			$("#user-table > tbody > tr").hide();
			var temp = $("#user-table > tbody > tr > td:nth-child(10n+3):contains('" + k + "')");
			
			$(temp).parent().show();					
		})
	})
</script>

