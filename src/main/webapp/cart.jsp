<%@ page import="java.text.NumberFormat" %>
<%@ page import="project.model.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="project.model.Product" %>
<%@ page import="project.service.ProductService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>

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
    <link rel="stylesheet" href="css/ion.rangeSlider.css" />
    <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<!-- Start Header Area -->
<header class="header_area sticky-header">
    <jsp:include page="header.jsp"></jsp:include>
</header>
<!-- End Header Area -->

<!-- back to top-->
<a href="#" class="cd-top">Back To Top</a>
<!--end back to top-->

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Giỏ hàng</h1>
                <nav class="d-flex align-items-center">
                    <a href="index.jsp">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="cart1.jsp">Giỏ hàng</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->

<!--================Cart Area =================-->
<section class="cart_area">
    <div class="container">
        <div class="cart_inner">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Sản phẩm</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Tổng</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        NumberFormat nf = NumberFormat.getInstance();
                        nf.setMinimumFractionDigits(0);
                        int totalPrice = 0;

                        List<Cart> cartList = (List<Cart>) request.getAttribute("listCart");
                        for (Cart c : cartList) {
                            Product p = ProductService.getProductById(String.valueOf(c.getIdProduct()));
                            totalPrice += p.getPrice() * c.getQuantity();

                    %>
                    <tr>
                        <td class="cart_product_img cart_product_desc" >
                            <div class="media">
                                <div class="d-flex">
                                    <a href="detail?id=<%=p.getIdPro()%>"><img src="<%=p.getImg()%>" alt="Product"></a>
                                </div>
                                <div class="media-body">
                                    <a href="detail?id=<%=p.getIdPro()%>"><%=p.getName()%>
                                </div>
                            </div>
                        </td>
                        <td class="price">
                            <%=nf.format(p.getPrice())%>
                        </td>
                        <td class="qty">
                            <div class="qty-btn d-flex">

                                <div class="quantity">
                                    <div class="cart-quantity-btn">

                                        <a href="cart?command=subItem&product_id=<%=c.getIdProduct()%> "
                                           class="btn11"
                                           style="text-decoration: none;background-color: #fd7e14; padding: 4px">
                                            <i class="ti-minus" style="color: #FFFFFF"></i>
                                        </a>

                                        <input class="cart-quantity-input" type="text"
                                               value="<%=c.getQuantity()%>"
                                               autocomplete="off" size="2" disabled="">

                                        <a href="cart?command=addItem&product_id=<%=c.getIdProduct()%>"
                                           class="btn11"
                                           style="text-decoration: none; background-color: #fd7e14;  padding: 4px">
                                            <i class="ti-plus" style="color: #FFFFFF"></i>
                                        </a>

                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="cart_product_desc">
                            <%=nf.format(c.getQuantity() * p.getPrice())%>
                        </td>
                        <td class="cart_product_desc">
                            <a href="cart?command=deleteItem&product_id=<%=c.getIdProduct()%> "
                               class="btn btn-sm btn-primary btn-minus"
                               style="text-decoration: none;background-color: #fd7e14">
                                <i class="ti-close"></i>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                    <%--                    <tr class="bottom_button">--%>
                    <%--                        <td>--%>
                    <%--                            <a class="gray_btn" href="#">Cập nhật giỏ hàng</a>--%>
                    <%--                        </td>--%>
                    <%--                        <td>--%>

                    <%--                        </td>--%>
                    <%--                        <td>--%>

                    <%--                        </td>--%>
                    <%--                        <td>--%>
                    <%--                            <div class="cupon_text d-flex align-items-center">--%>
                    <%--                                <input type="text" placeholder="Mã giảm giá">--%>
                    <%--                                <a class="primary-btn" href="#">Áp dụng</a>--%>
                    <%--                            </div>--%>
                    <%--                        </td>--%>
                    <%--                    </tr>--%>
                    <tr class="shipping_area">
                        <td>

                        </td>
                        <td>

                        </td>
                        <td>
                            <h5>Giao hàng</h5>
                        </td>
                        <td>
                            <h5>Miễn phí</h5>
                        </td>
                    </tr>

                    <tr>
                        <td>

                        </td>
                        <td>

                        </td>
                        <td>
                            <h5>Tổng tiền hàng</h5>
                        </td>
                        <td>
                            <h5><%=nf.format(totalPrice)%>đ</h5>
                        </td>
                        <td>
                            <h5>Tổng thanh toán</h5>
                        </td>
                        <td>
                            <h5><%=nf.format(totalPrice)%>đ</h5>
                        </td>
                    </tr>

                    <tr class="out_button_area">
                        <td>

                        </td>
                        <td>

                        </td>
                        <td>

                        </td>
                        <td>
                            <div class="checkout_btn_inner d-flex align-items-center">
                                <a class="gray_btn" href="index.jsp"><h5 style="padding-top: 10px">Tiếp tục mua sắm</h5></a>
                                <a class="primary-btn" href="checkout">Đến trang thanh toán</a>
                            </div>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
<!--================End Cart Area =================-->

<!-- start footer Area -->
<footer class="footer-area section_gap">
    <jsp:include page="footer.jsp"></jsp:include>
</footer>
<!-- End footer Area -->

<!--Modal-->
<div class="modal fade" id="cart1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
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
                <a href="cart1.jsp" type="button" class="btn btn-primary" style="background-color: #ffba00"> Thanh toán</a>
            </div>
        </div>
    </div>
</div>


<script src="js/vendor/jquery-2.2.4.min.js"></script>
<script src="../../../https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
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