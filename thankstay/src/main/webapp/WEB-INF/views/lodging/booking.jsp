<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" >
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<style type="text/css">
	.bg-primary {
 	 background: #bd83ce !important; }

	.ftco-section {
	  padding-top: 48px;
	  padding-bottom: 48px; }
	
	.ftco-no-pt {
	  padding-top: 0; }
	
	.ftco-no-pb {
	  padding-bottom: 0; }
	
	.heading-section {
	  font-size: 22px;
	  color: rgb(34, 34, 34);
	  font-weight: 600; }
	
	.subheading-section {
	  height: 36px;
	  font-size: 14px; }
	
	.img {
	  background-size: cover;
	  background-repeat: no-repeat;
	  background-position: center center; }
	
	.calendar-section {
	  margin-bottom: 20px; }
	
	.calendar, .calendar_weekdays,
	.calendar_content {
	  max-width: 585px; }
	
	.calendar {
	  /*float: left;*/
	  margin: auto;
	  min-width: 320px;
	  font-weight: 400;
	  background: transparent;
	  padding: 10px;
	  -webkit-box-shadow: 0px 4px 26px -22px rgba(0, 0, 0, 0.14);
	  -moz-box-shadow: 0px 4px 26px -22px rgba(0, 0, 0, 0.14);
	  box-shadow: 0px 4px 26px -22px rgba(0, 0, 0, 0.14); }
	
	.calendar_weekdays {
	  color: #aaa;
	  font-weight: 300; }
	
	.calendar_weekdays div {
	  display: inline-block;
	  vertical-align: top;
	  color: #000;
	  font-weight: 700; }
	
	.calendar_content, .calendar_weekdays, .calendar_header {
	  position: relative; }
	
	.calendar_content:after, .calendar_weekdays:after, .calendar_header:after {
	  content: ' ';
	  display: table;
	  clear: both; }
	
	.calendar_weekdays div, .calendar_content div {
	  /*border: 1px dotted #999;*/
	  width: 14.28571%;
	  height: 68px;
	  line-height: 69px;
	  overflow: hidden;
	  text-align: center;
	  background-color: transparent; }
	
	.calendar_content div {
	  float: left;
	  margin-left: -1px;
	  margin-top: -1px;
	  border: 1px solid transparent;
	  border-radius: 5px; }
	
	.calendar_content div:hover {
	  border: 1px solid #ededed;
	  /*line-height: 68px;*/
	  cursor: pointer; }
	
	.calendar_content div.blank:hover {
	  cursor: default;
	  border: none; }
	
	.calendar_content div.past-date {
	  cursor: initial;
	  color: #d5d5d5; }
	
	.calendar_content div.today {
	  font-weight: 700;
	  font-size: 18px;
	  color: #fff;
	  background-color: #bd83ce; }
	
	.calendar_content div.selected {
	  background-color: rgba(153, 153, 161, 0.2);
	  /*rgba(170, 170, 176, .5) #aaaab0*/
	  border: 1px solid white; }
	
	.calendar_header {
	  width: 100%;
	  text-align: center;
	  position: relative;
	  height: 55px;
	  display: table;
	  vertical-align: middle; }
	
	.calendar_header h2 {
	  margin-top: 15px;
	  padding: 0;
	  font-weight: 700;
	  font-size: 18px;
	  color: #000 !important;
	  text-transform: uppercase; }
	
	button.switch-month {
	  background-color: transparent;
	  padding: 0;
	  outline: none;
	  border: none;
	  height: 40px;
	  width: 40px;
	  position: absolute;
	  top: 50%;
	  -webkit-transform: translateY(-50%);
	  -ms-transform: translateY(-50%);
	  transform: translateY(-50%);
	  color: #cccccc;
	  -webkit-transition: color .2s;
	  -o-transition: color .2s;
	  transition: color .2s; }
	  button.switch-month.switch-left {
	    left: 0; }
	  button.switch-month.switch-right {
	    right: 0; }
	
	button.switch-month:hover {
	  color: #bd83ce; }
	
	button.switch-month:active {
	  background-color: transparent; }

	.detail-title {
		font-size: 32px !important;
		line-height: 30px !important;
		font-weight: 600 !important;
	}
	.detail-header {
		display: flex;
		justify-content: space-between;
	}
	.detail-subtitle {
		display: flex;
	}
	.button-reviewcount, .button-map {
		background: transparent;
		border: none;
		color: rgb(113, 113, 113);
		font-size: 14px;
		font-weight: 600;
		text-decoration: underline;
		padding: 5px;
	}
	.dot {
		color: rgb(113, 113, 113);
		padding: 3px;
	}
	.buttoncollection {
		display: flex;
		justify-content: flex-end;
	}
	.button-share, .button-zzim {
		background: transparent;
		border: none;
		text-decoration: underline;
		padding: 5px;
	}
	.share, .zzim {
		display: flex;
		align-items: center;
	}
	.imageborder {
		border-radius: 12px;
		overflow-y: hidden;
	}
	.imagecollection {
		height: 0;
		min-height: 100%;
		min-width: 100%;
		position: relative;
		padding-top: 50%;
	}
	.imagecollection1 {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
	.image1 {
		height: 100%;
		width: 50%;
		left: 0px;
		top: 0px;
		position: absolute;
	}
	.image1setup, .image2setup, .image3setup, .image4setup, .image5setup {
		position: relative;
		width: 100%;
		height: 100%;
	}
	.image1link, .image2link, .image3link, .image4link, .image5link {
		display: block;
		height: 100%;
		position: relative;
		widht: 100%;
		outline: none;
	}
	.xxxxx {
		background-positon: 50% 50%;
	}
	.img1, .img2, .img3, .img4, .img5 {
		height: 100%;
		width: 100%;
	}
	.image23 {
		display: flex;
		flex-direction: column;
		height: 100%;
		width: 25%;
		padding-left: 8px;
		left: 50%;
		top: 0px;
		position: absolute;
	}
	.image2, .image4 {
		height: 50%;
	}
	.image3, .image5 {
		height: 50%;
		display: block;
		padding-top: 8px;
	}
	.image45 {
		display: flex;
		flex-direction: column;
		height: 100%;
		width: 25%;
		padding-left: 8px;
		right: 0px;
		top: 0px;
		position: absolute;
	}
	.view-all {
		position: absolute;
		z-index: 3;
		bottom: 24px;
		right: 24px;
	}
	.view-link {
		display: inline-block;
		margin: 0px;
		position: relative;
		text-align: center;
		text-decoration: none;
		width: auto;
		font-size: 14px;
		line-height: 18px;
		font-weight: 600;
		border-radius: 8px;
		border-style: solid;
		outline: none;
		padding: 7px 15px;
		border-color: rgb(34, 34, 34);
		background: rgb(255, 255, 255);
		color: rgb(34, 34, 34);
	}
	.view-svg {
		display: flex;
		align-items: center;
	}
	.view-text {
		margin-left: 8px;
	}
	
	
	
	.detailbody {
		display:flex;
	}
	.left {
		position: relative;
		width: 58%;
		margin-left: 0% !important;
		margin-right: 0% !important;
	}
	.lodging-status {
		display: block;
	}
	.lodging-status-flex {
		display: flex;
	}
	.lodging-status-content {
		flex: 0 1 100%;
	}
	.lodging-status-content-top {
		color: rgb(34, 34, 34) !important;
		font-size: 28px !important;
		font-weight: 600 !important;
	}
	.photo2 {
		overflow: hidden;
		position: relative;
	}
	.photo3 {
		background-position: 50% 50%;
		background-repeat: no-repeat;
	}
	.photo4 {
		height: 100%;
		width: 100%;
	}
	.lodging-introduction {
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
	}
	.lodging-merit {
		display: flex;
		margin-bottom: 24px;
	}
	.erase {
		display: flex;
		justify-content: flex-end;
		padding-right: 22px;
	}
	.button-erase:hover {
		border: none;
		background: rgb(247, 247, 247) !important;
		color: rgb(0, 0, 0);
	}
	.button-erase {
		width: auto;
		font-size: 14px;
		font-weight: 600;
		border-radius: 8px;
		outline: none;
		padding: 8px;
		border: none;
		background: transparent;
		color: rgb(34, 34, 34);
		text-decoration: underline;
	}
	
	.right {
		position: relative;
		width: 34%;
		margin-left: 8% !important;
		margin-right: 0% !important;
	}
	.booking-sticky {
		position: sticky;
		top: var(--navigation-bar-offset, 80px);
		width: 100%;
	}
	.booking-top {
		margin-bottom: 24px;
	}
	#booking-top {
		color: rgb(34, 34, 34);
		font-weight: 400;
		font-size: 22px;
	}
	.booking-star-rating {
		display: flex;
	}
	.booking-star {
		text-align: center !important;
		padding-top: 9px;
		padding-bottom: 9px;
		padding-right: 7px;
	}
	.booking-mid {
		margin-bottom: 16px;
	}
	.booking-box {
		border: 1px solid rgb(176, 176, 176);
		border-radius: 8px;
		position: relative;
	}
	.booking-check-in-out {
		position: relative;
		display: flex;
		width: 100%;
		background-color: transparent;
		border-radius: 8px 8px 0px 0px;
	}
	.check-in, .check-out, .total-number {
		position: absolute;
		top: 12px;
		left:12px;
		right: 12px;
		font-size: 10px;
		color: rgb(34, 34, 34);
		font-weight: 800;
	}
	.check-in-date, .check-out-date, .guest {
		padding: 26px 12px 10px;
		font-size: 14px;
		color: rgb(113, 113, 113);
	}
	.check-in-box {
		position: relative;
		flex: 1 1 0%;
		width: 100%;
	}
	.check-out-box {
		position: relative;
		flex: 1 1 0%;
		width: 100%;
		border-left: 1px solid rgb(176, 176, 176);
	}
	.booking-total-number {
		display: flex;
		position: relative;
		width: 100%;
		border-top: 1px solid rgb(176, 176, 176);
	}
	.booking-button-adult {
		position: relative;
		width: 100%;
		padding-top: 16px;
		padding-left: 16px;
		padding-right: 16px;
		border-top: 1px solid rgb(176, 176, 176);
	}
	.adult-flex, .child-flex {
		align-items: center;
		display: flex;
		width: 100%;
	}
	.adult-text {
		flex: 1 1 0%;
		font-size: 16px;
		font-weight: 600;
	}
	.button-adult, .button-child {
		display: flex;
	}
	.button-collection {
		display: inline-flex;
		align-items: center;
		justify-content: space-between;
		width: 104px;
		height: 32px;
	}
	.button-minus, .button-minus2 {
		color: rgb(113, 113, 113);
		border-color: rgb(176, 176, 176);
		background: rgb(255, 255, 255);
		width: 32px;
		height: 32px;
		display: inline-flex;
		border-style: solid;
		text-align: center;
		border-width: 1px;
		border-radius: 50%;
		align-items: center;
		justify-content: center;
		font-size: 30px;
		font-weight: 500;
		padding-bottom: 8px;
	}
	.button-minus:hover, .button-minus2:hover {
		border-color: rgb(34, 34, 34);
		background: rgb(255, 255, 255);
		color: rgb(34, 34, 34);
	}
	.adult, .child {
		color: rgb(113, 113, 113);
		font-size: 16px;
	}
	.button-plus, .button-plus2 {
		color: rgb(113, 113, 113);
		border-color: rgb(176, 176, 176);
		background: rgb(255, 255, 255);
		width: 32px;
		height: 32px;
		display: inline-flex;
		border-style: solid;
		text-align: center;
		border-width: 1px;
		border-radius: 50%;
		align-items: center;
		justify-content: center;
		font-size: 25px;
		font-weight: 500;
		padding-bottom: 8px;
	}
	.button-plus:hover, .button-plus2:hover {
		border-color: rgb(34, 34, 34);
		background: rgb(255, 255, 255);
		color: rgb(34, 34, 34);
	}
	.booking-button-child {
		position: relative;
		width: 100%;
		padding-top: 16px;
		padding-left: 16px;
		padding-right: 16px;
	}
	.child-text-box {
		flex: 1 1 0%;
	}
	.child-text {
		font-size: 16px;
		font-weight: 600;
	}
	.child-age {
		font-size: 12px;
	}
	.booking-maxGuest {
		position: relative;
		width: 100%;
		padding: 16px;
	}
	.explanation {
		font-size: 14px;
		color: rgb(34, 34, 34);
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
		width: 100%;
	}
	.booking-fee {
		padding-top: 15px;
	}
	.Lodging-fee, .Cleaning-fee, .service-fee {
		padding-bottom: 12px;
		display: flex;
		justify-content: space-between;
	}
	.fee {
		font-size: 16px;
		color: rgb(34, 34, 34);
		font-weight: 400;
	}
	.booking-total-price {
		border-top: 1px solid rgb(221, 221, 221);
		margin-top: 8px;
		padding-top: 16px;
	}
	.total-price {
		display: flex;
		justify-content: space-between;
	}
	.price {
		font-size: 16px;
		color: rgb(34, 34, 34);
		font-weight: 600;
	}
	
	.modal-dialog {
		z-index: 2000;
		position: fixed;
		inset: 0px;
		display: contents;
	}
	.modal-background {
		background: rgb(255, 255, 255);
		position: relative;
		height: 100%;
		max-height: 100%;
		width: 100vw;
		max-width: 100vw;
		display: flex;
		flex-direction: column;
		amimation-fill-mode: both;
	}
	.modal-close {
		top: 24px;
		position: absolute;
		left:24px;
		z-index: 1;
	}
	.image-content {
		flex: 1 1 auto !important;
		background: rgb(255, 255, 255);
	}
	.image-relative {
		position: relative;
	}
	.image-padding {
		padding-left: 80px;
		padding-right: 80px;
	}
	.image-padding2 {
		padding-bottom: 20px;
		padding-top: 20px;
	}
	.image-width {
		width: 66.6667%;
		margin-left: 16.6667%;
		padding-left: 8px;
		padding-right: 8px;
	}
	.image-grid {
		display: grid;
		gap: 8px;
		grid-template-columns: 1fr;
	}
	.modal-image-grid {
		height: 100%;
		width: 100%;
	}
	.modal-image-relative {
		position: relative;
		width: 100%;
		height: 100%;
	}
	.modal-image1 {
		display: block;
		height: 100%;
		position: relative;
		width: 100%;
	}
	.modal-image-relative2 {
		position: relative;
	}
	.modal-image-size {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
	.modal-image23-grid {
		display: grid;
		grid-auto-columns: 1fr;
		grid-auto-rows: 1fr;
		gap: 8px;
		grid-template-columns: 1fr 1fr;
	}
	.image-header {
		flex-basis: 60px;
		align-items: center;
		display: flex;
		flex: 0 0 48px;
		justify-content: flex-end;
		padding: 0px 24px;
		position: sticky;
		text-align: left;
		top: 0px;
		z-index: -1;
	}
	.merit-box {
		margin-left: 16px;
	}
	.merit {
		color: rgb(34, 34, 34);
		font-weight: 600;
		font-size: 16px;
	}
	.merit-text {
		color: rgb(113, 113, 113);
		font-weight: 400;
		font-size: 14px;
	}
	.review-padding {
		padding-left: 80px;
		padding-right: 80px;
	}
	.review-area {
		height: 100%;
		width: 100%;
	}
	.review-border {
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
		padding-top: 48px;
		padding-bottom: 48px;
	}
	.no-review {
		font-size: 22px;
		color: rgb(34, 34, 34);
		font-weight: 600;
	}
	.review-contents {
		display: flex;
		justify-content: flex-start;
	}
	.review-contents-left {
		width: 33.3333%;
		margin-right: 8.33333%;
		padding-left: 48px;
		padding-right: 8px;
	}
	.review-left-text {
		color: rgb(34, 34, 34);
		font-weight: 400;
		font-size: 16px;
	}
	.review-contents-right {
		width: 33.3333%;
		margin-left: 8.33333%;
		padding-left: 8px;
		padding-right: 8px;
	}
	.review-average-block, .review-box-block {
		display: block;
	}
	.review-average-flex, .review-box-flex {
		display: flex;
		justify-content: flex-start;
	}
	.reviewAverage {
		padding-left: 8px;
		padding-right: 8px;
		width: 41.6667%;
		margin-right: 8.33333%;
	}
	.reviewAverage-box {
		display: flex;
		align-items: center;
		justify-content: space-between;
		width: 90%;
	}
	.reviewAverage-text {
		width: 90%;
		color: rgb(34, 34, 34);
		font-weight: 400;
		font-size: 16px;
	}
	.reviewAverage-bar {
		width: 50%;
		display: flex;
		align-items: center;
	}
	.bar-relative {
		position: relative;
		height: 4px;
		width: 100%;
		margin-right: 4px;
		background: rgb(221, 221, 221);
		border-radius: 2px;
	}
	.bar-absolute {
		position: absolute;
		top: 0px;
		left: 0px;
		bottom: 0px;
		background: rgb(34, 34, 34);
		border-radius: 2px;
	}
	.bar-text {
		color: rgb(34, 34, 34);
		font-weight: 600;
		font-size: 12px;
		margin-left: 6px;
	}
	.review-box-flex {
		display: flex;
		justify-content: flex-start;
		flex-wrap: wrap;
		width: 100%;
	}
	.review-item-padding {
		width: 41.6667%;
		margin-right: 8.33333%;
		padding-left: 8px;
		padding-right: 8px;
		position: relative;
	}
	.review-item-top {
		margin-bottom: 16px;
		display: flex;
		align-items: center;
	}
	.review-all {
		border: 1px solid #222222;
		background: #FFFFFF;
		padding: 13px 23px;
		text-align: center;
		border-radius: 8px;
		text-decoration: none;
		font-size: 16px;
		font-weight: 600;
		color: #222222;
	}
	.review-button-flex {
		display: flex;
		align-items: center;
		justify-content: space-between;
	}
	.modal-review {
		padding: 40px;
		align-items: center;
		display: flex;
		justify-content: center;
	}
	.modal-contents {
		display: contents;
	}
	.modal-review-flex {
		position: relative;
		width: 100%;
		max-width: 1032px;
		border-radius: 12px;
		background: rgb(255, 255, 255);
		max-height: 100%;
		display: flex;
		flex-direction: column;
	}
	.modal-review-padding {
		flex: 1 1 auto;
		overflow: auto;
		padding: 24px;
	}
	.modal-review-relative {
		outline: none;
		position: relative;
		margin-top: -24px;
	}
	.modal-review-header {
		top: -24px;
		background-color: rgb(255, 255, 255);
		padding-bottom: 24px;
		position: sticky;
		z-index: 1;
	}
	.modal-review-text {
		padding-top: 30px;
		padding-left: 8px;
		padding-right: 8px;
		position: relative;
	}
	.modal-review-text-font {
		color: rgb(34, 34, 34);
		font-size: 32px;
		font-weight: 800;
	}
	.modal-review-body, .modal-review-left-flex {
		margin-left: -8px;
		margin-right: -8px;
	}
	.modal-review-left {
		width: 33.3333%;
		float: left;
		padding-left: 8px;
		padding-right: 8px;
		position: relative;
	}
	.modal-review-right {
		width: 58.3333%;
		float: left;
		margin-left: 8.33333%;
		padding-left: 8px;
		padding-right: 8px;
		position: relative;
	}
	.modal-review-left-flex {
		margin-left: -8px;
		margin-right: -8px;
		display: flex;
		flex-wrap: wrap;
	}
	.modal-reviewAverage-box {
		width: 100%;
		padding-left: 8px;
		padding-right: 8px;
		position: relative;
	}
	.modal-reviewAverage-box-flex {
		display: flex;
		align-items: center;
		justify-content: space-between;
		width: 100%;
	}
	.modal-reviewAverage-bar {
		display: flex;
		align-items: center;
		margin-left: 12px;
		width: 75%;
	}
	.modal-review-flex2 {
		position: relative;
		width: 100%;
		max-width: 1032px;
		border-radius: 12px;
		background: rgb(255, 255, 255);
		max-height: 100%;
		display: flex;
		flex-direction: column;
	}
	.modal-review-text-font2 {
		color: rgb(34, 34, 34);
		font-size: 20px;
		font-weight: 800;
	}
	.map-border, .rule-border {
		height: 100%;
		width: 100%;
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
	}
	.map-height {
		height: 480px;
		margin-bottom: 32px;
	}
	.modal-review-flex3 {
		position: relative;
		width: 100%;
		max-height: 800px;
		border-radius: 12px;
		background: rgb(255, 255, 255);
		max-height: 100%;
	}
	.modal-review2 {
		padding: 150px 300px;
		align-items: center;
		display: flex;
		justify-content: center;
	}
</style>

<div class="container">
	<main>
		<!-- 숙소이름, 평점(후기), 지역, 공유하기, 저장 -->
		<div class="row" style="padding-top: 24px;">	<!-- padding-left: 80px; padding-right: 80px; -->
			<section>
				<div class="mb-1">
					<h1 class="detail-title">${lodging.name }</h1>
				</div>
				<div class="detail-header"> <!-- flex 달기 -->
					<div class="detail-subtitle">
						<c:if test="${lodging.reviewCount ne 0 }">
							<span class="p-2">
								<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation"
								focusable="false" style="display: block;height: 14px;width: 14px;fill: #FE2E2E; /* fill: currentcolor; */">
									<path d="M15.094 1.579l-4.124 8.885-9.86 1.27a1 1 0 0 0-.542 1.736l7.293 6.565-1.965 9.852a1 1 0 0 0 
									1.483 1.061L16 25.951l8.625 4.997a1 1 0 0 0 1.482-1.06l-1.965-9.853 7.293-6.565a1 1 0 0 0-.541-1.735l-9.86-1.271-4.127-8.885a1 
									1 0 0 0-1.814 0z" fill-rule="evenodd"></path>
								</svg>
							</span>
							<span class="mt-1">${lodging.reviewAverage }</span>
							<span>
								<button type="button" class="button-reviewcount" href="#"  data-bs-toggle="modal" data-bs-target="#reviewModal">(후기 ${lodging.reviewCount }개)</button>
							</span>
							<span class="dot" aria-hedden="true">·</span>
						</c:if>
						<span>
							<button type="button" class="button-map">
								 ${lodging.city }, 한국
							</button>
						</span>
					</div>
					<div class="buttoncollection">
						<div>
							<!-- 
							<button type="button" class="button-share">
								<div class="share">
									<span>
										<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation"
										focusable="false" style="display: block; fill: none; height: 16px; width: 16px; stroke: currentcolor; 
										stroke-width: 2; overflow: visible;">
										 	<g fill="none">
										 		<path d="M27 18v9a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2v-9"></path>
										 		<path d="M16 3v23V3z"></path>
										 		<path d="M6 13l9.293-9.293a1 1 0 0 1 1.414 0L26 13"></path>
										 	</g>
										</svg>
									</span>
									공유하기
								</div>
							</button>
							 -->
						</div>
						<div>
							<!-- 
							<button type="button" class="button-zzim">
								<div class="zzim">
									<span>
										<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
										role="presentation" focusable="false" style="display: block; fill: none; height: 16px; 
										width: 16px; stroke: currentcolor; stroke-width: 2; overflow: visible;">
											<path d="m16 28c7-4.733 14-10 14-17 0-1.792-.683-3.583-2.05-4.95-1.367-1.366-3.158-2.05-4.95-2.05-1.791 
											0-3.583.684-4.949 2.05l-2.051 2.051-2.05-2.051c-1.367-1.366-3.158-2.05-4.95-2.05-1.791 0-3.583.684-4.949 
											2.05-1.367 1.367-2.051 3.158-2.051 4.95 0 7 7 12.267 14 17z"></path>
										</svg>
									</span>
									저장
								</div>
							</button>
							 -->
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- 사진 -->
		<div class="row">
			<div style="padding-top: 24px;">	<!-- 넓이 조정?? -->	<!--  padding-left: 80px; padding-right: 80px; -->
				<div class="imageborder">	<!-- 패딩 탑 -->
					<div class="imagecollection">	<!-- 사진 (_168ht2w) -->
						<div class="imagecollection1">
							<div class="image1">
								<div class="image1setup">
									<a href="#" class="image1link" data-bs-toggle="modal" data-bs-target="#imageModal">
										<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
											<img class="img1" src="${images[0].uri }" style="object-fit: cover; vertical-align: bottom;">
										</div>
									</a>
								</div>
							</div>
							<div class="image23">
								<div class="image2">
									<div class="image2setup">
										<a href="#" class="image2link" data-bs-toggle="modal" data-bs-target="#imageModal">
											<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
												<img class="img2" src="${images[1].uri }" style="object-fit: cover; vertical-align: bottom;">
											</div>
										</a>
									</div>
								</div>
								<div class="image3">
									<div class="image3setup">
										<a href="#" class="image3link" data-bs-toggle="modal" data-bs-target="#imageModal">
											<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
												<img class="img3" src="${images[2].uri }" style="object-fit: cover; vertical-align: bottom;">
											</div>
										</a>
									</div>
								</div>
							</div>
							<div class="image45">
								<div class="image4">
									<div class="image4setup">
										<a href="#" class="image4link" data-bs-toggle="modal" data-bs-target="#imageModal">
											<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
												<img class="img4" src="${images[3].uri }" style="object-fit: cover; vertical-align: bottom;">
											</div>
										</a>
									</div>
								</div>
								<c:choose>
									<c:when test="${images[4].uri == null }">
										<div class="image5">
											<div class="image5setup">
												<a href="#" class="image5link" data-bs-toggle="modal" data-bs-target="#imageModal">
													<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
														<img class="img5" src="/resources/images/lodgings/lalalalala.jpg" style="object-fit: cover; vertical-align: bottom;">
													</div>
												</a>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="image5">
											<div class="image5setup">
												<a href="#" class="image5link" data-bs-toggle="modal" data-bs-target="#imageModal">
													<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
														<img class="img5" src="${images[4].uri }" style="object-fit: cover; vertical-align: bottom;">
													</div>
												</a>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="view-all">	<!-- 사진 모두 보기 도전하기!!!(_ekor09)  -->
							<a href="#" class="view-link" data-bs-toggle="modal" data-bs-target="#imageModal">
								<div class="view-svg">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 17 17" role="presentation" aria-hidden="true" focusable="false"
									style="height: 12px; width: 12px; display: block; fill: currentcolor;">
										<circle cx="1.5" cy="1.5" r="1.5"></circle>
										<circle cx="1.5" cy="8.5" r="1.5"></circle>
										<circle cx="8.5" cy="1.5" r="1.5"></circle>
										<circle cx="8.5" cy="8.5" r="1.5"></circle>
										<circle cx="15.5" cy="1.5" r="1.5"></circle>
										<circle cx="15.5" cy="8.5" r="1.5"></circle>
										<circle cx="1.5" cy="15.5" r="1.5"></circle>
										<circle cx="8.5" cy="15.5" r="1.5"></circle>
										<circle cx="15.5" cy="15.5" r="1.5"></circle>
									</svg>
									<div class="view-text">사진 모두 보기</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 예약 내용, 달력 -->
		<div class="row">
			<div>	<!-- 전체 영역 설정 !!!ㅜㅜ -->	<!--  style="padding-left: 80px; padding-right: 80px;" -->
				<div class="detailbody">
				<div class="left">	<!-- 왼쪽 -->
					<div>
						<div>	<!-- 호스트 소개 -->
							<div style="padding-top: 48px; padding-bottom: 24px;">
								<section>
									<div class="lodging-status">
										<div class="lodging-status-flex">
											<div class="lodging-status-content">	<!-- 글 -->
												<c:if test="${lodging.lodgingTypeCode eq 'LDG0201' }">	<!-- 집전체 -->
													<div>
														<h2 class="lodging-status-content-top">${host.name }님이 호스팅하는 공통주택 전체</h2>
													</div>
												</c:if>
												<c:if test="${lodging.lodgingTypeCode eq 'LDG0202' }">	<!-- 개인실 -->
													<div>
														<h2 class="lodging-status-content-top">${host.name }님이 호스팅하는 주거용 공간의 개인실</h2>
													</div>
												</c:if>
												<c:if test="${lodging.lodgingTypeCode eq 'LDG0203' }">	<!-- 호텔 -->
													<div>
														<h2 class="lodging-status-content-top">${host.name }님이 호스팅하는 호텔의 객실</h2>
													</div>
												</c:if>
												<div>
													<span>최대 인원 ${lodging.maxGuest }명</span>
													<span>·</span>
													<span>침실 ${lodging.bedroom }개</span>
													<span>·</span>
													<span>침대 ${lodging.singlebed+lodging.doublebed }개</span>
													<span>·</span>
													<span>욕실 ${lodging.bathroom }개</span>
												</div>
											</div>
											<div>	<!-- 이미지 -->
												<div class="photo2" style="height: 56px; width: 56px; border-radius: 50%;">
													<div class="photo3" style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
														<img class="photo4" src="resources/images/defaultProfile.jpg" style="object-fit: cover; vertical-align: bottom;">
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div>
						<div class="lodging-introduction">	<!-- 숙소 장점?? -->
							<div style="padding-top: 32px; padding-bottom: 8px">
								<c:if test="${lodging.lodgingTypeCode eq 'LDG0201' }">	<!-- 집전체를 사용하게 될 경우 -->
									<div class="lodging-merit">
										<div>	<!-- 아이콘 -->
											<div>
												<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" 
												aria-hidden="true" role="presentation" focusable="false" 
												style="display: block; height: 24px; width: 24px; fill: currentcolor;">
													<path d="m17.9772237 1.90551573.1439807.13496509 13.2525 13.25240998-1.4142088 1.4142184-.9603513-.9603098.0008557 12.5832006c0 1.0543618-.8158778 1.9181651-1.8507377 1.9945143l-.1492623.0054857h-22c-1.0543618 0-1.91816512-.8158778-1.99451426-1.8507377l-.00548574-.1492623-.00085571-12.5822006-.95878858.9593098-1.41421142-1.414217 13.25247161-13.25243161c1.1247615-1.1246896 2.9202989-1.16967718 4.0986078-.13494486zm-2.5902053 1.46599297-.0942127.08318915-10.29366141 10.29310155.00085571 14.5822006h5.9991443l.0008557-9.9966c0-1.0543764.8158639-1.9181664 1.8507358-1.9945144l.1492642-.0054856h6c1.0543764 0 1.9181664.8158639 1.9945144 1.8507358l.0054856.1492642-.0008557 9.9966h6.0008557l-.0008557-14.5832006-10.2921737-10.29212525c-.3604413-.36046438-.9276436-.38819241-1.3199522-.08316545zm3.6129816 14.9618913h-6l-.0008557 9.9963994h6z">
													</path>
												</svg>
											</div>
										</div>
										<div class="merit-box">
											<div class="merit">집 전체</div>
											<div class="merit-text">집 전체를 단독으로 사용하게 됩니다.</div>
										</div>
									</div>
								</c:if>
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										<div>
											<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" 
											aria-hidden="true" role="presentation" focusable="false" 
											style="display: block; height: 24px; width: 24px; fill: currentcolor;">
												<path d="M15.032 1.747c.263-1.004 1.692-.993 1.94.015.876 3.577 2.415 6.454 4.614 8.652 2.198 2.199 5.075 3.738 8.652 4.615 1.016.249 1.016 1.693 0 1.942-3.577.877-6.454 2.416-8.652 4.615-2.199 2.198-3.738 5.075-4.615 8.652-.249 1.016-1.693 1.016-1.942 0-.877-3.577-2.416-6.454-4.615-8.652-2.198-2.199-5.075-3.738-8.652-4.615-1.008-.247-1.019-1.676-.015-1.939 3.535-.923 6.394-2.487 8.597-4.69 2.202-2.202 3.765-5.06 4.688-8.595zm.945 3.518l-.133.325c-.88 2.085-2.025 3.914-3.438 5.484l-.33.357-.318.326c-1.6 1.6-3.5 2.893-5.693 3.88l-.475.206-.325.133.352.14c2.108.859 3.952 1.995 5.527 3.407l.358.33.326.319c1.603 1.602 2.887 3.515 3.854 5.732l.203.48.115.291.115-.292c.86-2.108 1.996-3.952 3.408-5.527l.33-.358.319-.326c1.602-1.603 3.515-2.887 5.732-3.854l.48-.203.292-.115-.293-.115c-2.421-.988-4.494-2.34-6.211-4.057-1.603-1.602-2.887-3.515-3.854-5.732l-.203-.48-.138-.351zm11.04-3.891c.13-.502.845-.497.969.007.176.718.48 1.287.913 1.72.433.433 1.002.737 1.72.913.508.125.508.847 0 .972-.718.176-1.287.48-1.72.913-.433.433-.737 1.002-.913 1.72-.125.508-.847.508-.972 0-.176-.718-.48-1.287-.913-1.72-.433-.433-1.002-.737-1.72-.913-.504-.124-.51-.839-.007-.97.71-.185 1.277-.496 1.712-.93.434-.435.745-1.002.93-1.712z">
												</path>
											</svg>
										</div>
									</div>
									<div class="merit-box">
										<div class="merit">청결 강화</div>
										<div class="merit-text">에어비앤비의 강화된 5단계 청소 절차를 준수하겠다고 동의한 호스트입니다.</div>
									</div>
								</div>
								<c:forEach var="amenity" items="${amenities }">
									<c:if test="${amenity.codeContent eq 'WIFI' }">
										<div class="lodging-merit">
											<div>	<!-- 아이콘 -->
												<div>
													<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" 
													aria-hidden="true" role="presentation" focusable="false" 
													style="display: block; height: 24px; width: 24px; fill: currentcolor;">
														<path d="m24.6666 1.66675h-17.33335c-1.65685475 0-3 1.34314525-3 3v26.4709039l11.66575-7.2926539 11.6676 7.2926539v-26.4709039c0-1.65686279-1.3431233-3-3-3zm0 2 .1166244.00672754c.4973508.05776355.8833756.48042438.8833756.99327246l-.0006 22.86225-9.6661012-6.041549-9.6668988 6.041549.00025-22.86225c0-.55228525.44771475-1 1-1z">
														</path>
													</svg>
												</div>
											</div>
											<div class="merit-box">
												<div class="merit">무선 인터넷</div>
												<div class="merit-text">게스트가 자주 찾는 편의시설</div>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</div>
						</div>
						<div class="lodging-introduction">	<!-- 숙소설명 -->
							<div style="padding-top: 32px; padding-bottom: 48px">
								<div>${lodging.description }</div>
							</div>
						</div>
						<div class="lodging-introduction">	<!-- 숙소 편의시설 -->
							<div style="padding-top: 48px; padding-bottom: 48px">
								<section>
									<div>	<!-- 타이틀 -->
										
									</div>
									<div>	<!-- 편의사항 종류 -->
										
									</div>
									<div>	<!-- 모두보기 버튼 -->
										
									</div>
								</section>
							</div>
						</div>
						<div class="lodging-introduction">	<!-- 달력 -->
							<section class="ftco-section">
								<div class="container">
									<div>
										<div>
											<h2 class="heading-section">체크인 날짜를 선택해주세요.</h2>
										</div>
										<div class="subheading-section">
											여행 날짜를 입력하여 정확한 요금을 확인하세요.
										</div>
									</div>
									<div class="row">
										<div>
											<div class="col-md-12">
												<div class="calendar-section">
											        <div class="row no-gutters">
											          <div class="col-md-6">
									
											            <div class="calendar calendar-first" id="calendar_first">
											              <div class="calendar_header">
											                <button class="switch-month switch-left">
											                  <i class="fa fa-chevron-left"></i>
											                </button>
											                <h2></h2>
											                <!-- 
											                <button class="switch-month switch-right">
											                  <i class="fa fa-chevron-right"></i>
											                </button>
											                 -->
											              </div>
											              <div class="calendar_weekdays"></div>
											              <div class="calendar_content"></div>
											            </div>
									
											          </div>
											          <div class="col-md-6">
									
											            <div class="calendar calendar-second" id="calendar_second">
											              <div class="calendar_header">
											              	<!-- 
											                <button class="switch-month switch-left">
											                  <i class="fa fa-chevron-left"></i>
											                </button>
											              	 -->
											                <h2></h2>
											                <button class="switch-month switch-right">
											                  <i class="fa fa-chevron-right"></i>
											                </button>
											              </div>
											              <div class="calendar_weekdays"></div>
											              <div class="calendar_content"></div>
											            </div>            
									
											          </div>
									
											        </div> <!-- End Row -->
									            
									      		</div> <!-- End Calendar -->
											</div>
											<div class="erase">
												<button type="button" class="button-erase">날짜 지우기</button>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div class="right">	<!-- 오른쪽 -->
					<div class="booking-sticky">	<!-- sticky설정 -->
						<div style="margin-top: 48px; padding-bottom: 48px;" >	<!-- 아래 패딩 설정 -->
							<div style="border: 1px solid rgb(221, 221, 221); border-radius: 12px; padding: 24px;">	<!-- 테두리(날짜를 선택하면 div한개 더추가) -->
								<div>	<!-- 안에 내용 -->
									<div class="booking-top">	<!-- 타이틀, 후기 -->
										<div id="booking-top">
											요금을 확인하려면 날짜를 입력하세요.
										</div>
										<c:if test="${lodging.reviewCount ne 0 }">
											<div class="booking-star-rating">
												<span class="booking-star">
													<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation"
													focusable="false" style="display: block;height: 12px;width: 12px;fill: #FE2E2E; /* fill: currentcolor; */">
														<path d="M15.094 1.579l-4.124 8.885-9.86 1.27a1 1 0 0 0-.542 1.736l7.293 6.565-1.965 9.852a1 1 0 0 0 
														1.483 1.061L16 25.951l8.625 4.997a1 1 0 0 0 1.482-1.06l-1.965-9.853 7.293-6.565a1 1 0 0 0-.541-1.735l-9.86-1.271-4.127-8.885a1 
														1 0 0 0-1.814 0z" fill-rule="evenodd"></path>
													</svg>
												</span>
												<span class="mt-1">${lodging.reviewAverage }</span>
												<span>
													<button type="button" class="button-reviewcount" href="#"  data-bs-toggle="modal" data-bs-target="#reviewModal">(후기 ${lodging.reviewCount }개)</button>
												</span>
											</div>
										</c:if>
									</div>
									<div class="booking-mid">	<!-- 달력 -->
										<div>
											<div class="booking-box">
												<div class="booking-check-in-out">
													<div class="check-in-box">
														<div class="check-in">체크인</div>
														<div class="check-in-date">날짜 추가</div>
													</div>
													<div class="check-out-box">
														<div class="check-out">체크아웃</div>
														<div class="check-out-date">날짜 추가</div>
													</div>
												</div>
												<div class="booking-total-number">	<!-- 게스트 총인원 -->
													<div>
														<div class="total-number">인원</div>
														<div class="guest">게스트 <span id="guest">1</span>명</div>
													</div>
												</div>
												<div class="booking-button-adult">	<!-- 성인 -->
													<div class="adult-flex">
														<div class="adult-text">성인</div>
														<div class="button-adult">
															<div class="button-collection">
																<button class="button-minus" type="button" disabled='disabled'>-</button>
																<div class="adult">1</div>
																<button class="button-plus" type="button">+</button>
															</div>
														</div>
													</div>
												</div>
												<div class="booking-button-child">	<!-- 어린이 -->
													<div class="child-flex">
														<div class="child-text-box">
															<div class="child-text">어린이</div>
															<div class="child-age">만 2~12세</div>
														</div>
														<div class="button-child">
															<div class="button-collection">
																<button class="button-minus2" type="button" disabled='disabled'>-</button>
																<div class="child">0</div>
																<button class="button-plus2" type="button">+</button>
															</div>
														</div>
													</div>
												</div>
												<div class="booking-maxGuest">
													<div class="explanation">
														최대 <span id="maxGuest">${lodging.maxGuest }</span>명. 유아(만 2세미만)는 숙박인원에 포함되지 않습니다.
													</div>
												</div>
											</div>
										</div>
									</div>
									<div>	<!-- 예약 버튼(옵션을 선택할 때마다 값을 넣어주기 -->
										<form id="form-booking" action="payment" method="post">
											<input type="hidden" id="user-no" name="userNo" value="${LOGINED_USER.no }"> <!-- 로그인이랑 연결되면 넣기${LOGINED_USER.no } -->
											<input type="hidden" id="lodging-no" name="lodgingNo" value="${lodging.no }">
											<input type="hidden" id="check-in" name="checkIn" value="">
											<input type="hidden" id="check-out" name="checkOut" value="">
											<input type="hidden" id="date" name="date" value="">
											<input type="hidden" id="form-guest" name="guest" value="1">
											<input type="hidden" id="total-lodging-fee" name="totalLodgingFee" value="">
											<input type="hidden" id="total-cleaning-fee" name="totalCleaningFee" value="">
											<input type="hidden" id="amount" name="amount" value="">
											<button type="submit" class="booking-button">예약 하기</button>
										</form>
									</div>
									<!-- 여기부터는 달력 선택이 끝나면 div를 넣는다. -->
									<div class="booking-fee">
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<!-- 후기 -->
		<div class="row">
			<div>	<!--  class="review-padding" -->
				<div class="review-area">
					<div class="review-border">
						<c:choose>
							<c:when test="${lodging.reviewCount eq 0 }">
								<div style="padding-bottom: 24px;">
									<div class="no-review">후기 (아직) 없음</div>
								</div>
								<div class="review-contents">
									<div class="review-contents-left">
										<div class="review-left-text">* 해당 숙소에 대한 후기가 없습니다.</div>
									</div>
									<div class="review-contents-right">
										<div class="review-left-text">* 여행에 차질이 없도록 최선을 다해 도와드리겠습니다.모든 예약은 에어비앤비의 게스트 환불 정책에 따라 보호를 받습니다.</div>
									</div>
								</div>
								<div>
									<div class="review-button-flex">
										<div>
											
										</div>
										<div style="padding-top: 40px; padding-right: 120px;">
											<c:if test="${bookingNo2 != 0 }">	<!-- ${bookingNo2 != null } -->
												<a herf="#" class="review-all" style="margin-right: 78px;" id="btn-open-review-modal" data-bs-toggle="modal" data-bs-target="#reviewFormModal">후기 작성하기</a>
											</c:if>
										</div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<div style="padding-bottom: 32px;">
									<div class="no-review">평점 ${lodging.reviewAverage } · <span id="review-cnt">후기 ${lodging.reviewCount }개</span></div>
								</div>
								<div class="review-average-block">
									<div style="margin-bottom: 24px;">
										<div class="review-average-flex">
											<div class="reviewAverage">
												<div style="margin-bottom: 16px;">
													<div class="reviewAverage-box">
														<div class="reviewAverage-text">
															청결도
														</div>
														<div class="reviewAverage-bar">
															<div class="bar-relative">
																<span class="bar-absolute" style="width: ${lodging.cleanness / 5 * 100 }%;"></span>
															</div>
															<span class="bar-text">${lodging.cleanness }</span>
														</div>
													</div>
												</div>
											</div>
											<div class="reviewAverage">
												<div style="margin-bottom: 16px;">
													<div class="reviewAverage-box">
														<div class="reviewAverage-text">
															정확성
														</div>
														<div class="reviewAverage-bar">
															<div class="bar-relative">
																<span class="bar-absolute" style="width: ${lodging.accuracy / 5 * 100 }%;"></span>
															</div>
															<span class="bar-text">${lodging.accuracy }</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="review-average-flex">
											<div class="reviewAverage">
												<div style="margin-bottom: 16px;">
													<div class="reviewAverage-box">
														<div class="reviewAverage-text">
															의사소통
														</div>
														<div class="reviewAverage-bar">
															<div class="bar-relative">
																<span class="bar-absolute" style="width: ${lodging.communication / 5 * 100 }%;"></span>
															</div>
															<span class="bar-text">${lodging.communication }</span>
														</div>
													</div>
												</div>
											</div>
											<div class="reviewAverage">
												<div style="margin-bottom: 16px;">
													<div class="reviewAverage-box">
														<div class="reviewAverage-text">
															위치
														</div>
														<div class="reviewAverage-bar">
															<div class="bar-relative">
																<span class="bar-absolute" style="width: ${lodging.location / 5 * 100 }%;"></span>
															</div>
															<span class="bar-text">${lodging.location }</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="review-average-flex">
											<div class="reviewAverage">
												<div style="margin-bottom: 16px;">
													<div class="reviewAverage-box">
														<div class="reviewAverage-text">
															체크인
														</div>
														<div class="reviewAverage-bar">
															<div class="bar-relative">
																<span class="bar-absolute" style="width: ${lodging.checkIn / 5 * 100 }%;"></span>
															</div>
															<span class="bar-text">${lodging.checkIn }</span>
														</div>
													</div>
												</div>
											</div>
											<div class="reviewAverage">
												<div style="margin-bottom: 16px;">
													<div class="reviewAverage-box">
														<div class="reviewAverage-text">
															가격 대비 만족도
														</div>
														<div class="reviewAverage-bar">
															<div class="bar-relative">
																<span class="bar-absolute" style="width: ${lodging.value / 5 * 100 }%;"></span>
															</div>
															<span class="bar-text">${lodging.value }</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="review-box-block">
									<div>
										<div class="review-box-flex">
											<c:forEach var="review" items="${reviews }" begin="0" end="5">	<!-- ${reviews } -->
												<c:if test="${review.no ne null }">
													<div class="review-item-padding">
														<div style="margin-bottom: 40px;">
															<div class="review-item-top">
																<div class="photo2" style="height: 56px; width: 56px; border-radius: 50%;">
																	<div class="photo3" style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
																		<img class="photo4" src="resources/images/defaultProfile.jpg" style="object-fit: cover; vertical-align: bottom;">
																	</div>
																</div>
																<div style="margin-left: 12px;">
																	<div style="font-size: 16px; font-weight: 600;">${review.name }</div>
																	<div style="font-size: 14px; font-weight: 400; color: #717171"><fmt:formatDate value="${review.createdDate }" pattern="yyyy년M월"/></div>
																</div>
															</div>
															<div>
																<div>
																	<span>
																		${review.comments }
																	</span>
																</div>
															</div>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</div>
								<div>
									<div class="review-button-flex">
										<div>
											<c:if test="${lodging.reviewCount > 6 }"> <!-- ${lodging.reviewCount > 6 } -->
												<a herf="#" class="review-all" data-bs-toggle="modal" data-bs-target="#reviewModal" id="review-cnt2">후기 ${lodging.reviewCount }개 모두 보기</a>
											</c:if>
										</div>
										<div>
											<c:if test="${bookingNo2 != 0 && lodging.userNo != LOGINED_USER.no }">	<!-- ${bookingNo2 != null } -->
												<a herf="#" class="review-all" style="margin-right: 78px;" id="btn-open-review-modal" data-bs-toggle="modal" data-bs-target="#reviewFormModal">후기 작성하기</a>
											</c:if>
										</div>
										
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
		<!-- 지도 -->
		<div class="row">
			<div class="map-border">
				<div style="padding-top: 48px; padding-bottom: 48px;">
					<div style="padding-bottom: 24px;">
						<div>
							<h2 style="font-size: 22px; font-weight: 800;">
								호스팅 지역
							</h2>
						</div>
					</div>
					<div style="padding-bottom: 24px;">
						<div style="font-weight: 400; font-size: 16px;">${lodging.city }, 한국</div>
					</div>
					<div class="map-height" id="map">	<!-- 지도 넣기 -->
						
					</div>
				</div>
			</div>
		</div>
		<!-- 호스트 소개 -->
		<div>
			
		</div>
		<!-- 알아두어야 할 사항 -->
		<div class="row">
			<div class="rule-border">
				<div style="padding-top: 48px; padding-bottom: 48px;">
					<div>
						<div style="padding-bottom: 24px;">
							<div>
								<h2 style="font-size: 22px; font-weight: 800;">
									알아두어야 할 사항
								</h2>
							</div>
						</div>
						<div style="display: flex; justify-content: flex-start; flex-wrap: wrap; width: 100%;">
							<div style="padding-left: 8px; padding-right: 8px;width: 33%; ">
								<div style="margin-right: 10px;">
									<div style="width: 100%;">
										<div style="margin-bottom: 15px; font-size: 16px; font-weight: 600;">
											숙소 이용규칙
										</div>
										<div style="margin-bottom: 8px;">
											* 체크인: 오후4:00 이후
										</div>
										<div style="margin-bottom: 8px;">
											* 체크아웃 시간: 오전 11:00
										</div>
										<div style="margin-bottom: 8px;">
											* 유아(만 2세 미만)에게 적합하지 않음
										</div>
										<div style="margin-bottom: 8px;">
											* 흡연금지
										</div>
										<div style="margin-bottom: 8px;">
											* 반려동물 동반 불가
										</div>
										<div style="margin-bottom: 8px;">
											* 파티나 이벤트 금지
										</div>
									</div>
								</div>
							</div>
							<div style="padding-left: 8px; padding-right: 8px;width: 33%; ">
								<div style="margin-right: 10px;">
									<div style="width: 100%;">
										<div style="margin-bottom: 15px; font-size: 16px; font-weight: 600;">
											건강과 안전
										</div>
										<div style="margin-bottom: 8px;">
											* 에어비앤비의 강화된 청소 절차 준수에 동의했습니다.
										</div>
										<div style="margin-bottom: 8px;">
											* 에어비앤비의 사회적 거리 두기 및 관련 가이드라인이 적용됩니다.
										</div>
										<div style="margin-bottom: 8px;">
											* 일산화탄소 경보기 설치 여부 정보 없음
										</div>
										<div style="margin-bottom: 8px;">
											* 화재경보기 설치 여부 정보 없음
										</div>
									</div>
								</div>
							</div>
							<div style="padding-left: 8px; padding-right: 8px;width: 33%; ">
								<div style="margin-right: 10px;">
									<div style="width: 100%;">
										<div style="margin-bottom: 15px; font-size: 16px; font-weight: 600;">
											환불 정책
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
	<!-- modal 이미지 -->
	<div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-background" style="position: relative;">
				<div class="image-content">
					<div tabindex="0" class="image-relative">
						<section>
							<div class="image-padding">
								<div style="--maxWidth:1128px;">
									<section>
										<div class="image-padding2">
											<div>
												<div class="image-width">
													<div class="image-grid">
														<div class="modal-image-grid" style="display: grid; grid-area: 1 / 1 / auto / auto;">
															<div class="modal-image-relative">
																<div class="modal-image-relative2" style="overflow: hidden; padding-top: 67%;">
																	<div class="modal-image-size">
																		<div style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
																			<img class="img1" src="${images[0].uri }" style="object-fit: cover;">
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div style="display: grid; grid-area: 2 / 1 / auto / auto;">
															<div class="modal-image23-grid">
																<div class="modal-image-grid" style="grid-area: 1 / 1 / auto / auto;">
																	<div class="modal-image-relative">
																		<div class="modal-image-relative2" style="overflow: hidden; padding-top: 67%;">
																			<div class="modal-image-size">
																				<div style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
																					<img class="img1" src="${images[1].uri }" style="object-fit: cover;">
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="modal-image-grid" style="grid-area: 1 / 2 / auto / auto;">
																	<div class="modal-image-relative">
																		<div class="modal-image-relative2" style="overflow: hidden; padding-top: 67%;">
																			<div class="modal-image-size">
																				<div style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
																					<img class="img1" src="${images[2].uri }" style="object-fit: cover;">
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div style="display: grid; grid-area: 3 / 1 / auto / auto;">
															<div class="modal-image-grid" style="grid-area: 1 / 1 / auto / auto;">
																<div class="modal-image-relative">
																	<div class="modal-image-relative2" style="overflow: hidden; padding-top: 67%;">
																		<div class="modal-image-size">
																			<div style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
																				<img class="img1" src="${images[3].uri }" style="object-fit: cover;">
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<c:if test="${images[4].uri != null }">
															<div style="display: grid; grid-area: 4 / 1 / auto / auto;">
																<div class="modal-image-grid" style="grid-area: 1 / 1 / auto / auto;">
																	<div class="modal-image-relative">
																		<div class="modal-image-relative2" style="overflow: hidden; padding-top: 67%;">
																			<div class="modal-image-size">
																				<div style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
																					<img class="img1" src="${images[4].uri }" style="object-fit: cover;">
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</c:if>
														<div>
														
														</div>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- modal 리뷰 -->
	<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="reviewModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-review">
				<div class="modal-contents">
					<div class="modal-review-flex">
						<div class="modal-review-padding">
							<div class="modal-review-relative">
								<section>
									<div class="modal-review-header">
										<div style="margin-left: -8px; margin-right: -8px;">
											<div class="modal-review-text">
												<div class="modal-review-text-font" id="review-cnt3">평점 ${lodging.reviewAverage } · 후기 ${lodging.reviewCount }개</div>
											</div>
										</div>
									</div>
									<div class="modal-review-body">
										<div class="modal-review-left">
											<div class="modal-review-left-flex">
												<div class="modal-reviewAverage-box">
													<div style="margin-bottom: 12px;">
														<div class="modal-reviewAverage-box-flex">
															<div style="width: 100%; font-size: 14px;">
																청결도
															</div>
															<div class="modal-reviewAverage-bar">
																<div class="bar-relative">
																	<span class="bar-absolute" style="width: ${lodging.cleanness / 5 * 100 }%;"></span>
																</div>
																<span class="bar-text">${lodging.cleanness }</span>
															</div>
														</div>
													</div>
												</div>
												<div class="modal-reviewAverage-box">
													<div style="margin-bottom: 12px;">
														<div class="modal-reviewAverage-box-flex">
															<div style="width: 100%; font-size: 14px;">
																정확성
															</div>
															<div class="modal-reviewAverage-bar">
																<div class="bar-relative">
																	<span class="bar-absolute" style="width: ${lodging.accuracy / 5 * 100 }%;"></span>
																</div>
																<span class="bar-text">${lodging.accuracy }</span>
															</div>
														</div>
													</div>
												</div>
												<div class="modal-reviewAverage-box">
													<div style="margin-bottom: 12px;">
														<div class="modal-reviewAverage-box-flex">
															<div style="width: 100%; font-size: 14px;">
																의사소통
															</div>
															<div class="modal-reviewAverage-bar">
																<div class="bar-relative">
																	<span class="bar-absolute" style="width: ${lodging.communication / 5 * 100 }%;"></span>
																</div>
																<span class="bar-text">${lodging.communication }</span>
															</div>
														</div>
													</div>
												</div>
												<div class="modal-reviewAverage-box">
													<div style="margin-bottom: 12px;">
														<div class="modal-reviewAverage-box-flex">
															<div style="width: 100%; font-size: 14px;">
																위치
															</div>
															<div class="modal-reviewAverage-bar">
																<div class="bar-relative">
																	<span class="bar-absolute" style="width: ${lodging.location / 5 * 100 }%;"></span>
																</div>
																<span class="bar-text">${lodging.location }</span>
															</div>
														</div>
													</div>
												</div>
												<div class="modal-reviewAverage-box">
													<div style="margin-bottom: 12px;">
														<div class="modal-reviewAverage-box-flex">
															<div style="width: 100%; font-size: 14px;">
																체크인
															</div>
															<div class="modal-reviewAverage-bar">
																<div class="bar-relative">
																	<span class="bar-absolute" style="width: ${lodging.checkIn / 5 * 100 }%;"></span>
																</div>
																<span class="bar-text">${lodging.checkIn }</span>
															</div>
														</div>
													</div>
												</div>
												<div class="modal-reviewAverage-box">
													<div style="margin-bottom: 12px;">
														<div class="modal-reviewAverage-box-flex">
															<div style="width: 100%; font-size: 14px;">
																가격 대비 만족도
															</div>
															<div class="modal-reviewAverage-bar">
																<div class="bar-relative">
																	<span class="bar-absolute" style="width: ${lodging.value / 5 * 100 }%;"></span>
																</div>
																<span class="bar-text">${lodging.value }</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-review-right">
											<c:forEach var="review" items="${reviews }">	<!-- ${reviews } -->
												<div>
													<div style="margin-bottom: 48px;">
														<div class="review-item-top">
															<div class="photo2" style="height: 56px; width: 56px; border-radius: 50%;">
																<div class="photo3" style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
																	<img class="photo4" src="resources/images/defaultProfile.jpg" style="object-fit: cover; vertical-align: bottom;">
																</div>
															</div>
															<div style="margin-left: 12px;">
																<div style="font-size: 16px; font-weight: 600;">${review.name }</div>
																<div style="font-size: 14px; font-weight: 400; color: #717171"><fmt:formatDate value="${review.createdDate }" pattern="yyyy년M월"/></div>
															</div>
														</div>
														<div>
															<span style="font-size: 14px; font-weight: 400;">
																${review.comments }
															</span>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- modal -->
	<div class="modal fade" id="reviewFormModal" tabindex="-1" aria-labelledby="reviewFormModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-review2">
				<div class="modal-content">
					<div class="modal-review-flex3">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">리뷰 작성</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form id="form-review">
								<input type="hidden" name="bookingNo" id="" value="${bookingNo2 }">	<!-- ${bookingNo2 } -->
								<input type="hidden" name="userNo" id="" value="${user.no }">	<!-- 로그인 유저 번호 -->
								<input type="hidden" name="lodgingNo" id="" value="${lodging.no }">
								<div class="row px-2 mb-2" style="display: flex; flex-wrap: wrap;">
									<div style="width: 33%;">
										<label class="" for="cleanness">청결도</label>
										<select id="select-box" name="cleanness">
											<option value="5" selected>5점</option>
											<option value="4">4점</option>
											<option value="3">3점</option>
											<option value="2">2점</option>
											<option value="1">1점</option>
										</select>
									</div>
									<div style="width: 33%;">
										<label class="" for="accuracy">정확성</label>
										<select id="select-box" name="accuracy">
											<option value="5" selected>5점</option>
											<option value="4">4점</option>
											<option value="3">3점</option>
											<option value="2">2점</option>
											<option value="1">1점</option>
										</select>
									</div>
									<div style="width: 33%;">
										<label class="" for="communication">의사소통</label>
										<select id="select-box" name="communication">
											<option value="5" selected>5점</option>
											<option value="4">4점</option>
											<option value="3">3점</option>
											<option value="2">2점</option>
											<option value="1">1점</option>
										</select>
									</div>
								</div>
								<div class="row px-2 mb-2" style="display: flex; flex-wrap: wrap;">
									<div style="width: 33%;">
										<label class="" for="location">위치</label>
										<select id="select-box" name="location">
											<option value="5" selected>5점</option>
											<option value="4">4점</option>
											<option value="3">3점</option>
											<option value="2">2점</option>
											<option value="1">1점</option>
										</select>
									</div>
									<div style="width: 33%;">
										<label class="" for="checkIn">체크인</label>
										<select id="select-box" name="checkIn">
											<option value="5" selected>5점</option>
											<option value="4">4점</option>
											<option value="3">3점</option>
											<option value="2">2점</option>
											<option value="1">1점</option>
										</select>
									</div>
									<div style="width: 33%;">
										<label class="" for="value">가격대비 만족도</label>
										<select id="select-box" name="value">
											<option value="5" selected>5점</option>
											<option value="4">4점</option>
											<option value="3">3점</option>
											<option value="2">2점</option>
											<option value="1">1점</option>
										</select>
									</div>
								</div>
								<div class="row px-2">
									<textarea rows="10" class="form-control" id="review-content" name="comment" placeholder="내용을 입력하세요"></textarea>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary" id="btn-post-review">등록</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1faae7df692fc8fd9a922684cd0361c8&libraries=services,clusterer,drawing"></script>
<script>

	$( document ).ready(function() {
		// json형식으로 model에 담았던 값을 list안에 담는다.
		var list = JSON.parse('${json}');
		console.log(list);
		
		var dgsg = list[0].lodgingFee;
		console.log(dgsg);
		
		console.log("청소비");
		var price = list[0].cleaningFee;
		console.log(price);
		
		// 로그인 정보가 들어오는지 확인하기
		var ksksksks = "${user.no }";
		console.log(ksksksks);
		console.log("제발되어라 배가 너무 고프다");
		
		// 호스트 정보가 들어오는지
		var host = "${host.name}";
		console.log(host);
		// 로그인 되어있는 유저 이름
		var userName555 = "${user.name}";
		console.log(userName555);
		// 예약번호가 있는지 
		var bookingNo555 = "${bookingNo2}";
		console.log("이번호가 0이 아니면 리뷰작성이 나온다.");
		console.log(bookingNo555);
		// 세션 유저 번호
		var sessionLogin = "${LOGINED_USER.no }";
		console.log("세션 로그인 유저 번호");
		console.log(sessionLogin);
		// 세션 유저 번호가 form에 잘 들어갔는지
		var inputuserNo = $("input[name=userNo]").attr('value');
		console.log(inputuserNo);
		
		//var value = $("input[name=number_of_guests]").attr('value');
		//console.log(value);
		//var adult = parseInt($(".adult").text());
		//var guest = parseInt($("#guest").text());
		//$("#guest").text(guest+1);
		//var guest1 = parseInt($("#guest").text());
		//console.log(guest);
		//for(var i=0; i<list.length; i++) {
		//	ldgldg = parse(list[i].openDate);
			
		//	console.log(ldgldg.getMonth());
		//}

		function c(passed_month, passed_year, calNum) {
			var calendar = calNum == 0 ? calendars.cal1 : calendars.cal2;
			makeWeek(calendar.weekline);
			calendar.datesBody.empty();
			var calMonthArray = makeMonthArray(passed_month, passed_year);
			var r = 0;
			var u = false;
			while(!u) {
				if(daysArray[r] == calMonthArray[0].weekday) { u = true } 
				else { 
					calendar.datesBody.append('<div class="blank"></div>');
					r++;
				}
			} 
			// 이게 아마 달력에 날짜를 기입하는 부분 42개인 이유는 7개씩 6줄이여서
			for(var cell=0;cell<42-r;cell++) { // 42 date-cells in calendar
				// cell이 그 달에 일수 보다 높으면 blank를 넣어라 !!!!! 
				// (31일 까지 있으면 32일 부터는 blank!!!)
				if(cell >= calMonthArray.length) {
					calendar.datesBody.append('<div class="blank"></div>');
				} else {
					// 지금칸에 date
					var shownDate = calMonthArray[cell].day;
					// Later refactiroing -- iter_date not needed after "today" is found
					// 지금칸에 년,월,일을 담는다.
					var iter_date = new Date(passed_year,passed_month,shownDate); 
					var opendate;
					if (list.length == 0) {
						var m = checkToday(iter_date)?'<div class="today">':'<div class="past-date">';
					} else {
						for(var ldg=0; ldg<list.length; ldg++) {
							opendate = parse(list[ldg].openDate);
							
							if (shownDate == opendate.getDate() && passed_month == opendate.getMonth() && passed_year == opendate.getFullYear()
									&& !checkToday(iter_date)) {
								var m = "<div>";
								break;
							} else {
								var m = checkToday(iter_date)?'<div class="today">':'<div class="past-date">';
							}
						}
					}
					calendar.datesBody.append(m + shownDate + "</div>");
				}
			}
			// 달력 월, 년 표시하는 부분
			// var color = o[passed_month];
			calendar.calHeader.find("h2").text(i[passed_month]+" "+passed_year);
						//.css("background-color",color)
						//.find("h2").text(i[passed_month]+" "+year);

			// find elements (dates) to be clicked on each time
			// the calendar is generated
			
			//clickedElement = bothCals.find(".calendar_content").find("div");
			var clicked = false;
			selectDates(selected);

			clickedElement = calendar.datesBody.find('div');
			// 날짜를 클릭했을 때????
			clickedElement.on("click", function(){
				// 클릭한 엘리먼트
				clicked = $(this);
				// 클릭한 날짜 class가 past-date(지난 날)이면 아무것도 반환하지 않음!!
				if (clicked.hasClass('past-date')) { return; }
				if (clicked.hasClass('blank')) { return; }
				// 우선 당일 예약은 불가능하게 만들었다!!!
				if (clicked.hasClass('today')) { return; }
				
				var whichCalendar = calendar.name;
				console.log(whichCalendar);
				// Understading which element was clicked;
				// this 부모의 부모 class 속성은 변경한다??
				// var parentClass = $(this).parent().parent().attr('class');
				// 첫번째, 두번째 클릭했을 경우
				if (firstClick && secondClick) {
					
					thirdClicked = getClickedInfo(clicked, calendar);
					var firstClickDateObj = new Date(firstClicked.year, 
												firstClicked.month, 
												firstClicked.date);
					var secondClickDateObj = new Date(secondClicked.year, 
												secondClicked.month, 
												secondClicked.date);
					var thirdClickDateObj = new Date(thirdClicked.year, 
												thirdClicked.month, 
												thirdClicked.date);
					// 세번째에 두번째 날짜보다 더 작은 날짜를 고르고, 첫번째 날짜보다는 클 경우
					if (secondClickDateObj > thirdClickDateObj
						&& thirdClickDateObj > firstClickDateObj) {
						// 세번째 날짜가 두번째 날짜로 바뀐다.
						secondClicked = thirdClicked;
						// 
						// then choose dates again from the start :)
						bothCals.find(".calendar_content").find("div").each(function(){
							$(this).removeClass("selected");
						});
						selected = {};
						selected[firstClicked.year] = {};
						selected[firstClicked.year][firstClicked.month] = [firstClicked.date];
						selected = addChosenDates(firstClicked, secondClicked, selected);
					// 세번째 날짜를 더 높은 날짜를 고를 경우
					} else { // reset clicks
						selected = {};
						firstClicked = [];
						secondClicked = [];
						firstClick = false;
						secondClick = false;
						bothCals.find(".calendar_content").find("div").each(function(){
							$(this).removeClass("selected");
						});	
					}
				}
				// 위에서 firstClick이 false가되면, 
				if (!firstClick) {
					firstClick = true;
					firstClicked = getClickedInfo(clicked, calendar);
					selected[firstClicked.year] = {};
					selected[firstClicked.year][firstClicked.month] = [firstClicked.date];
					// 첫번째 선택한 날짜를 sticky부분에 표현하기
					$(".check-in-date").text(firstClicked.year+"."+(firstClicked.month+1)+"."+firstClicked.date);
					$(".check-out-date").text("날짜 추가");
					$(".heading-section").text("체크아웃 날짜를 선택하세요.");
					$("#booking-top").text("요금을 확인하려면 날짜를 입력하세요.");
					$(".booking-fee").empty();
				} else {
					console.log('second click');
					secondClick = true;
					secondClicked = getClickedInfo(clicked, calendar);
					//console.log(secondClicked);

					// what if second clicked date is before the first clicked?
					var firstClickDateObj = new Date(firstClicked.year, 
												firstClicked.month, 
												firstClicked.date);
					var secondClickDateObj = new Date(secondClicked.year, 
												secondClicked.month, 
												secondClicked.date);
					$(".check-out-date").text(secondClicked.year+"."+(secondClicked.month+1)+"."+secondClicked.date);
					
					// 몇박인지 계산하는 법
					var btMs = secondClickDateObj.getTime() - firstClickDateObj.getTime();
					var btDay;
					if (btMs < 0) {
						btDay = (btMs / (1000*60*60*24)) * -1;
						console.log("작다")
					} else {
						btDay = (btMs / (1000*60*60*24));
						console.log("크다")
					}
					//var btDay = (btMs / (1000*60*60*24));
					var city = $(".button-map").text();
					$(".heading-section").text(city+"에서"+btDay+"박");
					
					
					// 첫번째 클릭보다 뒤에 날짜를 클릭한 경우
					if (firstClickDateObj > secondClickDateObj) {
						// 두번째 클릭을 첫번째로 바꾸고, 첫번째 클릭을 두번째 클릭으로 바꾼다.
						var cachedClickedInfo = secondClicked;
						secondClicked = firstClicked;
						firstClicked = cachedClickedInfo;
						selected = {};
						selected[firstClicked.year] = {};
						selected[firstClicked.year][firstClicked.month] = [firstClicked.date];
						// 첫번째 선택한 날짜를 sticky부분에 표현하기(다른경우)
						$(".check-in-date").text(firstClicked.year+"."+firstClicked.month+"."+firstClicked.date);
						$(".check-out-date").text(secondClicked.year+"."+secondClicked.month+"."+secondClicked.date);
						
					// 같은 날짜를 클릭할 경우
					} else if (firstClickDateObj.getTime() ==
								secondClickDateObj.getTime()) {
						selected = {};
						firstClicked = [];
						secondClicked = [];
						firstClick = false;
						secondClick = false;
						$(".check-in-date").text("날짜 추가");
						$(".check-out-date").text("날짜 추가");
						$(".heading-section").text("체크인 날짜를 선택해주세요.");
						$(this).removeClass("selected");
					}

					// 선택한 날짜 추가
					// add between dates to [selected]
					selected = addChosenDates(firstClicked, secondClicked, selected);
					
					// input에 checkin, checkout 넣기
					var checkin = $(".check-in-date").text();
					var checkout = $(".check-out-date").text();
					$("input[name=checkIn]").attr('value', checkin);
					$("input[name=checkOut]").attr('value', checkout);
					$("input[name=date]").attr('value', btDay);
					console.log(btDay);
					
					// 여기부터 내가 만든 부분(가격을 화면에 표시하기 위해서)
					var totalPrice = 0;
					var totalCleaningPrice = 0;
					// 첫번째 클릭한 연도, 달
					var bookingFirstDate = selected[firstClicked.year][firstClicked.month];
					// 두번째 클릭한 연도, 달
					var bookingSecondDate = selected[secondClicked.year][secondClicked.month];
					// 연도가 같을 경우
					if (firstClicked.year == secondClicked.year) {
						// 달이 같을 경우
						if (firstClicked.month == secondClicked.month) {
							// 총 숙박료
							var firstMontTotalPrice = firstMonthPrice(bookingFirstDate, firstClicked, secondClicked);
							// 총 숙박료/숙박일
							totalPrice = firstMontTotalPrice / btDay;
							// 총 청소비
							var firstMontTotalCleaningPrice = firstMonthCleaningPrice(bookingFirstDate, firstClicked, secondClicked);
							
							$("#booking-top").text("₩"+totalPrice.toLocaleString()+"/ 박");
							$("input[name=totalLodgingFee]").attr('value', firstMontTotalPrice);
							$("input[name=totalCleaningFee]").attr('value', firstMontTotalCleaningPrice);
							
							console.log("다 같을때" + firstMontTotalPrice.toLocaleString());
						// 달이 다를 경우
						} else {	// 달이 다를때....
							var firstMontTotalPrice = firstMonthPrice(bookingFirstDate, firstClicked, secondClicked);
							var secondMontTotalPrice = secondMonthPrice(bookingSecondDate, firstClicked, secondClicked);
							
							var total = firstMontTotalPrice+secondMontTotalPrice;
							// var totalLength = bookingFirstDate.length+bookingSecondDate.length;
							
							totalPrice = total / btDay;
							
							// 총 청소비
							var firstMontTotalCleaningPrice = firstMonthCleaningPrice(bookingFirstDate, firstClicked, secondClicked);
							
							$("#booking-top").text("₩"+totalPrice.toLocaleString()+"/ 박");
							$("input[name=totalLodgingFee]").attr('value', total);
							$("input[name=totalCleaningFee]").attr('value', firstMontTotalCleaningPrice);
							console.log("달이 다를 경우"+totalPrice);
						}
						
					
					// 년도가 다를경우
					} else if (firstClicked.year != secondClicked.year) {
						var firstMontTotalPrice = firstMonthPrice(bookingFirstDate, firstClicked, secondClicked);
						var secondMontTotalPrice = secondMonthPrice(bookingSecondDate, firstClicked, secondClicked);
						var total = firstMontTotalPrice+secondMontTotalPrice;
						// var totalLength = bookingFirstDate.length+bookingSecondDate.length;
						
						totalPrice = total / btDay;
						
						// 총 청소비
						var firstMontTotalCleaningPrice = firstMonthCleaningPrice(bookingFirstDate, firstClicked, secondClicked);
						
						$("#booking-top").text("₩"+totalPrice.toLocaleString()+"/ 박");
						$("input[name=totalLodgingFee]").attr('value', total);
						$("input[name=totalCleaningFee]").attr('value', firstMontTotalCleaningPrice);
						console.log("다 다를 경우"+totalPrice);
					}
					console.log("하하하하핳"+totalPrice);
					// 숙박일
					$(".booking-fee").prepend(makeDiv(btDay, totalPrice, firstMontTotalCleaningPrice));
					// input에 총 가격 넣기
					$("input[name=amount]").attr('value', ((totalPrice * btDay)+firstMontTotalCleaningPrice+(totalPrice * btDay * 0.1)));
					
					
					var length = firstClicked.year == secondClicked.year && firstClicked.month == secondClicked.month?1:0;
					console.log(totalPrice);
					// 가격을 알기위해 Object안에 있는 값 조회하기
					// var bookingYear = selected[firstClicked.year];
					// var bookingMonth = selected[firstClicked.year][firstClicked.month];
					// var bookingDate = selected[firstClicked.year][firstClicked.month][0];
					// var datee = new Date(firstClicked.year, firstClicked.month, bookingDate);
					// var price = parseInt(lodgingPrice(datee));
					// var total = 0;
					// console.log("하하하핳");
					// total += price;
					// total += price;
					// console.log(price+price);
				}
				// console.log(selected);
				selectDates(selected);
			});			

		}
		/*
		function selectDates(selected) {
			if (!$.isEmptyObject(selected)) {
				// first에 calendar_content
				var dateElements1 = datesBody1.find('div');
				// second calendar_content
				var dateElements2 = datesBody2.find('div');

				function highlightDates(passed_year, passed_month, dateElements){
					// passed_year이라는 속성이 selected객체 안에 들어있으면 true
					if (passed_year in selected && passed_month in selected[passed_year]) {
						var daysToCompare = selected[passed_year][passed_month];
						// console.log(daysToCompare);
						for (var d in daysToCompare) {
							dateElements.each(function(index) {
								if (parseInt($(this).text()) == daysToCompare[d]) {
									$(this).addClass('selected');
								}
							});	
						}
						
					}
				}

				highlightDates(year, month, dateElements1);
				highlightDates(nextYear, nextMonth, dateElements2);
			}
		}
		*/
		function selectDates(selected) {
	         if (!$.isEmptyObject(selected)) {
	            // first에 calendar_content
	            var dateElements1 = datesBody1.find('div');
	            // second calendar_content
	            var dateElements2 = datesBody2.find('div');

	            function highlightDates(passed_year, passed_month, dateElements){
	               // passed_year이라는 속성이 selected객체 안에 들어있으면 true
	               if (passed_year in selected && passed_month in selected[passed_year]) {
	                  var daysToCompare = selected[passed_year][passed_month];
	                  // console.log(daysToCompare);
	                
	      
	           var existPastDate = false;
	           for (var d in daysToCompare) {
	                        dateElements.each(function(index) {
	                           if (parseInt($(this).text()) == daysToCompare[d] && $(this).hasClass('past-date')) {
	            existPastDate = true;
	                           }
	                        }); 
	         if (!existPastDate) {  
	            dateElements.each(function(index) {
	                             if (parseInt($(this).text()) == daysToCompare[d]) {
	          
	                               $(this).addClass('selected');
	                             }
	                           }); 
	                        }  
	                    }
	                  
	               }
	            }

	            highlightDates(year, month, dateElements1);
	            highlightDates(nextYear, nextMonth, dateElements2);
	         }
	      }

		function makeMonthArray(passed_month, passed_year) { // creates Array specifying dates and weekdays
			var e=[];
			for(var r=1;r<getDaysInMonth(passed_year, passed_month)+1;r++) {
				e.push({day: r,
						// Later refactor -- weekday needed only for first week
						weekday: daysArray[getWeekdayNum(passed_year,passed_month,r)]
					});
			}
			return e;
		}
		function makeWeek(week) {
			week.empty();
			for(var e=0;e<7;e++) { 
				week.append("<div>"+daysArray[e].substring(0,3)+"</div>") 
			}
		}

		function getDaysInMonth(currentYear,currentMon) {
			return(new Date(currentYear,currentMon+1,0)).getDate();
		}
		function getWeekdayNum(e,t,n) {
			return(new Date(e,t,n)).getDay();
		}
		function checkToday(e) {
			var todayDate = today.getFullYear()+'/'+(today.getMonth()+1)+'/'+today.getDate();
			var checkingDate = e.getFullYear()+'/'+(e.getMonth()+1)+'/'+e.getDate();
			return todayDate==checkingDate;

		}
		function getAdjacentMonth(curr_month, curr_year, direction) {
			var theNextMonth;
			var theNextYear;
			if (direction == "next") {
				theNextMonth = (curr_month + 1) % 12;
				theNextYear = (curr_month == 11) ? curr_year + 1 : curr_year;
			} else {
				theNextMonth = (curr_month == 0) ? 11 : curr_month - 1;
				theNextYear = (curr_month == 0) ? curr_year - 1 : curr_year;
			}
			return [theNextMonth, theNextYear];
		}
		function b() {
			today = new Date;
			year = today.getFullYear();
			month = today.getMonth();
			var nextDates = getAdjacentMonth(month, year, "next");
			nextMonth = nextDates[0];
			nextYear = nextDates[1];
		}

		var e=480;

		var today;
		var year,
			month,
			nextMonth,
			nextYear;

		//var t=2013;
		//var n=9;
		var r = [];
		var i = ["1월","2월","3월","4월","5월",
				"6월","7월","8월","9월","10월", 
				"11월","12월"];
		var daysArray = ["일","월","화",
						"수","목","금","토"];
		var o = ["#16a085","#1abc9c","#c0392b","#27ae60",
				"#FF6860","#f39c12","#f1c40f","#e67e22",
				"#2ecc71","#e74c3c","#d35400","#2c3e50"];
		
		var cal1=$("#calendar_first");
		var calHeader1=cal1.find(".calendar_header");
		var weekline1=cal1.find(".calendar_weekdays");
		var datesBody1=cal1.find(".calendar_content");

		var cal2=$("#calendar_second");
		var calHeader2=cal2.find(".calendar_header");
		var weekline2=cal2.find(".calendar_weekdays");
		var datesBody2=cal2.find(".calendar_content");

		var bothCals = $(".calendar");

		var switchButton = bothCals.find(".calendar_header").find('.switch-month');

		var calendars = { 
						"cal1": { 	"name": "first",
									"calHeader": calHeader1,
									"weekline": weekline1,
									"datesBody": datesBody1 },
						"cal2": { 	"name": "second",
									"calHeader": calHeader2,
									"weekline": weekline2,
									"datesBody": datesBody2	}
						}
		

		var clickedElement;
		var firstClicked,
			secondClicked,
			thirdClicked;
		var firstClick = false;
		var secondClick = false;	
		var selected = {};

		b();
		c(month, year, 0);
		c(nextMonth, nextYear, 1);
		switchButton.on("click",function() {
			var clicked=$(this);
			var generateCalendars = function(e) {
				var nextDatesFirst = getAdjacentMonth(month, year, e);
				var nextDatesSecond = getAdjacentMonth(nextMonth, nextYear, e);
				month = nextDatesFirst[0];
				year = nextDatesFirst[1];
				nextMonth = nextDatesSecond[0];
				nextYear = nextDatesSecond[1];

				c(month, year, 0);
				c(nextMonth, nextYear, 1);
			};
			if(clicked.attr("class").indexOf("left")!=-1) { 
				generateCalendars("previous");
			} else { generateCalendars("next"); }
			clickedElement = bothCals.find(".calendar_content").find("div");
			console.log("checking");
		});


		//  Click picking stuff
		function getClickedInfo(element, calendar) {
			var clickedInfo = {};
			var clickedCalendar,
				clickedMonth,
				clickedYear;
			clickedCalendar = calendar.name;
			//console.log(element.parent().parent().attr('class'));
			clickedMonth = clickedCalendar == "first" ? month : nextMonth;
			clickedYear = clickedCalendar == "first" ? year : nextYear;
			clickedInfo = {"calNum": clickedCalendar,
							"date": parseInt(element.text()),
							"month": clickedMonth,
							"year": clickedYear}
			//console.log(clickedInfo);
			return clickedInfo;
		}

		// 선택한 날짜 추가 !!!!
		// Finding between dates MADNESS. Needs refactoring and smartening up :)
		function addChosenDates(firstClicked, secondClicked, selected) {
			// 두번째 선택한 값이 년, 월, 일 중에 하나라도 크면 실행
			if (secondClicked.date > firstClicked.date || 
				secondClicked.month > firstClicked.month ||
				secondClicked.year > firstClicked.year) {

				var added_year = secondClicked.year;
				var added_month = secondClicked.month;
				var added_date = secondClicked.date;
				// 이게 값이다!!!!
				console.log(selected);

				// 두번째 클릭한 값에 연도가 첫번째 선택한 년도 보다 클 경우
				if (added_year > firstClicked.year) {	
					// 두번째 클릭 연도의 모든 월의 모든 날짜를 추가한다.
					// first add all dates from all months of Second-Clicked-Year
					selected[added_year] = {};
					selected[added_year][added_month] = [];
					// 두번째 클릭 날보다 전날 까지
					for (var i = 1; 
						i <= secondClicked.date;
						i++) {
						selected[added_year][added_month].push(i);
					}
			
					added_month = added_month - 1;
					console.log(added_month);
					while (added_month >= 0) {
						selected[added_year][added_month] = [];
						for (var i = 1; 
							i <= getDaysInMonth(added_year, added_month);
							i++) {
							selected[added_year][added_month].push(i);
						}
						added_month = added_month - 1;
					}

					added_year = added_year - 1;
					added_month = 11; // reset month to Dec because we decreased year
					added_date = getDaysInMonth(added_year, added_month); // reset date as well

					// Now add all dates from all months of inbetween years!!!!!!
					while (added_year > firstClicked.year) {
						selected[added_year] = {};
						for (var i=0; i < 12; i++) {
							selected[added_year][i] = [];
							for (var d = 1; d <= getDaysInMonth(added_year, i); d++) {
								selected[added_year][i].push(d);
							}
						}
						added_year = added_year - 1;
					}
				}
				
				if (added_month > firstClicked.month) {
					if (firstClicked.year == secondClicked.year) {
						console.log("here is the month:",added_month);
						selected[added_year][added_month] = [];
						for (var i = 1; 
							i <= secondClicked.date;
							i++) {
							selected[added_year][added_month].push(i);
						}
						added_month = added_month - 1;
					}
					while (added_month > firstClicked.month) {
						selected[added_year][added_month] = [];
						for (var i = 1; 
							i <= getDaysInMonth(added_year, added_month);
							i++) {
							selected[added_year][added_month].push(i);
						}
						added_month = added_month - 1;
					}
					added_date = getDaysInMonth(added_year, added_month);
				}

				for (var i = firstClicked.date + 1; 
					i <= added_date;
					i++) {
					selected[added_year][added_month].push(i);
				}
			}
			return selected;
		}
		
		function parse(opendate) {
			var y = opendate.substr(0,4);
			var m = opendate.substr(5,2);
			var d = opendate.substr(8,2);
			return new Date(y,m-1,d);
		}
		function parse1(check) {
			var y = opendate.substr(0,4);
			var m = opendate.substr(5,2);
			var d = opendate.substr(8,2);
			return new Date(y,m,d);
		}
		
		function btDay(firstDate, secondDate) {
			var btMs = secondDate.getTime() - firstDate();
			var btDay = btMs / (1000*60*60*24);
			return btDay;
		}
		
		$(".button-erase").click(function() {
			selected = {};
			firstClicked = [];
			secondClicked = [];
			firstClick = false;
			secondClick = false;
			$(".check-in-date").text("날짜 추가");
			$(".check-out-date").text("날짜 추가");
			$(".heading-section").text("체크인 날짜를 선택해주세요.");
			$("#booking-top").text("요금을 확인하려면 날짜를 입력하세요.");
			$(".booking-fee").empty();
			$(".calendar").find(".calendar_content").find("div").each(function() {
				$(this).removeClass("selected");
			})
		});
		// 해당 날짜 숙박요금 
		function lodgingPrice(bookingDate) {
			for(var ldg=0; ldg<list.length; ldg++) {
				var opendate = parse(list[ldg].openDate);
				
				if (bookingDate.getDate() == opendate.getDate() && bookingDate.getMonth() == opendate.getMonth() && bookingDate.getFullYear() == opendate.getFullYear()) {
					var price = list[ldg].lodgingFee;
					return price;
				}
			}
		}
		// 해당 날짜 청소비
		function cleaningPrice(bookingDate) {
			for(var ldg=0; ldg<list.length; ldg++) {
				var opendate = parse(list[ldg].openDate);
				
				if (bookingDate.getDate() == opendate.getDate() && bookingDate.getMonth() == opendate.getMonth() && bookingDate.getFullYear() == opendate.getFullYear()) {
					var price = list[ldg].cleaningFee;
					return price;
				}
			}
		}
		
		// 첫번째 클릭연도 두번째 클릭연도가 같을경우 첫번째 달
		function firstMonthPrice(bookingFirstDate, firstClicked, secondClicked) {
			var totalPrice = 0;
			// 체크 아웃 날짜는 돈을 받으면 안된다.
			var length = firstClicked.year == secondClicked.year && firstClicked.month == secondClicked.month?1:0;
			for (var i=0; i<bookingFirstDate.length-length; i++) {
				// 선택된 날짜 만들기 
				var bookingDate = new Date(firstClicked.year, firstClicked.month, bookingFirstDate[i]);
				var price = parseInt(lodgingPrice(bookingDate));
				totalPrice += price;
			}
			// 나누는건 다른곳에서 하자
			// var priceAvg = totalPrice / bookingFirstDate.length;
			return totalPrice;
		}
		
		// 첫번째 클릭연도 두번째 클릭연도가 같은 경우 두번째 달
		function secondMonthPrice(bookingSecondDate, firstClicked, secondClicked) {
			var totalPrice = 0;
			for (var i=0; i<bookingSecondDate.length-1; i++) {
				// 선택된 날짜 만들기 
				var bookingDate = new Date(secondClicked.year, secondClicked.month, bookingSecondDate[i]);
				var price = parseInt(lodgingPrice(bookingDate));
				totalPrice += price;
			}
			// 나누는건 다른곳에서 하자
			// var priceAvg = totalPrice / bookingSecondDate.length;
			return totalPrice;
		}
		// 첫번째 클릭연도 두번째 클릭연도가 같을경우 첫번째 달- 청소비
		function firstMonthCleaningPrice(bookingFirstDate, firstClicked, secondClicked) {
			var totalPrice = 0;
			// 체크 아웃 날짜는 돈을 받으면 안된다.
			var length = firstClicked.year == secondClicked.year && firstClicked.month == secondClicked.month?1:0;
			for (var i=0; i<bookingFirstDate.length-length; i++) {
				// 선택된 날짜 만들기 
				var bookingDate = new Date(firstClicked.year, firstClicked.month, bookingFirstDate[i]);
				var price = parseInt(cleaningPrice(bookingDate));
				totalPrice += price;
			}
			// 나누는건 다른곳에서 하자
			// var priceAvg = totalPrice / bookingFirstDate.length;
			return totalPrice;
		}
		
		// 첫번째 클릭연도 두번째 클릭연도가 같은 경우 두번째 달- 청소비
		function secondMonthCleaningPrice(bookingSecondDate, firstClicked, secondClicked) {
			var totalPrice = 0;
			for (var i=0; i<bookingSecondDate.length-1; i++) {
				// 선택된 날짜 만들기 
				var bookingDate = new Date(secondClicked.year, secondClicked.month, bookingSecondDate[i]);
				var price = parseInt(cleaningPrice(bookingDate));
				totalPrice += price;
			}
			// 나누는건 다른곳에서 하자
			// var priceAvg = totalPrice / bookingSecondDate.length;
			return totalPrice;
		}

		// 인원 선택하는 버튼을 클릭했을 때 이벤트
		// 성인 추가를 눌렀을 경우(항상 1이상이고, 최대인원 보다는 작아야 한다.)
		$(".button-plus").click(function() {
			var maxGuest = parseInt($("#maxGuest").text());
			var guest = parseInt($("#guest").text());
			var adult = parseInt($(".adult").text());
			
			$("#guest").text(guest+1);
			$(".adult").text(adult+1);
			var guest2 = parseInt($("#guest").text());
			
			$("input[name=guest]").attr('value', guest2);
			
			if (guest2 == maxGuest) {
				$(".button-plus").prop('disabled', true);
				$(".button-plus2").prop('disabled', true);
				$(".button-minus").prop('disabled', false);
			} else {
				$(".button-minus").prop('disabled', false);
			}
		})
		$(".button-minus").click(function() {
			var minGuest = 1;
			var guest = parseInt($("#guest").text());
			var adult = parseInt($(".adult").text());
			
			if (adult == 1) {
				return;
			}
			
			$("#guest").text(guest-1);
			$(".adult").text(adult-1);
			var guest2 = parseInt($("#guest").text());
			$("input[name=guest]").attr('value', guest2);
			
			if (guest2 == minGuest) {
				$(".button-plus").prop('disabled', false);
				$(".button-plus2").prop('disabled', false);
				$(".button-minus").prop('disabled', true);
			} else {
				$(".button-plus").prop('disabled', false);
				$(".button-plus2").prop('disabled', false);
				$(".button-minus").prop('disabled', false);
			}
		})
		$(".button-plus2").click(function() {
			var maxGuest = parseInt($("#maxGuest").text());
			var guest = parseInt($("#guest").text());
			var child = parseInt($(".child").text());
			
			$("#guest").text(guest+1);
			$(".child").text(child+1);
			var guest2 = parseInt($("#guest").text());
			$("input[name=guest]").attr('value', guest2);
			
			if (guest2 == maxGuest) {
				$(".button-plus").prop('disabled', true);
				$(".button-plus2").prop('disabled', true);
				$(".button-minus2").prop('disabled', false);
			} else {
				$(".button-minus2").prop('disabled', false);
			}
		})
		$(".button-minus2").click(function() {
			var minGuest = 1;
			var guest = parseInt($("#guest").text());
			var child = parseInt($(".child").text());
			
			if (child == 0) {
				return;
			}
			
			$("#guest").text(guest-1);
			$(".child").text(child-1);
			var guest2 = parseInt($("#guest").text());
			$("input[name=number_of_guests]").attr('value', guest2);
			
			if (guest2 == minGuest) {
				$(".button-plus").prop('disabled', false);
				$(".button-plus2").prop('disabled', false);
				$(".button-minus2").prop('disabled', true);
			} else {
				$(".button-plus").prop('disabled', false);
				$(".button-plus2").prop('disabled', false);
				$(".button-minus2").prop('disabled', false);
			}
		})
		// 요금합계 나오는 <div>넣기
		function makeDiv(btDay, totalPrice, firstMontTotalCleaningPrice) {
			var row = "<div>";
			row += "<div class='Lodging-fee'>";
			row += "<div class='fee'>₩"+totalPrice.toLocaleString()+" x "+btDay+"박</div>";
			row += "<div class='fee'>₩"+(totalPrice * btDay).toLocaleString()+"</div>";
			row += "</div>";
			
			if (firstMontTotalCleaningPrice != 0) {
				row += "<div class='Cleaning-fee'>";
				row += "<div class='fee'>청소비</div>";
				row += "<div class='fee'>₩"+firstMontTotalCleaningPrice.toLocaleString()+"</div>";
				row += "</div>";
			}
			
			row += "<div class='service-fee'>";
			row += "<div class='fee'>숙박세와 수수료</div>";
			row += "<div class='fee'>₩"+(totalPrice * btDay * 0.1).toLocaleString()+"</div>";
			row += "</div>";
			row += "<div class='booking-total-price'>";
			row += "<div class='total-price'>";
			row += "<div class='price'>총 합계</div>";
			row += "<div class='price'>₩"+((totalPrice * btDay)+firstMontTotalCleaningPrice+(totalPrice * btDay * 0.1)).toLocaleString()+"</div>";
			row += "</div>";
			row += "</div>";
			return row;
		}
		
		// 예약하기 버튼을 눌렀을 경우
		$("#form-booking").submit(function() {
			var userNo = $("#user-no").val();
			if (!userNo) {
				alert("로그인이 필요한 서비스입니다.");
				return false;
			}
			
			var userNo2 = "${user.no }";
			var hostNo = "${lodging.userNo}";
			if (userNo2 == hostNo) {
				alert("호스트가 등록한 숙소입니다.");
				return false;
			}
			
			var checkIn = $("#check-in").val();
			if (!checkIn) {
				alert("달력에서 예약할 날짜를 선택해 주세요.");
				return false;
			}
			
			var checkOut = $("#check-out").val();
			if (!checkOut) {
				alert("달력에서 예약할 날짜를 선택해 주세요.");
				return false;
			}
			return true;
		})
		
		var todoModal = new bootstrap.Modal(document.getElementById("reviewFormModal"), {
		keyboard: false
		});
		
		$("#btn-open-review-modal").click(function() {
			// 5점으로 바꾸는 코드 넣기
			$("#select-box option").prop('selected', false);
			//$("#select-box option:eq(0)").prop('selected', true);
			
			$("#review-content").val("");
		});
		
		// 모달창에서 등록 버튼을 클릭했을 때
		$("#btn-post-review").click(function() {
			var content = $("#review-content").val();
			if (content == "") {
				alert("내용을 입력하세요.");
				return false;
			}
			$.ajax({
				type: "POST",
				url: "reviews/add",
				data: $("#form-review").serialize(),									// category=외근&title=노동부 방문&writer=홍길동 쿼리스트링형태로 서버로 전달된다.
				dataType: 'json',
				success: function(reviewList) {
					console.log("성공성공");
					console.log(reviewList);
					// 날짜 표시하기 위해 format
					//var date1 = reviewList[0].createdDate
					//var date2 = new Date(date1);
					//var date = date2.getFullYear()+'년'+(date2.getMonth()+1)+'월 ';
					//console.log(date);
					//var cnt = reviewList.length;
					// 평점 구하기
					// 리뷰 작성하기 전 평균
					//var avg = "${lodging.reviewAverage }";
					// 리뷰 작성하기 전 리뷰 갯수
					//var count = "${lodging.reviewCount }";
					// 이번 리뷰 총점
					//var stars = reviewList[0].stars;
					
					//var star = starAvg(avg, count, stars, cnt);
					//console.log(star);
					// 모달창에 작성한 리뷰를 추가
					//$(".modal-review-right").prepend(makeRow(reviewList, date));
					
					
					// 후기 숫자를 바꿔주기
					//$(".button-reviewcount").text("(후기 "+cnt+"개)");
					//$("#review-cnt").text("후기 "+cnt+"개");
					//$("#review-cnt2").text("후기 "+cnt+"개 모두 보기");
					
					//$("#review-cnt3").text("평점 "+star+" · 후기 "+cnt+"개");
					
					// 화면에 작성한 리뷰를 추가하기
					//if (cnt > 5) {	// 하나를 삭제하고 넣어야한다.
					//	$(".review-box-flex > .review-item-padding:last-child").remove();
					//	$(".review-box-flex").prepend(makeRow2(reviewList, date));
					//} else {
					//	$(".review-box-flex").prepend(makeRow2(reviewList, date));
					//}
					// 그냥 새로고침하기
					window.location.reload();
				},
				complete: function() {
					todoModal.hide();
				}
			});
		})
		// 위도
		var lat = "${lodging.latitude }";
		console.log(lat);
		// 경도
		var lng = "${lodging.longitude }";
		console.log(lat);
		// 주소
		var address = "${lodging.address }"
		var name = "${lodging.name }"
		
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
		   //center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		   center: new kakao.maps.LatLng(lat, lng),
		   level: 3 //지도의 레벨(확대, 축소 정도)
		};
		
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(address, function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+name+'</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});
		
		function makeRow(reviewList, date) {
			var row = "<div>"
			row += "<div style='margin-bottom: 48px;'>";
			row += "<div class='review-item-top'>";
			row += "<div class='photo2' style='height: 56px; width: 56px; border-radius: 50%;'>";
			row += "<div class='photo3' style='display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;'>";
			row += "<img class='photo4' src='resources/images/defaultProfile.jpg' style='object-fit: cover; vertical-align: bottom;'>";
			row += "</div>";
			row += "</div>";
			row += "<div style='margin-left: 12px;'>";
			row += "<div style='font-size: 16px; font-weight: 600;'>"+reviewList[0].name+"</div>";
			row += "<div style='font-size: 14px; font-weight: 400; color: #717171'>"+date+"</div>";
			row += "</div>";
			row += "</div>";
			row += "<div>";
			row += "<span style='font-size: 14px; font-weight: 400;'>"+reviewList[0].comments+"</span>";
			row += "</div>";
			row += "</div>";
			row += "</div>";
			return row;
			
		}
		
		function makeRow2(reviewList, date) {
			var row = "<div class='review-item-padding'>"
			row += "<div style='margin-bottom: 40px;'>";
			row += "<div class='review-item-top'>";
			row += "<div class='photo2' style='height: 56px; width: 56px; border-radius: 50%;'>";
			row += "<div class='photo3' style='display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;'>";
			row += "<img class='photo4' src='resources/images/defaultProfile.jpg' style='object-fit: cover; vertical-align: bottom;'>";
			row += "</div>";
			row += "</div>";
			row += "<div style='margin-left: 12px;'>";
			row += "<div style='font-size: 16px; font-weight: 600;'>"+reviewList[0].name+"</div>";
			row += "<div style='font-size: 14px; font-weight: 400; color: #717171'>"+date+"</div>";
			row += "</div>";
			row += "</div>";
			row += "<div>";
			row += "<div>";
			row += "<span>"+reviewList[0].comments+"</span>";
			row += "</div>";
			row += "</div>";
			row += "</div>";
			row += "</div>";
			return row;
		}
		
		// 평점 구하기 
		function starAvg(avg, count, stars, cnt) {
			// 리뷰 종류 x 작성하기 전 리뷰 갯수 
			var totalcnt = 6 * count;
			// 총점수
			var total = Math.round(totalcnt * avg);
			// 이번 리뷰까지 합친 값
			var total1 = total + stars;
			
			var totalcnt = 6 * cnt;
			// 평점
			var totalAvg = total1 / totalcnt;
			
			var star = totalAvg.toFixed(1);
			
			return star;
		}
		
		
	});
</script>