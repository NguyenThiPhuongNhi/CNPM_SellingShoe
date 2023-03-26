<%@ page import="java.text.NumberFormat" %>
<%@ page import="project.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 1/8/2023
  Time: 7:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zxx" class="no-js">

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
                <h1>Chi tiết sản phẩm</h1>
                <nav class="d-flex align-items-center">
                    <a href="index.jsp">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="detail.jsp">Chi tiết sản phẩm</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->

<!--================Single Product Area =================-->
<%
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumFractionDigits(0);
    Product p = (Product) request.getAttribute("product");

%>
<div class="product_image_area">
    <div class="container">
        <div class="row s_product_inner">
            <div class="col-lg-6">
                <div class="s_Product_carousel">
                    <div class="single-prd-item">
                        <img class="img-fluid" src="<%=p.getImg()%>" alt="">
                    </div>
                    <div class="single-prd-item">
                        <img class="img-fluid" src="<%=p.getImg()%>" alt="">
                    </div>
                    <div class="single-prd-item">
                        <img class="img-fluid" src="<%=p.getImg()%>" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1">
                <div class="s_product_text">
                    <h3><%=p.getName()%></h3>
                    <h2><%=nf.format(p.getPrice())%>đ</span></h2>
                    <ul class="list">
                        <li><a class="active" href="#"><span>Số lượng</span> : <%=p.getQuantity()%></a></li>
                        <li><a href="#"><span>Tình trạng </span> : Còn hàng</a></li>
                    </ul>
                    <p><%=p.getDetailPro()%></p>
                    <div class="noname align-items-center">
                        <div class="pb-2"><label>Size:</label> </div>
                        <div class="default-select pb-2" id="default-select1">

                            <select>
                                <option value="1">38</option>
                                <option value="2">39</option>
                                <option value="3">40</option>
                                <option value="4">41</option>
                                <option value="5">42</option>
                            </select>
                        </div>


                        <div class="pb-1 pt-2"><label for="qty">Số lượng:</label></div>
                        <div class="product_count">

                            <input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
                            <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                    class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
                            <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                    class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
                        </div>
                    </div>
                    <br>
                    <div class="card_area d-flex align-items-center">
                        <a class="primary-btn" href="cart?command=insertItem&product_id=<%=p.getIdPro()%>">Thêm vào giỏ hàng</a>
                        <a class="icon_btn" href="#"><i class="lnr lnr lnr-diamond"></i></a>
                        <a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--================End Single Product Area =================-->

