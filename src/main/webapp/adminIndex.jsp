<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Dashboard">
	<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

	<title>Admin-Shop bán giày dép</title>

	<!-- Bootstrap core CSS -->
	<link href="cssAdmin/bootstrap.css" rel="stylesheet">
	<!--external css-->
	<link href="css/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="cssAdmin/zabuto_calendar.css">
	<link rel="stylesheet" type="text/css" href="jsAdmin/gritter/css/jquery.gritter.css" />
	<link rel="stylesheet" type="text/css" href=" lineicons/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Custom styles for this template -->
	<link href="cssAdmin/style.css" rel="stylesheet">
	<link href="cssAdmin/style-responsive.css" rel="stylesheet">

	<script src="jsAdmin/chart-master/Chart.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>

<section id="container" >
	<!-- **********************************************************************************************************************************************************
    TOP BAR CONTENT & NOTIFICATIONS
    *********************************************************************************************************************************************************** -->
	<!--header start-->
	<header class="header black-bg">
		<div class="sidebar-toggle-box">
			<div class="fa fa-bars tooltips" data-placement="right" ></div>
		</div>
		<!--logo start-->
		<a href="adminIndex.jsp" class="logo"><b>Shop bán giày dép</b></a>
		<!--logo end-->
		<jsp:include page="headerAdmin.jsp"></jsp:include>
	</header>
	<!--header end-->

	<!-- **********************************************************************************************************************************************************
    MAIN SIDEBAR MENU
    *********************************************************************************************************************************************************** -->
	<!--sidebar start-->
	<jsp:include page="sideBarAdmin.jsp"></jsp:include>
	<!--sidebar end-->

	<!-- **********************************************************************************************************************************************************
    MAIN CONTENT
    *********************************************************************************************************************************************************** -->
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">

			<div class="row">
				<div class="col-lg-9 main-chart">

					<div class="row mtbox">
						<div class="col-md-2 col-sm-2 col-md-offset-1 box0">
							<div class="box1">
								<span class="li_heart"></span>
								<h3>933</h3>
							</div>
							<p>933 người đã thích trang của bạn trong 24h vừa qua. Whoohoo!</p>
						</div>
						<div class="col-md-2 col-sm-2 box0">
							<div class="box1">
								<span class="li_cloud"></span>
								<h3>+48</h3>
							</div>
							<p>48 Tập tin mới đã được thêm vào cloud của bạn.</p>
						</div>
						<div class="col-md-2 col-sm-2 box0">
							<div class="box1">
								<span class="li_stack"></span>
								<h3>23</h3>
							</div>
							<p>Bạn có 23 tin nhắn chưa đọc.</p>
						</div>
						<div class="col-md-2 col-sm-2 box0">
							<div class="box1">
								<span class="li_news"></span>
								<h3>+10</h3>
							</div>
							<p>Hơn 10 tin tức được thêm vào trình đọc của bạn.</p>
						</div>
						<div class="col-md-2 col-sm-2 box0">
							<div class="box1">
								<span class="li_data"></span>
								<h3>OK!</h3>
							</div>
							<p>Máy chủ của bạn đang chạy rất tốt. Thư giãn và tận hưởng nào!!.</p>
						</div>

					</div><!-- /row mt -->


					<div class="row mt">
						<!-- SERVER STATUS PANELS -->
						<div class="col-md-4 col-sm-4 mb">
							<div class="white-panel pn donut-chart">
								<div class="white-header">
									<h5>Tải máy chủ</h5>
								</div>
								<div class="row">
									<div class="col-sm-6 col-xs-6 goleft">
										<p><i class="fa fa-database"></i> 70%</p>
									</div>
								</div>
								<canvas id="serverstatus01" height="120" width="120"></canvas>
								<script>
									var doughnutData = [
										{
											value: 70,
											color:"#68dff0"
										},
										{
											value : 30,
											color : "#fdfdfd"
										}
									];
									var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
								</script>
							</div><! --/grey-panel -->
						</div><!-- /col-md-4-->


						<div class="col-md-4 col-sm-4 mb">
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Top sản phẩm</h5>
								</div>
								<div class="row">
									<div class="col-sm-6 col-xs-6 goleft">
										<p><i class="fa fa-heart"></i> 122</p>
									</div>
									<div class="col-sm-6 col-xs-6"></div>
								</div>
								<div class="centered">
									<img src="imgAd/product/Nu/RunningShoes/rs1.png" width="120">
								</div>
							</div>
						</div><!-- /col-md-4 -->

						<div class="col-md-4 mb">
							<!-- WHITE PANEL - TOP USER -->
							<div class="white-panel pn">
								<div class="white-header">
									<h5>Top người dùng</h5>
								</div>
								<p><img src="  imgAd/ui-zac.jpg" class="img-circle" width="80"></p>
								<p><b>Zac Snider</b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">Thành viên từ</p>
										<p>2018</p>
									</div>
									<div class="col-md-6">
										<p class="small mt">Tổng chi tiêu</p>
										<p>12,050,000 đ</p>
									</div>
								</div>
							</div>
						</div><!-- /col-md-4 -->


					</div><!-- /row -->


					<div class="row">
						<!-- TWITTER PANEL -->
						<div class="col-md-4 mb">
							<div class="darkblue-panel pn">
								<div class="darkblue-header">
									<h5>Thống kê</h5>
								</div>
								<canvas id="serverstatus02" height="120" width="120"></canvas>
								<script>
									var doughnutData = [
										{
											value: 60,
											color:"#68dff0"
										},
										{
											value : 40,
											color : "#444c57"
										}
									];
									var myDoughnut = new Chart(document.getElementById("serverstatus02").getContext("2d")).Doughnut(doughnutData);
								</script>
								<p>Tháng mười một 17, 2022</p>
								<footer>
									<div class="pull-left">
										<h5><i class="fa fa-hdd-o"></i> 17 GB</h5>
									</div>
									<div class="pull-right">
										<h5>60% sử dụng</h5>
									</div>
								</footer>
							</div><! -- /darkblue panel -->
						</div><!-- /col-md-4 -->


						<div class="col-md-4 mb">
							<!-- INSTAGRAM PANEL -->
							<div class="instagram-panel pn">
								<i class="fa fa-instagram fa-4x"></i>
								<p>@THISISYOU<br/>
									5 phút trước
								</p>
								<p><i class="fa fa-comment"></i> 18 | <i class="fa fa-heart"></i> 49</p>
							</div>
						</div><!-- /col-md-4 -->

						<div class="col-md-4 col-sm-4 mb">
							<!-- REVENUE PANEL -->
							<div class="darkblue-panel pn">
								<div class="darkblue-header">
									<h5>Doanh thu</h5>
								</div>
								<div class="chart mt">
									<div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,464,655]"></div>
								</div>
								<p class="mt"><b>17.980.000đ</b><br/>Thu nhập tháng</p>
							</div>
						</div><!-- /col-md-4 -->

					</div><!-- /row -->

					<div class="row mt">
						<!--CUSTOM CHART START -->

						<!--              <div class="border-head">
                                          <h3>Đã ghé</h3>
                                      </div>
                                      <div class="custom-bar-chart">
                                          <ul class="y-axis">
                                              <li><span>10.000</span></li>
                                              <li><span>8.000</span></li>
                                              <li><span>6.000</span></li>
                                              <li><span>4.000</span></li>
                                              <li><span>2.000</span></li>
                                              <li><span>0</span></li>
                                          </ul>
                                          <div class="bar">
                                              <div class="title">Hai</div>
                                              <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top">85%</div>
                                          </div>
                                          <div class="bar ">
                                              <div class="title">Ba</div>
                                              <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top">50%</div>
                                          </div>
                                          <div class="bar ">
                                              <div class="title">Tư</div>
                                              <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top">60%</div>
                                          </div>
                                          <div class="bar ">
                                              <div class="title">Năm</div>
                                              <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top">45%</div>
                                          </div>
                                          <div class="bar">
                                              <div class="title">Sáu</div>
                                              <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top">32%</div>
                                          </div>
                                          <div class="bar ">
                                              <div class="title">Bảy</div>
                                              <div class="value tooltips" data-original-title="6.200" data-toggle="tooltip" data-placement="top">62%</div>
                                          </div>
                                          <div class="bar">
                                              <div class="title">Chủ nhật</div>
                                              <div class="value tooltips" data-original-title="7.500" data-toggle="tooltip" data-placement="top">75%</div>
                                          </div>
                                      </div>
                                      -->
						<!--custom chart end-->
					</div><!-- /row -->

				</div><!-- /col-lg-9 END SECTION MIDDLE -->


				<!-- **********************************************************************************************************************************************************
                RIGHT SIDEBAR CONTENT
                *********************************************************************************************************************************************************** -->

				<div class="col-lg-3 ds">
					<!--COMPLETED ACTIONS DONUTS CHART-->
					<h3>Thông báo</h3>

					<!-- First Action -->
					<div class="desc">
						<div class="thumb">
							<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
						</div>
						<div class="details">
							<p><muted>2 phút trước</muted><br/>
								<a href="#">James Brown</a> đã đăng kí nhận bản tin của bạn.<br/>
							</p>
						</div>
					</div>
					<!-- Second Action -->
					<div class="desc">
						<div class="thumb">
							<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
						</div>
						<div class="details">
							<p><muted>3 giờ trước</muted><br/>
								<a href="#">Diana Kennedy</a> đã thanh toán đăng kí một năm.<br/>
							</p>
						</div>
					</div>
					<!-- Third Action -->
					<div class="desc">
						<div class="thumb">
							<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
						</div>
						<div class="details">
							<p><muted>7 giờ trước</muted><br/>
								<a href="#">Brandon Page</a> đã thanh toán đăng kí một năm.<br/>
							</p>
						</div>
					</div>
					<!-- Fourth Action -->
					<div class="desc">
						<div class="thumb">
							<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
						</div>
						<div class="details">
							<p><muted>11 giờ trước</muted><br/>
								<a href="#">Mark Twain</a> đã bình luận vào bài viết của bạn.<br/>
							</p>
						</div>
					</div>


					<!-- USERS ONLINE SECTION -->
					<h3>Thành viên nhóm</h3>
					<!-- First Member -->
					<div class="desc">
						<div class="thumb">
							<img class="img-circle" src="  imgAd/ui-divya.jpg" width="35px" height="35px" align="">
						</div>
						<div class="details">
							<p><a href="#">DIVYA MANIAN</a><br/>
								<muted>Khả dụng</muted>
							</p>
						</div>
					</div>
					<!-- Second Member -->
					<div class="desc">
						<div class="thumb">
							<img class="img-circle" src="  imgAd/ui-sherman.jpg" width="35px" height="35px" align="">
						</div>
						<div class="details">
							<p><a href="#">DJ SHERMAN</a><br/>
								<muted>Tôi đang bận</muted>
							</p>
						</div>
					</div>
					<!-- Third Member -->
					<div class="desc">
						<div class="thumb">
							<img class="img-circle" src="  imgAd/ui-danro.jpg" width="35px" height="35px" align="">
						</div>
						<div class="details">
							<p><a href="#">DAN ROGERS</a><br/>
								<muted>Khả dụng</muted>
							</p>
						</div>
					</div>

					<!-- Fifth Member -->
					<!--          <div class="desc">
                                  <div class="thumb">
                                      <img class="img-circle" src="  imgAd/ui-sam.jpg" width="35px" height="35px" align="">
                                  </div>
                                  <div class="details">
                                      <p><a href="#">Marcel Newman</a><br/>
                                         <muted>Available</muted>
                                      </p>
                                  </div>
                              </div>
        -->
					<!-- CALENDAR-->
					<div id="calendar" class="mb">
						<div class="panel green-panel no-margin">
							<div class="panel-body">
								<div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
									<div class="arrow"></div>
									<h3 class="popover-title" style="disadding: none;"></h3>
									<div id="date-popover-content" class="popover-content"></div>
								</div>
								<div id="my-calendar"></div>
							</div>
						</div>
					</div><!-- / calendar -->

				</div><!-- /col-lg-3 -->
			</div><! --/row -->
		</section>
	</section>

	<!--main content end-->
	<!--footer start-->
	<footer class="site-footer">
		<div class="text-center">

			<a href="adminIndex.jsp#" class="go-top">
				<i class="fa fa-angle-up"></i>
			</a>
		</div>
	</footer>
	<!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
