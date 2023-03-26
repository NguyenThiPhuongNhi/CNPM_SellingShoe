<%@ page import="project.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="project.model.CategoryItem" %>
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
  <link href="css/font-awesome.css" rel="stylesheet"/>

  <!-- Custom styles for this template -->
  <link href="cssAdmin/style.css" rel="stylesheet">
  <link href="cssAdmin/style-responsive.css" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body>

<section id="container">
  <!-- **********************************************************************************************************************************************************
  TOP BAR CONTENT & NOTIFICATIONS
  *********************************************************************************************************************************************************** -->
  <!--header start-->
  <header class="header black-bg">
    <div class="sidebar-toggle-box">
      <div class="fa fa-bars tooltips" data-placement="right"></div>
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
      <h3><i class="fa fa-angle-right"></i>Sản phẩm</h3>
      <div class="row">


      </div><!-- row -->
      <div class="row mt">
        <div class="col-md-12 mt">
          <div class="content-panel">
            <table class="table table-hover">
              <h4><i class="fa fa-angle-right"></i> Sản phẩm</h4>
              <hr>
              <thead>
              <tr>
                <th>Id</th>
                <th>Tên danh mục</th>
                <th>Id Danh mục</th>
              </tr>
              </thead>
              <tbody>
                <% List<CategoryItem> list = (List<CategoryItem>) request.getAttribute("listCatItem");
                                for (CategoryItem catI : list) { %>
          </div>
          <tr>
            <td><%= catI.getId() %></td>
            <td><%= catI.getName() %></td>
            <td><%= catI.getIdCat() %></td>
          </tr>
          <% } %>
          </tbody>
          </table>
        </div><! --/content-panel -->
      </div><!-- /col-md-12 -->

      </div>
    </section>
    <! --/wrapper -->
  </section><!-- /MAIN CONTENT -->

  <!--main content end-->
  <!--footer start-->
  <footer class="site-footer">
    <div class="text-center">

      <a href="adminCategory.jsp" class="go-top">
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

<script>
  //custom select box

  $(function () {
    $('select.styled').customSelect();
  });

</script>

</body>
</html>
