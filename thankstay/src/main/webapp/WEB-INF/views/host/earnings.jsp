<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.row>* {
	padding:0;
	--bs-gutter-x: 0;
}

#second-section, #third-section {
	width: 800px;
}

#first-section {
	margin-top: 50px;
}

h1 {
	margin: 0;
	font-weight: bolder;
	color: #484848;
}

h2 {
	font-weight: 600;
	padding: 20px 0;
}

#date-box {
	border-color: #ebebeb;
	height: 45px;
	display: block;
}

#details-box .section-style{
	border-top: 1px solid #EBEBEB;
	padding: 24px 0;
}

#menu  {
	border-bottom: 1px solid #EBEBEB;
}

#menu a {
	margin: 0 18px 0 0;
	padding: 20px 0;
	display: inline-block;
}

#menu a:eq(2){
	border-bottom: 1px solid black;
}

#select-box label {
	font-size: 16px;
	font-weight: bold;
	margin: 40px 0 15px 0;
}

#earnings-box {
	margin: 35px 0 30px 0;
}

#eptIncome-section {
	margin-left: 25px;
}

.earnings-fee {
	font-weight: 800;
}

#earnings-bar {
	border-bottom: 1px solid black;
}

#third-section {
	margin: 50px 0;
}
</style>


<div class="container p-0" >
	<section id="first-section">
		<h1>수입</h1>
		<div id="menu">
			<a href=#>발전 기회</a>
			<a href=#>후기</a>
			<a id="earnings-bar" href=#>수입</a>
			<a href=#>조회수</a>
			<a href=#>슈퍼호스트</a>
			<a href=#>청소</a>
		</div>
	</section>
	<section id="second-section">
		<div id="select-box" class="row">
			<label>월선택</label>
			<select id="date-box" name="startDate" class="col rounded">
			</select>
		</div>		
		<div id="earnings-box" class="nav row col-md-7 border-bottom border-light gap-3">
			<div>
				<div id="totalIncome"><span class="fs-1 earnings-fee"></span></div>
				<span><strong id="selected-month" class="text-danger fs-3"></strong>월 총 예약수입</span>
			</div>
			<div class="d-flex">
				<section>
					<div id="cfdIncome"><span class="d-block fs-2 earnings-fee"></span></div>
					<span>수입확정</span>
				</section>
				<section id="eptIncome-section">
					<div id="eptIncome"><span class="d-block fs-2 earnings-fee"></span></div>
					<span>수입예정</span>
				</section>
			</div>
		</div>
		<div id="columnchart_material" style="width: 800px; height: 500px;"></div>
	</section>
	<section id="third-section">
		<div id="details-box">
			<h2 id="cntYear"></h2>
			<section class="section-style"><span class="d-table-cell w-100">청소비</span><span id="fee-cleaning" class="d-table-cell"></span></section>
			<section class="section-style"><span class="d-table-cell w-100">취소 수수료</span><span id="fee-cancel" class="d-table-cell">￦0</span></section>
			<section class="section-style"><span>대금 수령내역 보기<br></span></section>
			<section class="section-style"><span>세금정보 보기</span></section>
			<section class="section-style"><a href="#">피드백 보내기</a></section>
		</div>
	</section>
</div>

<script src="https://momentjs.com/downloads/moment-with-locales.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

