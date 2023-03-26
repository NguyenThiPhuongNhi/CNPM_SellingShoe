<%@ page import="project.model.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="project.model.ProductOrder" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="project.service.ProductOrderService" %>
<%@ page import="project.model.Product" %>
<%@ page import="project.service.ProductService" %>
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
      <h3><i class="fa fa-angle-right"></i>Đơn hàng</h3>
      <div class="row">


      </div><!-- row -->

      <div class="row mt">
        <div class="col-md-12">
          <div class="content-panel">
            <table class="table table-striped table-advance table-hover">
              <h4><i class="fa fa-angle-right"></i> Đơn hàng</h4>
              <hr>
              <thead>
              <tr>
                <th><i class="fa fa-bullhorn"></i>Mã đơn hàng</th>
                <th class="hidden-phone"><i class="fa fa-question-circle"></i> Họ và tên </th>
                <th><i class="fa fa-bookmark"></i>Tổng tiền</th>
                <th><i class=" fa fa-edit"></i> Trạng thái</th>
                <th></th>
              </tr>
              </thead>
              <tbody>
              <%
                List<Order> orderList = (List<Order>) request.getAttribute("orderList");
                Collections.reverse(orderList);
                for (Order order : orderList) {
              %>
              <tr>
                <td><a href=""><%=order.getIdorder()%></a></td>
                <td class="hidden-phone"><%=order.getFirstName()%></td>
                <%
                  NumberFormat nf = NumberFormat.getInstance();
                  nf.setMinimumFractionDigits(0);
                  List<ProductOrder> productOrderList = ProductOrderService.getProductOrderByIdO(String.valueOf(order.getIdorder()));
                  int totalprice = 0;
                  for (ProductOrder po : productOrderList) {
                    Product p = ProductService.getProductById(String.valueOf(po.getIdp()));
                    totalprice += p.getPrice() * po.getQuantity();
                  }

                %>
                <td>
                  <%=nf.format(totalprice)%>

                </td>
                <td><span class="label label-info label-mini">
                    <%
                      String status = "";
                      if (order.getStatus() == 1) {
                        status = "Chờ xác nhận";
                      }
                      if (order.getStatus() == 2) {
                        status = "Giao hàng";
                      }
                      if (order.getStatus() == 3) {
                        status = "Đã nhận hàng";
                      }
                    %>
                            <%=status%>

                </span></td>
                <td>
                  <a href="adminAccept?idorder=<%=order.getIdorder()%>&status=<%=order.getStatus()%>" class="btn btn-success btn-xs"><i class="fa fa-check"></i></a>
                  <a href="adminViewOrder?idorder=<%=order.getIdorder()%>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
                  <a href="adminAccept?idorder=<%=order.getIdorder()%>&status=<%=order.getStatus()%>" class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></a>

<%--                  <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>--%>
<%--                  <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>--%>
<%--                  <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>--%>
                </td>
              </tr>
              <%}%>
              </tbody>
            </table>
          </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
      </div><!-- /row -->

    </section>
    <! --/wrapper -->
  </section><!-- /MAIN CONTENT -->

  <!--main content end-->
  <!--footer start-->
  <footer class="site-footer">
    <div class="text-center">

      <a href="adminDistributor.jsp" class="go-top">
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
