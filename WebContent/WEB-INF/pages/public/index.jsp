<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<div class="container">
	<div id="coverage-slider" class="owl-carousel owl-theme"
		style="opacity: 1; display: block;">
		<div class="owl-wrapper-outer">
			<div class="owl-wrapper"
				style="width: 6840px; left: 0px; display: block; transition: all 800ms ease; transform: translate3d(0px, 0px, 0px);">
				<div class="owl-item" style="width: 1140px;">
					<div class="item">
						<a href="https://quavatonline.com/#"><img
							src="${defines.urlPublic }/images/slide-img1.jpg" alt="# Trà sữa"></a>
					</div>
				</div>
				<div class="owl-item" style="width: 1140px;">
					<div class="item">
						<a href="https://quavatonline.com/#"><img
							src="${defines.urlPublic }/images/slide-img2.jpg" alt="#"></a>
					</div>
				</div>
				<div class="owl-item" style="width: 1140px;">
					<div class="item">
						<a href="https://quavatonline.com/"><img
							src="${defines.urlPublic }/images/slide-img3.jpg" alt=""></a>
					</div>
				</div>
			</div>
		</div>


		<div class="owl-controls clickable">
			<div class="owl-buttons">
				<div class="owl-prev">
					<a class="cover_icon_prev"></a>
				</div>
				<div class="owl-next">
					<a class="cover_icon_next"></a>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="header-service">
		<div class="row">
			<div class="col-lg-3 col-sm-6 col-xs-12">
				<div class="content clearfix">
					<div class="fa fa-check" aria-hidden="true"></div>
					<span><strong>Chỉ sử dụng</strong></span>
					<p>dầu ăn Tường An</p>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 col-xs-12">
				<div class="content clearfix">
					<div class="fa fa-check" aria-hidden="true"></div>
					<span><strong>Sữa chua</strong></span>
					<p>được mua trực tiếp từ đại lý của sữa chua Ba Vì</p>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 col-xs-12">
				<div class="content clearfix">
					<div class="fa fa-check" aria-hidden="true"></div>
					<span><strong>Không sử dụng đường hóa học</strong></span>
					<p>các chất phụ gia và thực phẩm độc hại.</p>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 col-xs-12">
				<div class="content clearfix">
					<div class="fa fa-check" aria-hidden="true"></div>
					<span><strong>Chúng tôi cam kết sẽ dành trọn</strong></span>
					<p>tâm huyết để quý khách hàng có thể thưởng thức những món ăn
						ngon, an toàn và giá thành hợp lý.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main container -->

<section class="main-container col1-layout home-content-container">
	<div class="container">
		<div class="std">
			<div class="best-seller-pro">
				<div class="slider-items-products">
					<div class="new_title center">
						<h2>Thực đơn chính</h2>
					</div>
					<div id="best-seller-slider" class="hidden-buttons hidden_btn_cart">
						<div class="slider-items slider-width-col4">
							<div class="row">
								<c:forEach items="${listProduct }" var="product">
									<div class="item item-4 col-md-2 col-sm-5 col-xs-4"
										style="margin: 20px 0;">

										<div class="col-item">
											<div class="product-image-area">
												<a class="product-image" title="nem nướng"
													href="${pageContex.request.contextPath }/"> <img
													src="${pageContext.request.contextPath }/files/${product.picture}"
													class="img-responsive" alt="nem nướng">
												</a>
												<form action="" method="post" class="variants"
													id="product-actions-4398817" enctype="multipart/form-data">

													<div class="hover_fly">
														<a onclick="addCart(${product.id})"
															class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"
															href="javascript:void(0)" title="Mua hàng">
															<div>
																<i class="icon-shopping-cart"></i><span>Mua hàng</span>
															</div>
														</a> <input type="hidden" name="variantId" value="7122082">
													</div>
													<script>
															function  addCart(id) {
																$.ajax({
																	url: '${pageContext.request.contextPath }/cart',
																	type: 'POST',
																	cache: false,
																	data: {
																			//Dữ liệu gửi đi
																			pid : id,
																			},
																			success: function(data){
																		// Xử lý thành công
																		$('#cart-box').html(data);
																		alert('Đã thêm sản phẩm vào giỏ hàng');
																	},
																	error: function (){
																	// Xử lý nếu có lỗi
																	alert('Loi');
																	}
																});
															}
																	
														</script>


												</form>
												<c:set
				value="${pageContext.request.contextPath }/${slugUtil.makeSlug(product.name)}/${product.id }"
				var="detailUrl" />
											</div>
											<div class="info">
												<div class="info-inner">
													<div class="item-title">
														<h3>
															<a title="nem nướng" href="<c:out value="${detailUrl}"/>.html">${product.name }</a>
														</h3>
													</div>
													<!--item-title-->
													<div class="item-content">


														<div class="price-box">
															<p class="special-price">
																<span class="price">${product.price }₫ </span>
															</p>
														</div>


													</div>
													<!--item-content-->
												</div>
												<!--info-inner-->
												<form action="https://quavatonline.com/cart/add"
													method="post" class="variants" id="product-actions-4398817"
													enctype="multipart/form-data">
													<div class="actions">
														<input type="hidden" name="variantId" value="7122082">
														<button class="button btn-cart btn-cart add_to_cart"
															title="Mua hàng" type="button">
															<span>Mua hàng</span>
														</button>
													</div>
												</form>

											</div>
										</div>

									</div>
								</c:forEach>
										<div class="toolbar">
						<div class="pager">
							<div class="pages">
								<label>Trang:</label>
								<ul class="pagination">


									<li class="active"><a
										href=""
										style="pointer-events: none">1</a></li>




								</ul>
							</div>
						</div>
					</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End main container -->

<!-- offer banner section -->

<!-- Featured Slider -->



<!-- End Featured Slider -->
<!-- middle slider -->

<!-- End middle slider -->
