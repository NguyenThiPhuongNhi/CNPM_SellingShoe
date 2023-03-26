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
    <link rel="stylesheet" href="css/ion.rangeSlider.css"/>
    <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css"/>
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
<!-- end back to top-->

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Đăng kí</h1>
                <nav class="d-flex align-items-center">
                    <a href="index.jsp">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="registration.jsp">Đăng kí</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->

<!--================LoginController Box Area =================-->
<section class="login_box_area section_gap">
    <div class="container">


        <div class="row justify-content-around">
            <div class="col-lg-6">
                <div class="login_form_inner">
                    <h2>ĐĂNG KÍ</h2>
                    <!--          <form class="row login_form pb-3" action="#" method="post" id="registrationForm" novalidate="novalidate">-->
                    <!--            <div class="col-md-12 form-group">-->
                    <!--              <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Họ">-->
                    <!--            </div>-->
                    <!--            <div class="col-md-12 form-group">-->
                    <!--              <input type="text" class="form-control" id="first_name" name="last_name" placeholder="Tên">-->
                    <!--            </div>-->
                    <!--            <div class="col-md-12 form-check form-check-inline">-->
                    <!--              <div class="mx-4">-->
                    <!--              <input class="form-check-input" type="radio" name="Male" id="Male" value="0" checked>-->
                    <!--              <label class="form-check-label" for="Male">-->
                    <!--                Nam-->
                    <!--              </label>-->
                    <!--              </div>-->

                    <!--              <input class="form-check-input" type="radio" name="Female" id="Female" value="1">-->
                    <!--              <label class="form-check-label" for="Female">-->
                    <!--                Nữ-->
                    <!--              </label>-->
                    <!--            </div>-->

                    <!--            <div class="col-md-12 form-group">-->
                    <!--              <input type="text" class="form-control" id="DOB" name="DOB" placeholder="Ngày sinh (dd/mm/yyyy)">-->
                    <!--            </div>-->

                    <!--            <div class="col-md-12 form-group">-->
                    <!--              <input type="text" class="form-control" id="email" name="email" placeholder="Email">-->
                    <!--            </div>-->

                    <!--            <div class="col-md-12 form-group">-->
                    <!--              <input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu">-->
                    <!--            </div>-->
                    <!--            <div class="col-md-12 form-group">-->
                    <!--              <div class="creat_account">-->
                    <!--                <input type="checkbox" id="f-option2" name="selector">-->
                    <!--                <label for="f-option2">Duy trì đăng nhập</label>-->
                    <!--              </div>-->
                    <!--            </div>-->
                    <!--            <div class="col-md-12 form-group">-->
                    <!--              <button type="submit" value="submit" class="primary-btn">Đăng kí</button>-->
                    <!--              <a href="#">Đã có tài khoản?/Đăng nhập</a>-->
                    <!--            </div>-->
                    <!--          </form>-->

                    <form action="" method="POST" class="row login_form pb-3 mb-5 form" id="form-1">


                        <div class="col-md-12 form-group">
                            <label for="fullname" class="form-label">Tên đầy đủ</label>
                            <input id="fullname" name="fullname" type="text" placeholder="VD: Nguyễn Văn Nam"
                                   class="form-control">
                            <span class="form-message"></span>
                        </div>

                        <div class="col-md-12 form-group">
                            <label for="email" class="form-label">Email</label>
                            <input id="email" name="email" type="text" placeholder="VD: email@domain.com"
                                   class="form-control">
                            <span class="form-message"></span>
                        </div>
                        <div class="col-md-12 form-group">
                            <label for="dob" class="form-label">Ngày tháng năm sinh</label>
                            <input type="text" class="form-control" id="DOB" name="DOB"
                                   placeholder="Ngày sinh (dd/mm/yyyy)">
                            <span class="form-message"></span>
                        </div>

                        <div class="col-md-12 form-group">
                            <label for="password" class="form-label">Mật khẩu</label>
                            <input id="password" name="password" type="password" placeholder="Nhập mật khẩu"
                                   class="form-control">
                            <span class="form-message"></span>
                        </div>

                        <div class="col-md-12 form-group">
                            <label for="password_confirmation" class="form-label">Nhập lại mật khẩu</label>
                            <input id="password_confirmation" name="password_confirmation"
                                   placeholder="Nhập lại mật khẩu" type="password" class="form-control">
                            <span class="form-message"></span>
                        </div>

                        <div class="col-md-12 form-group">
                            <a href="login.jsp" class="hover-text">Đã có tài khoản?/Đăng nhập</a>
                            <button class="form-submit">Đăng ký</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>


        <!--================End LoginController Box Area =================-->


    </div>
</section>
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
                <a href="cart.jsp">
                    <button type="button" class="btn btn-primary" style="background-color: #ffba00">Thanh toán</button>
                </a>
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

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Mong muốn của chúng ta
        Validator({
            form: '#form-1',
            formGroupSelector: '.form-group',
            errorSelector: '.form-message',
            rules: [
                Validator.isRequired('#fullname', 'Vui lòng nhập tên đầy đủ của bạn'),
                Validator.isEmail('#email'),
                Validator.minLength('#password', 6),
                Validator.isRequired('#DOB', "Vui lòng nhập ngày tháng năm sinh"),
                Validator.isRequired('#password_confirmation'),
                Validator.isConfirmed('#password_confirmation', function () {
                    return document.querySelector('#form-1 #password').value;
                }, 'Mật khẩu nhập lại không chính xác')
            ],
            onSubmit: function (data) {
                // Call API
                console.log(data);
            }
        });
        // Validator({
        //   form: '#form-2',
        //   formGroupSelector: '.form-group',
        //   errorSelector: '.form-message',
        //   rules: [
        //     Validator.isEmail('#email'),
        //     Validator.minLength('#password', 6),
        //   ],
        //   onSubmit: function (data) {
        //     // Call API
        //     console.log(data);
        //   }
        // });
    });
</script>
</body>

</html>