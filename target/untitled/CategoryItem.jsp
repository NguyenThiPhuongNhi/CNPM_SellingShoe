<%@ page import="project.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="project.model.Product" %>
<%@ page import="project.model.CategoryItem" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="project.service.ProductService" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="zxx" class="no-js">
<meta http-equiv="Content-Type" charset="UTF-8">
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
    <!--ọidijdgf-->
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
    <link rel="stylesheet" href="css/magnific-popup.css">



    <link rel="stylesheet" href="css/main.css">



</head>

<body id="category">

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
                <%
                    Category c = (Category) request.getAttribute("c");
                    CategoryItem lci = (CategoryItem) request.getAttribute("lci");
                %>
                <h1>Giày <%=c.getCatName()%></h1>
                <nav class="d-flex align-items-center">
                    <a href="home">Trang chủ<span class="lnr lnr-arrow-right"></span></a>

                    <a href="category?cid=<%=c.getIdCat()%>"><%=c.getCatName()%><span class="lnr lnr-arrow-right"></span></a>
                    <a href="#"><%=lci.getName()%></a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->
<div class="container">
    <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-5">
            <div class="sidebar-categories">
                <div class="head">Loại giày</div>
                <ul class="main-categories">
                    <li class="main-nav-list"><a data-toggle="collapse" href="#" aria-expanded="false" aria-controls="fruitsVegetable"><span
                            class="lnr lnr-arrow-right"></span>Boots<span class="number">(53)</span></a>

                    </li>

                    <li class="main-nav-list"><a data-toggle="collapse" href="#" aria-expanded="false" aria-controls="meatFish"><span
                            class="lnr lnr-arrow-right"></span>Sandal<span class="number">(53)</span></a>

                    </li>
                    <li class="main-nav-list"><a data-toggle="collapse" href="#" aria-expanded="false" aria-controls="cooking"><span
                            class="lnr lnr-arrow-right"></span>Giày thể thao<span class="number">(53)</span></a>

                    </li>
                    <li class="main-nav-list"><a data-toggle="collapse" href="#" aria-expanded="false" aria-controls="beverages"><span
                            class="lnr lnr-arrow-right"></span>Giày chạy bộ - đi bộ<span class="number">(24)</span></a>

                    </li>


                </ul>
            </div>
            <div class="sidebar-filter mt-50">
                <div class="top-filter-head">Bộ lọc</div>
                <div class="common-filter">
                    <div class="head">Thương hiệu</div>
                    <form action="#">
                        <ul>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Louis Vuitton<span>(29)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Nike<span>(29)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Adidas<span>(19)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Gucci<span>(19)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Puma<span>(19)</span></label></li>
                        </ul>
                    </form>
                </div>
                <div class="common-filter">
                    <div class="head">Màu sắc</div>
                    <form action="#">
                        <ul>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">Đen<span>(29)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">Trắng
                                <span>(29)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">Đen-trắng
                                <span>(19)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">Đen-đỏ<span>(19)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">Vàng<span>(19)</span></label></li>
                        </ul>
                    </form>
                </div>
                <div class="common-filter">
                    <div class="head">Giá</div>
                    <div class="price-range-area">
                        <div id="price-range"></div>
                        <div class="value-wrapper d-flex">
                            <div class="price">Giá:</div>

                            <div id="lower-value"></div>
                            <span>đ</span>
                            <div class="to">đến</div>

                            <div id="upper-value"></div>
                            <span>đ</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
            <!-- Start Filter Bar -->
            <div class="filter-bar d-flex flex-wrap align-items-center">
                <div class="sorting">
                    <select>
                        <option value="1">Giá: Tăng dần</option>
                        <option value="1">Giá: Giảm dần</option>
                        <option value="1">Tên: A-Z</option>
                        <option value="1">Tên: Z-A</option>
                        <option value="1">Cũ nhất</option>
                        <option value="1">Mới nhất</option>
                    </select>
                </div>
                <div class="sorting mr-auto">
                    <select>
                        <option value="1">Size 36</option>
                        <option value="1">Size 37</option>
                        <option value="1">Size 38</option>
                        <option value="1">Size 39</option>
                        <option value="1">Size 40</option>
                    </select>
                </div>
                <div class="pagination">
                    <a href="product.jsp" class="active">1</a>
                    <a href="shop/female/boots/Boots2.jsp">2</a>


                </div>
            </div>
            <!-- End Filter Bar -->
            <!-- Start Best Seller -->
            <section class="lattest-product-area pb-40 category-list">
                <div class="row">
                    <%
                        NumberFormat nf = NumberFormat.getInstance();
                        nf.setMinimumFractionDigits(0);
                        List<Product> pByIdi = (List<Product>) request.getAttribute("listPByIdi");
                        for (Product p : pByIdi) {
                    %>
                    <!-- single product -->
                    <div class="col-lg-4 col-md-6">

                        <div class="single-product">
                            <img class="img-fluid resize" src="<%=p.getImg()%>" alt="">
                            <div class="product-details">
                                <a href="detail?id=<%=p.getIdPro()%>"><h6><%=p.getName()%></h6></a>
                                <div class="price">
                                    <h6><%=nf.format(p.getPrice())%>đ</h6>
                                    <!--										<h6 class="l-through">210.000đ</h6>-->
                                </div>
                                <div class="prd-bottom">


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
                    <%}%>
                </div>
            </section>
            <!-- End Best Seller -->
            <!-- Start Filter Bar -->
            <div class="filter-bar d-flex flex-wrap align-items-center">

                <div class="pagination">
                    <a href="product.jsp" class="active">1</a>
                    <a href="shop/female/boots/Boots2.jsp">2</a>

                </div>
            </div>
            <!-- End Filter Bar -->
        </div>
    </div>
