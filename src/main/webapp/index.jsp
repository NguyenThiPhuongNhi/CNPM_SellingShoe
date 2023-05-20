<%@ page import="project.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>

 <%--Bước 1. Click "Thêm vào giỏ" dòng 243--%>
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Shop bán giày dép</title>

<head>
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

<!--back to top-->
<a href="#" class="cd-top">Back To Top</a>
<!--end back to top-->

<!-- start banner Area -->
<section class="banner-area">
    <div class="container">
        <div class="row fullscreen align-items-center justify-content-start">
            <div class="col-lg-12">
                <div class="active-banner-slider owl-carousel">
                    <!-- single-slide -->
                    <div class="row single-slide align-items-center d-flex">
                        <div class="col-lg-5 col-md-6">
                            <div class="banner-content">
                                <h1>Bộ Sưu tập mới!</h1>
                                <div class="add-bag d-flex align-items-center">
                                    <a class="add-btn" href=""><span class="lnr lnr-cross"></span></a>
                                    <span class="add-text text-uppercase">Mô tả chi tiết sản phẩm</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="banner-img">
                                <img class="img-fluid" src="img/banner/banner-img.png" alt="">
                            </div>
                        </div>
                    </div>
                    <!-- single-slide -->
                    <div class="row single-slide">
                        <div class="col-lg-5">
                            <div class="banner-content">
                                <h1>Nike New <br>Collection!</h1>
                                <div class="add-bag d-flex align-items-center">
                                    <a class="add-btn" href=""><span class="lnr lnr-cross"></span></a>
                                    <span class="add-text text-uppercase">Thêm vào giỏ</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="banner-img">
                                <img class="img-fluid" src="img/banner/banner-img.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- start features Area -->
<section class="features-area section_gap">
    <div class="container">
        <div class="row features-inner">
            <!-- single features -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="img/features/f-icon1.png" alt="">
                    </div>
                    <h6>Miễn phí vận chuyển</h6>
                    <!--                    <p>Miễn phí vận chuyển cho tất cả các đơn đặt hàng</p>-->
                </div>
            </div>
            <!-- single features -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="img/features/f-icon2.png" alt="">
                    </div>
                    <h6>Chính sách hoàn trả</h6>
                    <!--                    <p>Free Shipping on all order</p>-->
                </div>
            </div>
            <!-- single features -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="img/features/f-icon3.png" alt="">
                    </div>
                    <h6>Hỗ trợ 24/7</h6>
                    <!--                    <p>Free Shipping on all order</p>-->
                </div>
            </div>
            <!-- single features -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="img/features/f-icon4.png" alt="">
                    </div>
                    <h6>Phương thức thanh toán</h6>
                    <!--                    <p>Free Shipping on all order</p>-->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end features Area -->

<!-- Start category Area -->
<section class="category-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <div class="single-deal">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="img/categories/gucci.jpg" alt="">
                            <a href="img/category/gucci.jpg" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title">Gucci</h6>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="single-deal">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="img/categories/puma.jpg" alt="">
                            <a href="img/category/c2.jpg" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title">Puma</h6>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="single-deal">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="img/categories/Nike.jpg" alt="">
                            <a href="img/category/c3.jpg" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title">Nike</h6>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8">
                        <div class="single-deal">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="img/categories/adidas.jpg" alt="">
                            <a href="img/category/c4.jpg" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title">Adidas</h6>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 ">
                <div class="single-deal">
                    <div class="overlay"></div>
                    <img class="img-fluid w-100 last" src="img/categories/LV-Archlight.jpg" alt="">
                    <a href="img/product/Nam/Boots/b1.1.png" class="img-pop-up" target="_blank">
                        <div class="deal-details">
                            <h6 class="deal-title">Louis Vuitton</h6>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End category Area -->

<!-- start product Area -->
<section class="owl-carousel active-product-area section_gap">
    <!-- single product slide -->
    <div class="single-product-slider">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 text-center">
                    <div class="section-title">
                        <h1>Sản phẩm mới</h1>
                    </div>
                </div>
            </div>

            <div class="row">
                <% List<Product> list = (List<Product>) request.getAttribute("list8ProductNew");
                    for (Product p : list) { %>
                <!-- single product -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="<%=p.getImg()%>" alt="">
                        <div class="product-details">
                            <h6><%=p.getName()%></h6>
                            <div class="price">
                                <h6><%=p.getPrice()%>đ</h6>
                                <h6 class="l-through">210.000đ</h6>
                            </div>
                            <div class="prd-bottom">

  <%--1. Click "Thêm vào giỏ"--%>
                                <a href="cart?command=insertItem&product_id=<%=p.getIdPro ()%>" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">Thêm vào giỏ</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Yêu thích</p>
                                </a>

                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">Xem thêm</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %>
                <!-- single product -->

            </div>
        </div>
    </div>
    <!-- single product slide -->
    <div class="single-product-slider">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 text-center">
                    <div class="section-title">
                        <h1>Đang kinh doanh</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <% List<Product> productList = (List<Product>) request.getAttribute("list8Product");
                    for (Product product:productList){ %>
                <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                        <img class="img-fluid" src="<%=product.getImg()%>" alt="">
                        <div class="product-details">
                            <h6><%=product.getName()%></h6>
                            <div class="price">
                                <h6><%=product.getPrice()%>đ</h6>
                                <h6 class="l-through">210.000đ</h6>
                            </div>
                            <div class="prd-bottom">


                                <a href="cart?command=insertItem&product_id=<%=product.getIdPro ()%>" class="social-info">
                                    <span class="ti-bag"></span>
                                    <p class="hover-text">Thêm vào giỏ</p>
                                </a>
                                <a href="" class="social-info">
                                    <span class="lnr lnr-heart"></span>
                                    <p class="hover-text">Yêu thích</p>
                                </a>

                                <a href="" class="social-info">
                                    <span class="lnr lnr-move"></span>
                                    <p class="hover-text">Xem thêm</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <%}%>
                <!-- single product -->
            </div>
        </div>
    </div>
</section>
<!-- end product Area -->

<!-- Start brand Area -->
<section class="brand-area section_gap">
    <div class="row justify-content-center">
        <div class="col-lg-6 text-center">
            <div class="section-title">
                <h2> Thương hiệu</h2>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/puma.png" alt="">
            </a>
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/Adidas.png" alt="">
            </a>
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/Gucci.png" alt="">
            </a>
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/Louis-Vuitton.png" alt="">
            </a>
            <a class="col single-img" href="#">
                <img class="img-fluid d-block mx-auto" src="img/brand/Nike.png" alt="">
            </a>
        </div>
    </div>
</section>
<!-- End brand Area -->

<!-- Start related-product Area -->
<!-- End related-product Area -->

<!-- start footer Area -->
<footer class="footer-area section_gap">
    <jsp:include page="footer.jsp"></jsp:include>
</footer><!-- End footer Area -->

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
                <a href="cart.jsp" type="button" class="btn btn-primary" style="background-color: #ffba00"> Thanh
                    toán</a>
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
