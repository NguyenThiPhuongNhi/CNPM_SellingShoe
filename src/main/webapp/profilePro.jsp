<%@ page import="project.model.User" %>
<%@ page import="project.service.LoginService" %>
<%@ page import="project.model.Product" %>
<%@ page import="project.service.ProductManagement" %>
<%@ page import="project.service.ProductService" %>
<%@ page import="java.util.List" %>
<%@ page import="project.model.CategoryItem" %>
<%--Created by IntelliJ IDEA.
User: PC
Date: 04/01/2023
Time: 10:34 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Shop bán giày dép</title>
    <!--
            CSS
            ============================================= -->
    <link rel="stylesheet" href="css/linearicons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/ion.rangeSlider.css"/>
    <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css"/>
    <link rel="stylesheet" href="css/main.css">
    <title>Chỉnh sửa sản phẩm</title>
</head>

<!-- Start Header Area -->

<body>
<header class="header_area sticky-header">
    <jsp:include page="header.jsp"></jsp:include>
</header>
<!--back to top-->
<a href="#" class="cd-top">Back To Top</a>
<!-- end back to top-->

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
    <div class="container ">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end row features-inner ">
            <div class="col-first">
                <h1>Chỉnh sửa sản phẩm</h1>
                <nav class="d-flex align-items-center">
                    <a href="index.jsp">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="UpdateControl">Chỉnh sửa sản phẩm</a>
                </nav>
            </div>
        </div>
    </div>
</section>

<section>
    <% Product p = (Product) request.getAttribute("p");
    %>
    <div class="container container-profile">


        <%--        <nav class="nav nav-borders">--%>
        <%--            <a class="nav-link active ms-0" href="profile">Hồ sơ</a>--%>
        <%--            <a class="nav-link" href="buyOrder">Đơn mua</a>--%>
        <%--            <a class="nav-link" href="#">Thông báo</a>--%>
        <%--        </nav>--%>


        <div class="row">
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Thông tin sản phẩm</div>
                    <div class="card-body">
                        <form action="admin-edit-product" method="post">
                            <!-- Form Group (username)-->
                            <input type="hidden" value="<%=p.getIdPro()%>" name="idP">
                            <div class="mb-3">
                                <label class="small mb-1" for="inputProName">Tên sản phẩm</label>
                                <input class="form-control" id="inputProName" type="text" name="name"
                                       placeholder="Nhập tên sản phẩm" value="<%=p.getName()%>">
                            </div>
                            <!-- Form Row-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputPrice">Giá</label>
                                <input class="form-control"
                                       name="price"
                                       id="inputPrice" type="text"
                                       placeholder="Nhập giá" value="<%=p.getPrice()%>">
                            </div>
                            <div class="mb-3">
                                <label class="small mb-1" for="inputQuantity">Số lượng</label>
                                <input class="form-control"
                                       name="quantity"
                                       id="inputQuantity" type="int"
                                       placeholder="Nhập số lượng" value="<%=p.getQuantity()%>">
                            </div>
                            <div class="mb-3">
                                <label class="small mb-1" for="inputQuantity">Sản phẩm mới cũ</label>
                                <input class="form-control"
                                       name="status"
                                       id="inputstatusPro"
                                       placeholder="Nhập số lượng" value="<%=p.getStatus()%>">
                            </div>
                            <div class="mb-3">
                                <label class="small mb-1" for="inputdetailPro">Thông tin sản phẩm</label>
                                <input class="form-control"
                                       name="detailPro"
                                       id="inputdetailPro" type="varchar"
                                       placeholder="Nhập số lượng" value="<%=p.getDetailPro()%>">
                            </div>
                            <div class="mb-3">
                                <div>
                                    <label class="small mb-1">Phân loại</label>
                                    <select name="idCi">
                                        <% List< CategoryItem> categoryItems = (List<CategoryItem>) request.getAttribute("categoryItems");
                                            for (CategoryItem c:categoryItems){
                                        %>
                                        <option value="<%=c.getId()%>"><%=c.getName()%></option>
                                        <%}%>
                                    </select>
                                </div>
                            </div>
                            <!-- Form Row-->
                            <!-- Save changes button-->
                            <button class="btn btn-primary" type="submit">Lưu thông tin
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- start footer Area -->
<footer class="footer-area section_gap">
    <jsp:include page="footer.jsp"></jsp:include>
</footer><!-- End footer Area -->

<!--Modal-->
<div class="modal fade" id="cart1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg container" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Giỏ hàng</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="show-cart table">

                </table>
                <div>Tổng tiền: <span class="total-cart"></span>.000đ</div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <a href="cart.jsp" type="button" class="btn btn-primary" style="background-color: #ffba00">
                    Thanh
                    toán</a>
            </div>
        </div>
    </div>
</div>
</div>
<!--Java Script-->
<script src="js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/countdown.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>

<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="js/gmaps.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>