$(function() {
	//셀렉트박스에 2021 X월
	var option = "";
	
	var twoMonthsAgoText = moment().subtract(2, 'months').format('YYYY년 M월')
	var twoMonthsAgoValue = moment().subtract(2, 'months').format('YYYY-MM')+'-01'
	option += '<option value="'+twoMonthsAgoValue+'">'+twoMonthsAgoText+'</option>'
	
	var oneMonthAgoText = moment().subtract(1, 'months').format('YYYY년 M월')
	var oneMonthAgoValue = moment().subtract(1, 'months').format('YYYY-MM')+'-01'
	option += '<option value="'+oneMonthAgoValue+'">'+oneMonthAgoText+'</option>'
	
	var todayText = moment().format('YYYY년 M월')
	var todayValue = moment().format('YYYY-MM')+'-01'
	option += '<option value="'+todayValue+'" selected>'+todayText+'</option>'
	
	var oneMonthLaterText = moment().add(1, 'months').format('YYYY년 M월')
	var oneMonthLaterValue = moment().add(1, 'months').format('YYYY-MM')+'-01'
	option += '<option value="'+oneMonthLaterValue+'">'+oneMonthLaterText+'</option>'

	var twoMonthsLaterText = moment().add(2, 'months').format('YYYY년 M월')
	var twoMonthsLaterValue = moment().add(2, 'months').format('YYYY-MM')+'-01'
	option += '<option value="'+twoMonthsLaterValue+'">'+twoMonthsLaterText+'</option>'

	$('#date-box').html(option)
	
	var years = new Date()
	var year = years.getFullYear()
	$('#cntYear').text(year+ '세부정보')
	
	$('#totalIncome span').text('￦0');
	$('#cfdIncome span').text('￦0');
	$('#eptIncome span').text('￦0');
	
	//차트 그려짐
	google.charts.load('current', {'packages':['bar']});
	google.charts.setOnLoadCallback(drawChart);
	
	//차트 객체를 담을 변수(첫 페이지는 0이 나온다.)
   var chart;
   var options = {
    chart: {
      title: 'EARNINGS 2021',
      subtitle: 'confirmedIncome, expectingIncome',
    }
  };
	function drawChart() {
	  var data = google.visualization.arrayToDataTable([
	    ['months', 'confirmedIncome', 'expectingIncome']
	  ]);
	
	chart = new google.charts.Bar(document.getElementById('columnchart_material'));
	  chart.draw(data, google.charts.Bar.convertOptions(options));
	}
	
	//전달 받은 데이터로 차트를 갱신
	function refreshChart(earningsList) {
		var array = [['months', '확정금액', '예정금액']]
		$.each(earningsList, function(index, earnings) {
			var item = [earnings.months, earnings.confirmedIncome, earnings.expectingIncome]
			array.push(item)
		})
		var data = google.visualization.arrayToDataTable(array)
		chart.draw(data, google.charts.Bar.convertOptions(options));
	}
	
	//전달받은 날짜에 해당하는 데이터를 조회하는 함수
	function getEarningsDate(date) {
		console.log("조회할 날짜", date)
		$.ajax({
			url:'/host/earningsJson',
			data: {startDate: date},
			dataType: 'json',
			success: function(data) {
				var earnings = data.earnings
				var earningsList = data.chart
				console.log(earnings)
				console.log(earningsList)
					$('#totalIncome span').text('￦' + new Number(earnings.confirmedIncome+earnings.expectingIncome).toLocaleString());
					$('#cfdIncome span').text('￦' + new Number(earnings.confirmedIncome).toLocaleString());
					$('#eptIncome span').text('￦' +  new Number(earnings.expectingIncome).toLocaleString());
					
					$('#fee-cleaning').text('￦' +  new Number(earnings.confirmedIncomeCleaningFee + earnings.expectingIncomeCleaningFee).toLocaleString());
					$('#fee-cancel').text('￦' +  new Number(earnings.canceledIncome).toLocaleString());
					//차트 그리기
					refreshChart(earningsList)
			}
		})
	}
	$('[name=startDate]').change(function() {
		var months = new Date($(this).val()).getMonth()+1
		$('#selected-month').text(months)
		getEarningsDate($(this).val())
	})
  	//페이지가 열리면 무조건 오늘날짜의 정보 조회
  	getEarningsDate(moment().format('YYYY-MM')+'-01')
		
})

/*
$(function() {

	var date = new Date()
	var yearFormat = date.getFullYear()
	var cntYear = String(yearFormat)
	
	var dateFormat = date.getMonth()
	var cntMonth = String(dateFormat)
	
	var currentDate = cntYear + cntMonth
	console.log(currentDate)
	
	getCurrentDate(currentDate)
	
	$('#date-box').val(currentDate)
	
	$('#date-box').change(function() {
		var chgDate = $(this).val()
		getCurrentDate(chgDate)
		$('#date-box').val(chgDate)
	
	})
	function getCurrentDate(getD) {
		$('#date-box option').remove()
		
		var stDate = Number(getD)-2
		console.log(stDate)
		
		var edDate = Number(getD)+5
		console.log(edDate)
		for(var y = stDate; y<= edDate; y++) {
			$('#date-box').append("<option value='"+ y +"'>"+ y +"</option>")
		}
		
	}
})
*/
/*
$(function() {

	var date = new Date()
	var currentDate = date.getFullYear() + "-" + (date.getMonth())
	console.log(currentDate)
	
	getCurrentDate(currentDate)
	
	$('#dateBox').val(currentDate)
	
	$('#dateBox').change(function() {
		var chgDate = $(this).val()
		getCurrentDate(chgDate)
		$('#dateBox').val(chgDate)
	
	})
})
	function getCurrentDate(getD) {
		$('#dateBox option').remove()
		
		var stDate = Number(getD)-2
		var edDate = Number(getD)+5
		for(var y = stDate; y<= edDate; y++) {
			$('#dateBox').append("<option value='"+ y +"'>"+ y +" 년" +"</option>")
		}
		
	}
*/
</script>