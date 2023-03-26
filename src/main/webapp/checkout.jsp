<%@ page import="project.service.LoginService" %>
<%@ page import="project.model.User" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="project.model.Cart" %>
<%@ page import="project.model.Product" %>
<%@ page import="project.service.ProductService" %>
<%@ page import="java.util.List" %>
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

<!-- back to top button-->
<a href="#" class="cd-top">Back To Top</a>
<!--End Back to top button-->

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Thanh toán</h1>
                <nav class="d-flex align-items-center">
                    <a href="index.jsp">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="checkout.jsp">Thanh toán</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->

<!--================Checkout Area =================-->
<section class="checkout_area section_gap">
    <div class="container">

        <div class="billing_details">
            <div class="row">
                <div class="col-lg-8">
                    <h3>Chi tiết hóa đơn</h3>
                    <form class="row contact_form" action="checkout" method="post">
                        <% User ac = (User) request.getSession().getAttribute("auth");
                            User a1 = LoginService.getAccoutById(String.valueOf(ac.getIdUser()));

                        %>
                        <div class="col-md-6 form-group p_star">
                            <label>Họ </label><br/>
                            <input type='text' name='firstName' placeholder='Họ*' id='firstname-input'
                                   class='name-input'/>
                            <p class="form-message"></p>
                        </div>
                        <div class="col-md-6 form-group p_star">
                            <label>Tên </label><br/>
                            <input type='text' name='lastName' placeholder='Tên' id='lastname-input'
                                   class='name-input'/>
                            <p class="form-message"></p>
                        </div>
                        <div class="col-md-6 form-group p_star">
                            <label>Số điện thoại</label><br/>
                            <input type='text' name='phone'
                                   value="<%=a1.getPhone()%>"
                                   placeholder='Số điện thoại' id='contact-input'
                                   class='number-input'/>
                            <p class="form-message"></p>
                        </div>
                        <div class="col-md-6 form-group p_star">
                            <label>Email</label><br/>
                            <input type='email' name='email'
                                   value="<%=a1.getEmail()%>"
                                   placeholder='Địa chỉ email' id='email-input'
                                   class='email-input'/>
                            <p class="form-message"></p>
                        </div>

                        <div class="col-md-12 form-group p_star">
                            <label>Địa chỉ </label><br/>
                            <input type='text' name='address'
                                   value="<%=a1.getAddress()%>"
                                   placeholder='Địa chỉ' id='address-input'
                                   class='address-input'/>
                            <p class="form-message"></p>
                        </div>
<%--                        <div class="col-md-12 form-group p_star">--%>
<%--                            <input type="text" class="form-control" id="city" name="city" placeholder="Thành phố*">--%>
<%--                            <p class="form-message"></p>--%>
<%--                        </div>--%>

<%--                        <div class="col-md-12 form-group">--%>
<%--                            <div class="creat_account">--%>
<%--                                <h3>Ghi chú đơn hàng</h3>--%>
<%--                                <!--                                <input type="checkbox" id="f-option3" name="selector">-->--%>
<%--                                <!--                                <label for="f-option3">Ship to a different address?</label>-->--%>
<%--                            </div>--%>
<%--                            <textarea class="form-control" name="message" id="message" rows="1" placeholder="Ghi chú"></textarea>--%>
<%--                        </div>--%>
                        <div class="col-md-6" id="form-submit">
                            <input type='submit' value=' Xác nhận'/>
                        </div>
                    </form>
                </div>
                <div class="col-lg-4">
                    <div class="order_box">
                        <h2>Đơn hàng của bạn</h2>
                        <%
                            NumberFormat nf = NumberFormat.getInstance();
                            nf.setMinimumFractionDigits(0);
                            int totalPrice = 0;

                            List<Cart> cartList = (List<Cart>) request.getAttribute("listCart");
                            for (Cart c : cartList) {
                                Product p = ProductService.getProductById(String.valueOf(c.getIdProduct()));
                                totalPrice += p.getPrice() * c.getQuantity();

                        %>
                        <ul class="list">
                            <input name="idCart" type="hidden" value="<%=c.getIdCart()%>">
                            <li><a href="#">Sản phẩm <span>Giá</span></a></li>
                            <li><a href="#"><%=p.getName()%> <span class="middle">x <%=c.getQuantity()%></span> <span class="last"><%=nf.format(p.getPrice())%>đ</span></a></li>
                        </ul>
                        <%}%>
                        <ul class="list list_2">
                            <li><a href="#">Tổng cộng <span><%=nf.format(totalPrice)%>đ</span></a></li>
                            <li><a href="#">Phí Ship <span>Miễn phí</span></a></li>
                            <li><a href="#">Tổng cộng <span><%=nf.format(totalPrice)%>đ</span></a></li>
                        </ul>
                        <div class="payment_item ">
                            <div class="radion_btn">
                                <input type="radio" id="f-option5" name="selector">
                                <label for="f-option5">Trả tiền mặt</label>
                                <div class="check"></div>
                            </div>

                        </div>
                        <div class="payment_item active">
                            <div class="radion_btn">
                                <input type="radio" id="f-option6" name="selector">
                                <label for="f-option6">Trả thẻ </label>
                                <img src="img/product/card.jpg" alt="">
                                <div class="check"></div>
                            </div>
                            <!--                            <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal-->
                            <!--                                account.</p>-->
                        </div>
                        <div class="creat_account">
                            <input type="checkbox" id="f-option4" name="selector">
                            <label for="f-option4">Tôi đã đọc và chấp nhận </label>
                            <a href="#">mọi điều khoản*</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Checkout Area =================-->

<!-- start footer Area -->
<footer class="footer-area section_gap">
    <jsp:include page="footer.jsp"></jsp:include>
</footer>
<!-- End footer Area -->


<!--java script -->
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

<script>
    Validator({
        form: '#checkoutForm',
        formGroupSelector: '.form-group',
        errorSelector: '.form-message',
        rules: [
            Validator.isRequired('#first', 'Vui lòng nhập họ của bạn.'),
            Validator.isRequired('#last', 'Vui lòng nhập tên của bạn.'),
            Validator.isEmail('#email'),
            Validator.isRequired('#phone', 'Vui lòng nhập số điện thoại của bạn.'),
            Validator.isRequired('#address', 'Vui lòng nhập địa chỉ của bạn.'),
        ],
        onSubmit: function (data) {
            // Call API
            console.log(data);
        }
    });
</script>
</body>

</html>