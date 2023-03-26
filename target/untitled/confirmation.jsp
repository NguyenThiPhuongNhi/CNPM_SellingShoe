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

<!--back to top-->
<a href="#" class="cd-top">Back To Top</a>
<!-- end back to top-->

<!--            open shopping cart-->

<div class="shopping-cart">
	<div class="shopping-cart-header">
		<i class="ti-bag"></i><span class="badge">3</span>
		<div class="shopping-cart-total">
			<span class="lighter-text">Tổng:</span>
			<span class="main-color-text">1.979.000đ</span>
		</div>
	</div> <!--end shopping-cart-header -->

	<ul class="shopping-cart-items">
		<li class="clearfix">
			<img src="../../../img/product/Nam/Boots/b1.1.png" alt="item1" />
			<span class="item-name">Giày Boot Nam Đế Cao Màu Vàng PALA GN400</span>
			<span class="item-price">550.000đ</span>
			<span class="item-quantity">Số lượng: 01</span>
		</li>

		<li class="clearfix">
			<img src="../../../img/product/Nam/Boots/b2.1.png" alt="item2" />
			<span class="item-name">Giày boot nam màu trơn Không có dây kéo</span>
			<span class="item-price">806.000đ</span>
			<span class="item-quantity">Số lượng: 01</span>
		</li>

		<li class="clearfix">
			<img src="../../../img/product/Nam/Boots/b3.1.png" alt="item3" />
			<span class="item-name">Nam Giày ống Chelsea Suedette Mặc vào</span>
			<span class="item-price">623.000đ</span>
			<span class="item-quantity">Số lượng: 01</span>
		</li>
	</ul>
	<a href="../../../cart.jsp" class="button">Thanh toán</a>
</div> <!--end shopping-cart -->


<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
	<div class="container">
		<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
			<div class="col-first">
				<h1>Confirmation</h1>
				<nav class="d-flex align-items-center">
					<a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
					<a href="category.jsp">Confirmation</a>
				</nav>
			</div>
		</div>
	</div>
</section>
<!-- End Banner Area -->

<!--================Order Details Area =================-->
<section class="order_details section_gap">
	<div class="container">
		<h3 class="title_confirmation">Thank you. Your order has been received.</h3>
		<div class="row order_d_inner">
			<div class="col-lg-4">
				<div class="details_item">
					<h4>Order Info</h4>
					<ul class="list">
						<li><a href="#"><span>Order number</span> : 60235</a></li>
						<li><a href="#"><span>Date</span> : Los Angeles</a></li>
						<li><a href="#"><span>Total</span> : USD 2210</a></li>
						<li><a href="#"><span>Payment method</span> : Check payments</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="details_item">
					<h4>Billing Address</h4>
					<ul class="list">
						<li><a href="#"><span>Street</span> : 56/8</a></li>
						<li><a href="#"><span>City</span> : Los Angeles</a></li>
						<li><a href="#"><span>Country</span> : United States</a></li>
						<li><a href="#"><span>Postcode </span> : 36952</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="details_item">
					<h4>Shipping Address</h4>
					<ul class="list">
						<li><a href="#"><span>Street</span> : 56/8</a></li>
						<li><a href="#"><span>City</span> : Los Angeles</a></li>
						<li><a href="#"><span>Country</span> : United States</a></li>
						<li><a href="#"><span>Postcode </span> : 36952</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="order_details_table">
			<h2>Order Details</h2>
			<div class="table-responsive">
				<table class="table">
					<thead>
					<tr>
						<th scope="col">Product</th>
						<th scope="col">Quantity</th>
						<th scope="col">Total</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>
							<p>Pixelstore fresh Blackberry</p>
						</td>
						<td>
							<h5>x 02</h5>
						</td>
						<td>
							<p>$720.00</p>
						</td>
					</tr>
					<tr>
						<td>
							<p>Pixelstore fresh Blackberry</p>
						</td>
						<td>
							<h5>x 02</h5>
						</td>
						<td>
							<p>$720.00</p>
						</td>
					</tr>
					<tr>
						<td>
							<p>Pixelstore fresh Blackberry</p>
						</td>
						<td>
							<h5>x 02</h5>
						</td>
						<td>
							<p>$720.00</p>
						</td>
					</tr>
					<tr>
						<td>
							<h4>Subtotal</h4>
						</td>
						<td>
							<h5></h5>
						</td>
						<td>
							<p>$2160.00</p>
						</td>
					</tr>
					<tr>
						<td>
							<h4>Shipping</h4>
						</td>
						<td>
							<h5></h5>
						</td>
						<td>
							<p>Flat rate: $50.00</p>
						</td>
					</tr>
					<tr>
						<td>
							<h4>Total</h4>
						</td>
						<td>
							<h5></h5>
						</td>
						<td>
							<p>$2210.00</p>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>
<!--================End Order Details Area =================-->

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
</body>

</html>