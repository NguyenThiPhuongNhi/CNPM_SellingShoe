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
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="cssAdmin/style.css" rel="stylesheet">
    <link href="cssAdmin/style-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="cssAdmin/to-do.css">

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
            <h3><i class="fa fa-angle-right"></i> Danh sách cần làm</h3>

            <!-- SIMPLE TO DO LIST -->
            <div class="row mt">
                <div class="col-md-12">
                    <div class="white-panel pn">
                        <div class="panel-heading">
                            <div class="pull-left"><h5><i class="fa fa-tasks"></i> Todo List - Basic Style</h5></div>
                            <br>
                        </div>
                        <div class="custom-check goleft mt">
                            <table id="todo" class="table table-hover custom-check">
                                <tbody>
                                <tr>
                                    <td>
                                        <span class="check"><input type="checkbox" class="checked"></span>
                                        <a href="adminIndex.jsp#">Gửi hóa đơn</a></span>
                                        <button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="check"><input type="checkbox" class="checked"></span>
                                        <a href="adminIndex.jsp#">Kiểm tra tin nhắn</a></span>
                                        <button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="check"><input type="checkbox" class="checked"></span>
                                        <a href="adminIndex.jsp#">Thanh toán hóa đơn</a></span>
                                        <button class="close" aria-hidden="true" data-dismiss="alert" type="button">×</button>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div><!-- /table-responsive -->
                    </div><!--/ White-panel -->
                </div><! --/col-md-12 -->
            </div><! -- row -->


            <!-- COMPLEX TO DO LIST -->
            <div class="row mt">
                <div class="col-md-12">
                    <section class="task-panel tasks-widget">
                        <div class="panel-heading">
                            <div class="pull-left"><h5><i class="fa fa-tasks"></i> Todo List - Complex Style</h5></div>
                            <br>
                        </div>
                        <div class="panel-body">
                            <div class="task-content">

                                <ul class="task-list">
                                    <li>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">Dashgum - Admin Panel Theme</span>
                                            <span class="badge bg-theme">Done</span>
                                            <div class="pull-right hidden-phone">
                                                <button class="btn btn-success btn-xs"><i class=" fa fa-check"></i></button>
                                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">Extensive collection of plugins</span>
                                            <span class="badge bg-warning">Cool</span>
                                            <div class="pull-right hidden-phone">
                                                <button class="btn btn-success btn-xs"><i class=" fa fa-check"></i></button>
                                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">Free updates always, no extra fees.</span>
                                            <span class="badge bg-success">2 Days</span>
                                            <div class="pull-right hidden-phone">
                                                <button class="btn btn-success btn-xs"><i class=" fa fa-check"></i></button>
                                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">More features coming soon</span>
                                            <span class="badge bg-info">Tomorrow</span>
                                            <div class="pull-right hidden-phone">
                                                <button class="btn btn-success btn-xs"><i class=" fa fa-check"></i></button>
                                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">Hey, seriously, you should buy this Dashboard</span>
                                            <span class="badge bg-important">Now</span>
                                            <div class="pull-right">
                                                <button class="btn btn-success btn-xs"><i class=" fa fa-check"></i></button>
                                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class=" add-task-row">
                                <a class="btn btn-success btn-sm pull-left" href="adminTodo_list.jsp#">Add New Tasks</a>
                                <a class="btn btn-default btn-sm pull-right" href="adminTodo_list.jsp#">See All Tasks</a>
                            </div>
                        </div>
                    </section>
                </div><!-- /col-md-12-->
            </div>
            <!-- /row -->


            <!-- SORTABLE TO DO LIST -->

            <div class="row mt mb">
                <div class="col-md-12">
                    <section class="task-panel tasks-widget">
                        <div class="panel-heading">
                            <div class="pull-left"><h5><i class="fa fa-tasks"></i> Todo List - Sortable Style</h5></div>
                            <br>
                        </div>
                        <div class="panel-body">
                            <div class="task-content">
                                <ul id="sortable" class="task-list">
                                    <li class="list-primary">
                                        <i class=" fa fa-ellipsis-v"></i>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">Dashgum - Admin Panel Theme</span>
                                            <span class="badge bg-theme">Done</span>
                                            <div class="pull-right hidden-phone">
                                                <button class="btn btn-success btn-xs fa fa-check"></button>
                                                <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                                                <button class="btn btn-danger btn-xs fa fa-trash-o"></button>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-danger">
                                        <i class=" fa fa-ellipsis-v"></i>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">Extensive collection of plugins</span>
                                            <span class="badge bg-warning">Cool</span>
                                            <div class="pull-right hidden-phone">
                                                <button class="btn btn-success btn-xs fa fa-check"></button>
                                                <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                                                <button class="btn btn-danger btn-xs fa fa-trash-o"></button>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-success">
                                        <i class=" fa fa-ellipsis-v"></i>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">Free updates always, no extra fees.</span>
                                            <span class="badge bg-success">2 Days</span>
                                            <div class="pull-right hidden-phone">
                                                <button class="btn btn-success btn-xs fa fa-check"></button>
                                                <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                                                <button class="btn btn-danger btn-xs fa fa-trash-o"></button>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-warning">
                                        <i class=" fa fa-ellipsis-v"></i>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">More features coming soon</span>
                                            <span class="badge bg-info">Tomorrow</span>
                                            <div class="pull-right hidden-phone">
                                                <button class="btn btn-success btn-xs fa fa-check"></button>
                                                <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                                                <button class="btn btn-danger btn-xs fa fa-trash-o"></button>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-info">
                                        <i class=" fa fa-ellipsis-v"></i>
                                        <div class="task-checkbox">
                                            <input type="checkbox" class="list-child" value=""  />
                                        </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">Hey, seriously, you should buy this Dashboard</span>
                                            <span class="badge bg-important">Now</span>
                                            <div class="pull-right hidden-phone">
                                                <button class="btn btn-success btn-xs fa fa-check"></button>
                                                <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                                                <button class="btn btn-danger btn-xs fa fa-trash-o"></button>
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                            </div>
                            <div class=" add-task-row">
                                <a class="btn btn-success btn-sm pull-left" href="adminTodo_list.jsp#">Add New Tasks</a>
                                <a class="btn btn-default btn-sm pull-right" href="adminTodo_list.jsp#">See All Tasks</a>
                            </div>
                        </div>
                    </section>
                </div><!--/col-md-12 -->
            </div><!-- /row -->

        </section><! --/wrapper -->
    </section><!-- /MAIN CONTENT -->

    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
        <div class="text-center">

            <a href="adminTodo_list.jsp#" class="go-top">
                <i class="fa fa-angle-up"></i>
            </a>
        </div>
    </footer>
    <!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
<script src="jsAdmin/jquery.js"></script>
<script src="jsAdmin/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="jsAdmin/jquery.dcjqaccordion.2.7.js"></script>
<script src="jsAdmin/jquery.scrollTo.min.js"></script>
<script src="jsAdmin/jquery.nicescroll.js" type="text/javascript"></script>


<!--common script for all pages-->
<script src="jsAdmin/common-scripts.js"></script>

<!--script for this page-->
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script src="jsAdmin/tasks.js" type="text/javascript"></script>

<script>
    jQuery(document).ready(function() {
        TaskList.initTaskWidget();
    });

    $(function() {
        $( "#sortable" ).sortable();
        $( "#sortable" ).disableSelection();
    });

</script>


<script>
    //custom select box

    $(function(){
        $('select.styled').customSelect();
    });

</script>

</body>
</html>