</div>

<!-- Start related-product Area -->
<section class="related-product-area section_gap">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 text-center">
                <div class="section-title">
                    <h1>Giảm giá trong tuần</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/product/Nu/Boots/chelsea boots.png" alt="" class="resize-img"></a>
                            <div class="desc">
                                <a href="#" class="title">Chelsea boots(Đen)</a>
                                <div class="price">
                                    <h6>670.200đ</h6>
                                    <h6 class="l-through">720.000đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/product/Nu/Boots/cgct.png" alt="" class="resize-img"></a>
                            <div class="desc">
                                <a href="#" class="title">Boots nữ co giãn cổ thấp</a>
                                <div class="price">
                                    <h6>552.000đ</h6>
                                    <h6 class="l-through">610.000đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/product/Nu/Boots/cndbmn.png" alt="" class="resize-img"></a>
                            <div class="desc">
                                <a href="#" class="title">Boots nữ cổ ngắn da bóng mũi nhọn</a>
                                <div class="price">
                                    <h6>352.000đ</h6>
                                    <h6 class="l-through">480.000đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/product/Nu/Boots/cngn.png" alt="" class="resize-img"></a>
                            <div class="desc">
                                <a href="#" class="title">Boots nữ cổ ngắn gót nhỏ(Đen)</a>
                                <div class="price">
                                    <h6>430.000đ</h6>
                                    <h6 class="l-through">450.000đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/product/Nu/SportShoes/sp10.png" alt="" class="resize-img"></a>
                            <div class="desc">
                                <a href="#" class="title">Adidas superstar shoes</a>
                                <div class="price">
                                    <h6>1.499.000đ</h6>
                                    <h6 class="l-through">1.700.000đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/product/Nu/RunningShoes/rs3.png" alt="" class="resize-img"></a>
                            <div class="desc">
                                <a href="#" class="title">Giày Chạy Bộ Nữ Biti's Hunter Running Black
                                    DSWH08300DEN (Đen)</a>
                                <div class="price">
                                    <h6>997.500đ</h6>
                                    <h6 class="l-through">1.050.000đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/product/Nu/RunningShoes/rs4.png" alt="" class="resize-img"></a>
                            <div class="desc">
                                <a href="#" class="title">Giày Chạy Bộ Nữ Biti's Hunter Running Electric
                                    Blue DSWH03900XDG (Xanh Dương)</a>
                                <div class="price">
                                    <h6>997.500đ</h6>
                                    <h6 class="l-through">1.050.000đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/product/Nu/RunningShoes/rs5.png" alt="" class="resize-img"></a>
                            <div class="desc">
                                <a href="#" class="title">Giày Chạy Bộ Nữ Biti's Hunter Running Neon Green
                                    DSWH03900XMN (Xanh Mi Nơ)</a>
                                <div class="price">
                                    <h6>997.500đ</h6>
                                    <h6 class="l-through">1.050.000đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/product/Nu/RunningShoes/rs6.png" alt="" class="resize-img"></a>
                            <div class="desc">
                                <a href="#" class="title">Giày Chạy Bộ Nữ Biti's Hunter Running White
                                    DSWH08300TRG (Trắng)</a>
                                <div class="price">
                                    <h6>997.500đ</h6>
                                    <h6 class="l-through">1.050.000đ</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="ctg-right">
                    <a href="#" target="_blank">
                        <img class="img-fluid d-block mx-auto" src="img/categories/c5.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End related-product Area -->

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
                <a  href="cart1.jsp"><button type="button" class="btn btn-primary" style="background-color: #ffba00">Thanh toán</button></a>
            </div>
        </div>
    </div>
</div>

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

</body>

</html>