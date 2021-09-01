<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="page-content-wrapper" style="padding-top: 2%;">
	<div class="container-fluid">
		<!-- Area Chart Example-->
		<div class="card mb-3 h-100">
			<div class="card-header">
				<i class="fas fa-chart-area"></i>
			  		Member Chart
			</div>
			<div class="card-body">
				<canvas id="canvas" width="100%" height="30"></canvas>
			</div>
			<div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
		</div>

		<div class="row">
			<div class="col-lg-8">
				<div class="card mb-3 h-100">
					<div class="card-header">
						<i class="fas fa-chart-bar"></i>
						Noitce Chart
					</div>
					<div class="card-body">
						<canvas id="community" width="100%" height="50"></canvas>
					</div>
					<div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="card mb-3 h-100">
					<div class="card-header">
						<i class="fas fa-chart-pie"></i>
						Popular Class Chart
					</div>
					<div class="card-body">
						<canvas id="chart-area" width="100%" height="100"></canvas>
					</div>
					<div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
				</div>
			</div>
		</div>
	</div>
</div>

<style>
	#canvas, community {
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
	}
</style>