<script src="jsAdmin/jquery.js"></script>
<script src="jsAdmin/jquery-1.8.3.min.js"></script>
<script src="jsAdmin/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="jsAdmin/jquery.dcjqaccordion.2.7.js"></script>
<script src="jsAdmin/jquery.scrollTo.min.js"></script>
<script src="jsAdmin/jquery.nicescroll.js" type="text/javascript"></script>
<script src="jsAdmin/jquery.sparkline.js"></script>


<!--common script for all pages-->
<script src="jsAdmin/common-scripts.js"></script>

<script type="text/javascript" src="jsAdmin/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="jsAdmin/gritter-conf.js"></script>

<!--script for this page-->
<script src="jsAdmin/sparkline-chart.js"></script>
<script src="jsAdmin/zabuto_calendar.js"></script>

<script type="application/javascript">
	$(document).ready(function () {
		$("#date-popover").popover({html: true, trigger: "manual"});
		$("#date-popover").hide();
		$("#date-popover").click(function (e) {
			$(this).hide();
		});

		$("#my-calendar").zabuto_calendar({
			action: function () {
				return myDateFunction(this.id, false);
			},
			action_nav: function () {
				return myNavFunction(this.id);
			},
			ajax: {
				url: "show_data.php?action=1",
				modal: true
			},
			legend: [
				{type: "text", label: "Sự kiện đặc biệt", badge: "00"},
				{type: "block", label: "Sự kiện thường", }
			]
		});
	});


	function myNavFunction(id) {
		$("#date-popover").hide();
		var nav = $("#" + id).data("navigation");
		var to = $("#" + id).data("to");
		console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
	}
</script>


</body>
</html>