<!--================Product Description Area =================-->
<section class="product_description_area">
    <div class="container">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Mô tả sản phẩm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
                   aria-selected="false">Chính sách đổi trả</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
                   aria-selected="false">Nhận xét</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                <p>- Đế #LiteTraction với chất liệu cao su EVA nhẹ và êm ái nâng đỡ bàn chân trên mọi trải nghiệm. Độ ma sát & bền bỉ cao, tự tin “cân" mọi thử thách.<br>

                    - Đệm lót EVA cùng công nghệ ép khuôn 3D theo biên dạng bàn chân, ôm đều & định vị tốt, tránh tuột chân khi vận động mạnh. Kết hợp với chất liệu thun kháng khuẩn, giúp thấm hút mồ hôi, hạn chế mùi và ẩm mốc.<br>

                    - Có dây buộc<br>

                    - Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.</p>

            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <p> <b>1. Đổi kích cỡ giày </b><br>

                    <u><b>Điều kiện:</b></u> <br>

                    Sản phẩm còn mới 100% chưa qua sử dụng hoặc giặt tẩy, nguyên phiếu bảo hành, tem nhãn sản phẩm, không bị dơ bẩn, trầy xước.
                    Khách hàng phải có hoá đơn giao hàng (phiếu giao hàng, email xác nhận đơn hàng).
                    Trong vòng 7 ngày kể từ ngày nhận hàng. <br>
                    Áp dụng 01 sản phẩm được đổi lệch 01 size so với size đã mua và được đổi 01 lần.
                    Không hỗ trợ đối với những sản phẩm có thông báo: không áp dụng đổi trả - bảo hành.
                    Không hỗ trợ đổi mẫu theo nhu cầu. <br>
                    Không hỗ trợ trả hàng hoàn tiền. <br>
                    <b>Địa điểm:</b> <br>

                    Đối với đổi size: Tại tất cả các cửa hàng tiếp thị của Biti’s trên toàn quốc (nếu có sản phẩm và còn kích cỡ). Danh sách cửa hàng tiếp thị tại đây. Thời gian hỗ trợ từ 14h00 - 20h00 các ngày trong tuần. <br>
                    Đối với đổi size/ đổi màu/ đổi mẫu khi hết size: Gửi về trung tâm giao hàng Biti’s tại địa chỉ: 95/6 Trần Văn Kiểu, Phường 10, Quận 6. Thời gian hỗ trợ đổi size tại kho từ 09h00-11h00 & 14h00 - 16h00 (Thứ 3 - Thứ 7).<br>
                    <u><b> Lưu ý:</b></u><br>

                    Khách hàng chỉ được đổi chênh lệch 1 kích cỡ so với kích cỡ ban đầu.<br>
                    Ví dụ: Mẫu Hunter X2 màu đen kích cỡ 40 hết, kích cỡ cần đổi sẽ được đổi sang Hunter X2 màu đỏ kích cỡ tương ứng. Kích cỡ 40 được chấp nhận đổi sang 39 (Giảm 1 size) hoặc 41 (Tăng 1 size).<br>
                    Chỉ áp dụng đổi sang sản phẩm khác trong trường hợp đã hết size, hết màu của sản phẩm cần đổi, sản phẩm mới phải có giá trị lớn hơn hoặc bằng sản phẩm trước đó (khách hàng sẽ bù tiền chênh lệch nếu giá trị cao hơn và sẽ không được hoàn lại tiền chênh lệch nếu giá trị thấp hơn).<br>
                    <b>2. Đổi trả hàng khi sản phẩm lỗi </b><br>

                    Kiểm tra điều kiện hoàn trả hàng bên dưới.<br>
                    Đóng gói sản phẩm và tất cả phụ kiệm kèm theo về trung tâm giao hàng Biti's như hướng dẫn.<br>
                    Nhận sản phẩm mới.<br>
                    <b><u>Điều kiện:</u></b><br>

                    Khi Biti’s giao nhầm màu, nhầm kích cỡ, nhầm sản phẩm hoặc sản phẩm bị hư hỏng do nhà sản xuất. Khách hàng gửi các hình ảnh sản phẩm nhận được kèm mã đơn hàng đến email: tuvan_online@bitis.com.vn để được bộ phận tư vấn hỗ trợ.<br>
                    Sản phẩm cần đổi còn mới 100% chưa qua sử dụng hoặc giặt tẩy, nguyên phiếu bảo hành, tem nhãn sản phẩm, không bị dơ bẩn, trầy xước, đầy đủ bao bì, túi hộp (nếu có).<br>
                    Khách hàng phải có hoá đơn giao hàng (phiếu giao hàng, email xác nhận đơn hàng).<br>
                    Trong vòng 7 ngày kể từ ngày nhận hàng.<br>
                    Trừ trường hợp được quyền đổi hàng như trên, Biti's không nhận xử lý các vấn đề khác.<br>
                    <b><u>Lưu ý:</u></b><br>

                    Trường hợp sản phẩm lỗi gửi về Biti’s để đổi lại, thông tin hướng dẫn địa điểm cụ thể sẽ được bộ phận tư vấn cung cấp theo email mà khách hàng đã liên hệ.<br>
                    Trường hợp sản phẩm lỗi cần đổi, khi gửi về đổi nhưng bị hết hàng, khách hàng có thể đổi sang sản phẩm khác có giá trị lớn hơn hoặc bằng sản phẩm trước đó (khách hàng sẽ bù tiền chênh lệch nếu giá trị cao hơn và sẽ không được hoàn lại tiền chênh lệch nếu giá trị thấp hơn).<br>
                    <b>3. Chi phí vận chuyển cho việc đổi kích cỡ và đổi hàng lỗi</b><br>

                    Trường hợp lỗi từ Biti’s giao sai thông tin sản phẩm (không đúng kích cỡ, không đúng sản phẩm), hư hỏng trong quá trình vận chuyển hoặc từ nhà sản xuất khách hàng được miễn phí hoàn toàn chi phí vận chuyển đổi hàng. Khách hàng gửi hàng về trong thời gian 7 ngày (không tính thứ 7, Chủ nhật) kể từ ngày nhận hàng, khách mang hàng ra bưu điện và chọn người nhận thanh toán.<br>
                    Trường hợp lỗi do khách hàng trong việc đặt sai đơn hàng, Biti’s đã giao đúng sản phẩm theo thông tin trên đơn hàng đã đặt, chi phí vận chuyển hai chiều khi gửi đổi sẽ do khách hàng thanh toán.<br>
                    <b>4. Địa chỉ đổi size</b><br>

                    Trung tâm giao hàng Biti's.<br>

                    Địa chỉ: Số 95/6 Trần Văn Kiểu Phường 10, Quận 6, TP. Hồ Chí Minh.<br>

                    Email: tuvan_online@bitis.com.vn<br>

                    Hotline tư vấn online: 0966 158 666<br>

                    Website: www.bitis.com.vn hoặc facebook: www.facebook.com/bitis<br>

                    <b>5. Thời gian xử lý</b><br>

                    Sau khi nhận được sản phẩm gửi về, Biti’s sẽ kiểm tra và đổi trả hàng trong vòng 7 ngày làm việc.</p>
            </div>
            <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row total_rate">
                            <div class="col-6">
                                <div class="box_total">
                                    <h5>Đánh giá sản phẩm</h5>
                                    <h4>4.0</h4>
                                    <h6>(03 Nhận xét)</h6>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="rating_list">
                                    <h3>Dựa trên 3 đánh giá</h3>
                                    <ul class="list">
                                        <li><a href="#">5 sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">4 sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">3 sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">2 sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">1 sao <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="review_list">
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-1.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Nhi Nguyễn</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>

                                    </div>
                                </div>
                                <p>Nay buồn nên cho shop 3 sao</p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-2.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Ngân Nguyễn</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>Sản phẩm tuyệt vời, xuất sắc!</p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-3.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Linh Nhi</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>

                                    </div>
                                </div>
                                <p>Cũng rất gì và này nọ. Chưa đi chưa biết có bị vết hằn hay không.
                                    Vân giày tạm ổn. Vẫn còn chỉ thừa. Lỗ đục đều.Giày không bị bẩn như một
                                    số đôi mà mình mua. 8.5đ nên mua nha mấy ông!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="review_box">
                            <h4>Thêm nhận xét mới</h4>
                            <p>Đánh giá của bạn:</p>
                            <ul class="list">
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                            </ul>
                            <p>Tuyệt vời</p>
                            <form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" id="message" rows="1" placeholder="Nhận xét" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Review'"></textarea></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 text-right">
                                    <button type="submit" value="submit" class="primary-btn">Đánh giá ngay</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Product Description Area =================-->

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
