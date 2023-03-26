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
				<h1>Liên hệ</h1>
				<nav class="d-flex align-items-center">
					<a href="index.jsp">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
					<a href="contact.jsp">Liên hệ</a>
				</nav>
			</div>
		</div>
	</div>
</section>
<!-- End Banner Area -->

<!--================Contact Area =================-->
<section class="contact_area section_gap_bottom">
	<div class="map">
		<div class="container">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4208.543965246699!2d106.78964328809995!3d10.871330361471784!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRwLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1640000731261!5m2!1svi!2s"
					height="585" style="border:0;" allowfullscreen=""></iframe>
		</div>
	</div>
	<div class="container">
		<!--			<div id="mapBox" class="mapBox" data-lat="40.701083" data-lon="-74.1522848" data-zoom="13" data-info="PO Box CT16122 Collins Street West, Victoria 8007, Australia."-->
		<!--			 data-mlat="40.701083" data-mlon="-74.1522848">-->
		<!--			</div>-->
		<div class="row">
			<div class="col-lg-3">
				<div class="contact_info">
					<div class="info_item">
						<i class="lnr lnr-home"></i>
						<h6>Thủ Đức, Việt Nam</h6>
						<p>Khu phố 6, phường Linh Trung,
							thành phố Hồ Chí Minh</p>
					</div>
					<div class="info_item">
						<i class="lnr lnr-phone-handset"></i>
						<h6><a href="#">0789123456</a></h6>
						<p>Thứ 2 đến thứ 6</p>
					</div>
					<div class="info_item">
						<i class="lnr lnr-envelope"></i>
						<h6><a href="#">support@shoeshop.com</a></h6>
						<p>Gửi cho chúng tôi câu hỏi của bạn bất cứ lúc nào!</p>
					</div>
				</div>
			</div>
			<div class="col-lg-9">
				<form class="row contact_form " method="post" id="contactForm" novalidate="novalidate">
					<div class="col-md-6">
						<div class="form-group">
							<input type="text" class="form-control" id="fullname" name="fullname" placeholder="Nhập tên của bạn">
							<p class="form-message"></p>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="email" name="email" placeholder="Nhập email của bạn" >
							<p class="form-message"></p>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="subject" name="subject" placeholder="Chủ đề bạn muốn nói đến" >
							<p class="form-message"></p>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<textarea class="form-control" name="message" id="message" rows="1" placeholder="Lời nhắn của bạn" ></textarea>
							<p class="form-message"></p>
						</div>
					</div>
					<div class="col-md-12 text-right">
						<div class="form-group">
							<a href="contact.jsp" class="hover-text"></a>
							<button type="submit" value="submit" class=" form-submit primary-btn">Gửi đến chúng tôi</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!--================Contact Area =================-->

<footer class="footer-area section_gap">
	<jsp:include page="footer.jsp"></jsp:include>
</footer><!-- End footer Area -->

<!-- End footer Area -->
<!--================End Contact Success and Error message Area =================-->
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
				<a  href="cart.jsp"><button type="button" class="btn btn-primary" style="background-color: #ffba00">Thanh toán</button></a>
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
	Validator({
		form: '#contactForm',
		formGroupSelector: '.form-group',
		errorSelector: '.form-message',
		rules: [
			Validator.isRequired('#fullname', 'Vui lòng nhập tên của bạn.'),
			Validator.isEmail('#email'),
			Validator.minLength('#subject',10,'Chủ đề phải trên 10 kí tự.'),
			Validator.isRequired('#message','Hãy để lại lời nhắn cho chúng tôi.'),
		],
		onSubmit: function (data) {
			// Call API
			console.log(data);
		}
	});
</script>

</body>

</html>