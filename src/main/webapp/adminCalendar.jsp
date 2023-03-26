<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Shop bán giày dép</title>

    <!-- Bootstrap core CSS -->
    <link href="cssAdmin/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="jsAdmin/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="cssAdmin/style.css" rel="stylesheet">
    <link href="cssAdmin/style-responsive.css" rel="stylesheet">

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

        <!--
          <div class="nav notify-row" id="top_menu">

              <ul class="nav top-menu">

                  <li class="dropdown">
                      <a data-toggle="dropdown" class="dropdown-toggle" href="adminIndex.jsp#">
                          <i class="fa fa-tasks"></i>
                          <span class="badge bg-theme">4</span>
                      </a>
                      <ul class="dropdown-menu extended tasks-bar">
                          <div class="notify-arrow notify-arrow-green"></div>
                          <li>
                              <p class="green">Bạn có 4 nhiệm vụ đang chờ xử lí</p>
                          </li>
                          <li>
                              <a href="adminIndex.jsp#">
                                  <div class="task-info">
                                      <div class="desc"> Bảng quản trị</div>
                                      <div class="percent">40%</div>
                                  </div>
                                  <div class="progress progress-striped">
                                      <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                          <span class="sr-only">40% Hoàn thành(thành công)</span>
                                      </div>
                                  </div>
                              </a>
                          </li>
                          <li>
                              <a href="adminIndex.jsp#">
                                  <div class="task-info">
                                      <div class="desc">Cập nhật dữ liệu</div>
                                      <div class="percent">60%</div>
                                  </div>
                                  <div class="progress progress-striped">
                                      <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                          <span class="sr-only">60% Hoàn thành( cảnh báo)</span>
                                      </div>
                                  </div>
                              </a>
                          </li>
                          <li>
                              <a href="adminIndex.jsp#">
                                  <div class="task-info">
                                      <div class="desc">Phát triển sản phẩm</div>
                                      <div class="percent">80%</div>
                                  </div>
                                  <div class="progress progress-striped">
                                      <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                          <span class="sr-only">80% Hoàn thành</span>
                                      </div>
                                  </div>
                              </a>
                          </li>
                          <li>
                              <a href="adminIndex.jsp#">
                                  <div class="task-info">
                                      <div class="desc">Thanh toán đã được gửi</div>
                                      <div class="percent">70%</div>
                                  </div>
                                  <div class="progress progress-striped">
                                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                          <span class="sr-only">70% Hoàn thành( quan trọng)</span>
                                      </div>
                                  </div>
                              </a>
                          </li>
                          <li class="external">
                              <a href="#">Xem tất cả</a>
                          </li>
                      </ul>
                  </li>


                  <li id="header_inbox_bar" class="dropdown">
                      <a data-toggle="dropdown" class="dropdown-toggle" href="adminIndex.jsp#">
                          <i class="fa fa-envelope-o"></i>
                          <span class="badge bg-theme">5</span>
                      </a>
                      <ul class="dropdown-menu extended inbox">
                          <div class="notify-arrow notify-arrow-green"></div>
                          <li>
                              <p class="green">Bạn có 5 tin nhắn</p>
                          </li>
                          <li>
                              <a href="adminIndex.jsp#">
                                  <span class="photo"><img alt="avatar" src="  imgAd/ui-zac.jpg"></span>
                                  <span class="subject">
                                  <span class="from">Zac Snider</span>
                                  <span class="time">Bây giờ</span>
                                  </span>
                                  <span class="message">
                                      Hi, mọi thứ thế nào?
                                  </span>
                              </a>
                          </li>
                          <li>
                              <a href="adminIndex.jsp#">
                                  <span class="photo"><img alt="avatar" src="  imgAd/ui-divya.jpg"></span>
                                  <span class="subject">
                                  <span class="from">Divya Manian</span>
                                  <span class="time">40 phút</span>
                                  </span>
                                  <span class="message">
                                   Hi, tôi cần bạn giúp cái này.
                                  </span>
                              </a>
                          </li>
                          <li>
                              <a href="adminIndex.jsp#">
                                  <span class="photo"><img alt="avatar" src="  imgAd/ui-danro.jpg"></span>
                                  <span class="subject">
                                  <span class="from">Dan Rogers</span>
                                  <span class="time">2 giờ.</span>
                                  </span>
                                  <span class="message">
                                      Cảm ơn.
                                  </span>
                              </a>
                          </li>
                          <li>
                              <a href="adminIndex.jsp#">
                                  <span class="photo"><img alt="avatar" src="  imgAd/ui-sherman.jpg"></span>
                                  <span class="subject">
                                  <span class="from">Dj Sherman</span>
                                  <span class="time">4 giờ.</span>
                                  </span>
                                  <span class="message">
                                      Làm ơn, trả lời lại đi.
                                  </span>
                              </a>
                          </li>
                          <li>
                              <a href="adminIndex.jsp#">Xem tất cả</a>
                          </li>
                      </ul>
                  </li>

              </ul>

          </div>
        -->
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
            <h3><i class="fa fa-angle-right"></i> Lịch</h3>
            <!-- page start-->
            <div class="row mt">
                <aside class="col-lg-3 mt">
                    <h4><i class="fa fa-angle-right"></i> Kéo thả sự kiện</h4>
                    <div id="external-events">
                        <div class="external-event label label-theme">Sự kiện 1</div>
                        <div class="external-event label label-success">Sự kiện 2</div>
                        <div class="external-event label label-info">Sự kiện 3</div>
                        <div class="external-event label label-warning">Sự kiện 4</div>
                        <div class="external-event label label-danger">Sự kiện 5</div>
                        <div class="external-event label label-default">Sự kiện 6</div>
                        <div class="external-event label label-theme">Sự kiện 7</div>
                        <div class="external-event label label-info">Sự kiện 8</div>
                        <div class="external-event label label-success">Sự kiện 9</div>
                        <p class="drop-after">
                            <input type="checkbox" id="drop-remove">
                            Loại bỏ sau khi thả
                        </p>
                    </div>
                </aside>
                <aside class="col-lg-9 mt">
                    <section class="panel">
                        <div class="panel-body">
                            <div id="calendar" class="has-toolbar"></div>
                        </div>
                    </section>
                </aside>
            </div>
            <!-- page end-->
        </section><! --/wrapper -->
    </section><!-- /MAIN CONTENT -->

    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
        <div class="text-center">

            <a href="adminCalendar.jsp#" class="go-top">
                <i class="fa fa-angle-up"></i>
            </a>
        </div>
    </footer>
    <!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
<script src="jsAdmin/jquery.js"></script>
<script src="jsAdmin/jquery-ui-1.9.2.custom.min.js"></script>
<script src="jsAdmin/fullcalendar/fullcalendar.min.js"></script>
<script src="jsAdmin/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="jsAdmin/jquery.dcjqaccordion.2.7.js"></script>
<script src="jsAdmin/jquery.scrollTo.min.js"></script>
<script src="jsAdmin/jquery.nicescroll.js" type="text/javascript"></script>


<!--common script for all pages-->
<script src="jsAdmin/common-scripts.js"></script>

<!--script for this page-->
<script src="jsAdmin/calendar-conf-events.js"></script>

<script>
    //custom select box

    $(function(){
        $("select.styled").customSelect();
    });

</script>

</body>
</html>
