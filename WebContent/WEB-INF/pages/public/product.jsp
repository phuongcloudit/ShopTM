<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<ul>
				<li class="home"><a href="https://quavatonline.com/"
					title="Trang chủ">Trang chủ</a><span>—›</span></li>

				<li><a href="https://quavatonline.com/do-an"> Combo</a><span>—›</span></li>
				<li><strong>Combo 5</strong></li>
				<li></li>
			</ul>
		</div>
	</div>
</div>

<section class="main-container col1-layout">
	<div class="main container">
		<div class="col-main">
			<div class="row">
				<div class="product-view" itemscope=""
					itemtype="http://schema.org/Product">
					<meta itemprop="url" content="//quavatonline.com/combo-5">
					<meta itemprop="image"
						content="//bizweb.dktcdn.net/thumb/grande/100/135/586/products/combo-5.jpg?v=1513580747477">
					<meta itemprop="shop-currency" content="VND">
					<div class="product-essential">
						<form action="https://quavatonline.com/cart/add" method="post"
							enctype="multipart/form-data" id="product_addtocart_form">
							<div class="product-img-box col-lg-6 col-sm-6 col-xs-12">
								<div class="product-image">


									<div class="large-image">
										<a
											href=""
											class="cloud-zoom" id="zoom1"
											rel="useWrapper: false, adjustY:0, adjustX:20"
											style="position: relative; display: block;"> <img
											src="${pageContext.request.contextPath }/files/${item.picture}" style="display: block;">
										</a>
										<div class="mousetrap"
											style="z-index: 999; position: absolute; width: 555px; height: 555px; left: 0px; top: 0px;"></div>
									</div>


								</div>
								<div class="clear"></div>
							</div>
							<div class="product-shop col-lg-6 col-sm-6 col-xs-12">
								<div class="product-name">
									<h1 itemprop="name">${item.name }</h1>
								</div>

								<p class="availability ">
									Tình trạng: <span class="in-stock">Còn hàng</span>
								</p>

								<div class="price-block">


									<div class="price-box">
										<p class="special-price" itemprop="price">
											<span class="price-label">Giá mới</span> <span class="price">${item.price }₫</span>
										</p>
									</div>


								</div>


								<div class="add-to-box">
									<div class="add-to-cart" style="float: left; width: 100%;">
										<div class="pull-left" style="float: left; width: 100%;">



											<input type="hidden" name="variantId" value="14765823">


										</div>
									</div>
									<div class="add-to-cart">
										<label for="qty">Số lượng:</label>
										<div class="pull-left">
											<div class="custom pull-left">
												<button
													onclick="var result = document.getElementById(&#39;qty&#39;); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;"
													class="reduced items-count" type="button">
													<i class="icon-minus">&nbsp;</i>
												</button>
												<input type="text" title="Qty" value="1" maxlength="12"
													id="qty" name="quantity" class="input-text qty">
												<button
													onclick="var result = document.getElementById(&#39;qty&#39;); var qty = result.value; if( !isNaN( qty )) result.value++;return false;"
													class="increase items-count" type="button">
													<i class="icon-plus">&nbsp;</i>
												</button>
											</div>
										</div>
										<a onclick="addCart(${item.id})" href="javascript:void(0)"><button class="button btn-cart  add_to_cart"
											title="Thêm vào giỏ hàng" type="button">
											<span><i  class="icon-basket"></i>Thêm vào giỏ hàng</span>
										</button></a>

										
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

									</div>
								</div>

								<div class="social">
									<ul>
										<li class="fb"><a target="_blank"
											href="http://www.facebook.com/sharer.php?u=https://quavatonline.com/combo-5&amp;t=Combo%205"></a></li>
										<li class="tw"><a target="_blank"
											href="http://twitter.com/share?url=https://quavatonline.com/combo-5&amp;text=Combo%205&amp;via=TWITTER_NAME"></a></li>
										<li class="googleplus"><a target="_blank"
											href="https://plus.google.com/share?url=https://quavatonline.com/combo-5"></a></li>
										<li class="pintrest"><a target="_blank"
											href="http://www.pinterest.com/pin/create/button/?url=https://quavatonline.com/combo-5&amp;description=Combo%205&amp;media=//bizweb.dktcdn.net/100/135/586/products/combo-5.jpg?v=1513580747477"></a></li>
										<li class="linkedin"><a target="_blank"
											href="http://www.linkedin.com/shareArticle?url=https://quavatonline.com/combo-5"></a></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
					<div class="product-collateral">
						<div class="col-sm-12">
							<ul id="product-detail-tab" class="nav nav-tabs product-tabs">
								<li class="active"><a
									href="https://quavatonline.com/combo-5#product_tabs_description"
									data-toggle="tab"> Chi tiết sản phẩm </a></li>
								<li><a
									href="https://quavatonline.com/combo-5#product_tabs_tags"
									data-toggle="tab">Tags sản phẩm</a></li>
								<li><a
									href="https://quavatonline.com/combo-5#product_tabs_title"
									data-toggle="tab"></a></li>
								<li><a
									href="https://quavatonline.com/combo-5#product_tabs_content"
									data-toggle="tab"></a></li>
							</ul>
							<div id="productTabContent" class="tab-content">
								<div class="tab-pane fade in active"
									id="product_tabs_description">
									<div class="std">
										<p>${item.description }</p>
									</div>
								</div>
								<div class="tab-pane fade" id="product_tabs_tags">
									<div class="box-collateral box-tags">
										<div class="tags">
											<ul>

											</ul>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="product_tabs_title">
									<div class="box-collateral box-tags">
										<div class="tags"></div>
									</div>
								</div>
								<div class="tab-pane fade" id="product_tabs_content">
									<div class="box-collateral box-tags">
										<div class="tags"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="box-additional">



								<div class="related-pro">
									<div class="slider-items-products">
										<div class="new_title center">
											<h2>Sản phẩm liên quan</h2>
										</div>
										<div id="related-products-slider"
											class="product-flexslider hidden-buttons ">
											<div
												class="slider-items slider-width-col4 hidden_btn_cart owl-carousel owl-theme"
												style="opacity: 1; display: block;">

												<div class="owl-wrapper-outer">
													<div class="owl-wrapper"
														style="width: 2900px; left: 0px; display: block;">
														<div class="owl-item" style="width: 290px;">
															<div class="item">








																<div class="col-item">

																	<div class="product-image-area">
																		<a class="product-image" title="Combo 5"
																			href="https://quavatonline.com/combo-5"> <img
																			src="./sanpham_files/combo-5(1).jpg"
																			class="img-responsive" alt="Combo 5">
																		</a>
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253705"
																			enctype="multipart/form-data">



																			<div class="hover_fly">
																				<a
																					class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"
																					href="https://quavatonline.com/combo-5#"
																					title="Cho vào giỏ hàng">
																					<div>
																						<i class="icon-shopping-cart"></i><span>Cho
																							vào giỏ hàng</span>
																					</div>
																				</a> <input type="hidden" name="variantId"
																					value="14765823">
																			</div>


																		</form>
																	</div>
																	<div class="info">
																		<div class="info-inner">
																			<div class="item-title">
																				<h3>
																					<a title="Combo 5"
																						href="https://quavatonline.com/combo-5">Combo
																						5</a>
																				</h3>
																			</div>
																			<!--item-title-->
																			<div class="item-content">


																				<div class="price-box">
																					<p class="special-price">
																						<span class="price">99.000₫ </span>
																					</p>
																				</div>


																			</div>
																			<!--item-content-->
																		</div>
																		<!--info-inner-->
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253705"
																			enctype="multipart/form-data">



																			<div class="actions">
																				<input type="hidden" name="variantId"
																					value="14765823">
																				<button class="button btn-cart btn-cart add_to_cart"
																					title="Cho vào giỏ hàng" type="button">
																					<span>Cho vào giỏ hàng</span>
																				</button>
																			</div>


																		</form>
																		<div class="clearfix"></div>
																	</div>
																</div>
															</div>
														</div>
														<div class="owl-item" style="width: 290px;">
															<div class="item">








																<div class="col-item">

																	<div class="product-image-area">
																		<a class="product-image" title="Combo 4"
																			href="https://quavatonline.com/combo-4"> <img
																			src="./sanpham_files/combo-4.jpg"
																			class="img-responsive" alt="Combo 4">
																		</a>
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253598"
																			enctype="multipart/form-data">



																			<div class="hover_fly">
																				<a
																					class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"
																					href="https://quavatonline.com/combo-5#"
																					title="Cho vào giỏ hàng">
																					<div>
																						<i class="icon-shopping-cart"></i><span>Cho
																							vào giỏ hàng</span>
																					</div>
																				</a> <input type="hidden" name="variantId"
																					value="14765702">
																			</div>


																		</form>
																	</div>
																	<div class="info">
																		<div class="info-inner">
																			<div class="item-title">
																				<h3>
																					<a title="Combo 4"
																						href="https://quavatonline.com/combo-4">Combo
																						4</a>
																				</h3>
																			</div>
																			<!--item-title-->
																			<div class="item-content">


																				<div class="price-box">
																					<p class="special-price">
																						<span class="price">65.000₫ </span>
																					</p>
																				</div>


																			</div>
																			<!--item-content-->
																		</div>
																		<!--info-inner-->
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253598"
																			enctype="multipart/form-data">



																			<div class="actions">
																				<input type="hidden" name="variantId"
																					value="14765702">
																				<button class="button btn-cart btn-cart add_to_cart"
																					title="Cho vào giỏ hàng" type="button">
																					<span>Cho vào giỏ hàng</span>
																				</button>
																			</div>


																		</form>
																		<div class="clearfix"></div>
																	</div>
																</div>
															</div>
														</div>
														<div class="owl-item" style="width: 290px;">
															<div class="item">








																<div class="col-item">

																	<div class="product-image-area">
																		<a class="product-image" title="Combo 3"
																			href="https://quavatonline.com/combo-3"> <img
																			src="./sanpham_files/combo-3.jpg"
																			class="img-responsive" alt="Combo 3">
																		</a>
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253521"
																			enctype="multipart/form-data">



																			<div class="hover_fly">
																				<a
																					class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"
																					href="https://quavatonline.com/combo-5#"
																					title="Cho vào giỏ hàng">
																					<div>
																						<i class="icon-shopping-cart"></i><span>Cho
																							vào giỏ hàng</span>
																					</div>
																				</a> <input type="hidden" name="variantId"
																					value="14765615">
																			</div>


																		</form>
																	</div>
																	<div class="info">
																		<div class="info-inner">
																			<div class="item-title">
																				<h3>
																					<a title="Combo 3"
																						href="https://quavatonline.com/combo-3">Combo
																						3</a>
																				</h3>
																			</div>
																			<!--item-title-->
																			<div class="item-content">


																				<div class="price-box">
																					<p class="special-price">
																						<span class="price">119.000₫ </span>
																					</p>
																				</div>


																			</div>
																			<!--item-content-->
																		</div>
																		<!--info-inner-->
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253521"
																			enctype="multipart/form-data">



																			<div class="actions">
																				<input type="hidden" name="variantId"
																					value="14765615">
																				<button class="button btn-cart btn-cart add_to_cart"
																					title="Cho vào giỏ hàng" type="button">
																					<span>Cho vào giỏ hàng</span>
																				</button>
																			</div>


																		</form>
																		<div class="clearfix"></div>
																	</div>
																</div>
															</div>
														</div>
														<div class="owl-item" style="width: 290px;">
															<div class="item">








																<div class="col-item">

																	<div class="product-image-area">
																		<a class="product-image" title="combo 2"
																			href="https://quavatonline.com/combo-2"> <img
																			src="./sanpham_files/sieu-combo.jpg"
																			class="img-responsive" alt="combo 2">
																		</a>
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253429"
																			enctype="multipart/form-data">



																			<div class="hover_fly">
																				<a
																					class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"
																					href="https://quavatonline.com/combo-5#"
																					title="Cho vào giỏ hàng">
																					<div>
																						<i class="icon-shopping-cart"></i><span>Cho
																							vào giỏ hàng</span>
																					</div>
																				</a> <input type="hidden" name="variantId"
																					value="14765497">
																			</div>


																		</form>
																	</div>
																	<div class="info">
																		<div class="info-inner">
																			<div class="item-title">
																				<h3>
																					<a title="combo 2"
																						href="https://quavatonline.com/combo-2">combo
																						2</a>
																				</h3>
																			</div>
																			<!--item-title-->
																			<div class="item-content">


																				<div class="price-box">
																					<p class="special-price">
																						<span class="price">89.000₫ </span>
																					</p>
																				</div>


																			</div>
																			<!--item-content-->
																		</div>
																		<!--info-inner-->
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253429"
																			enctype="multipart/form-data">



																			<div class="actions">
																				<input type="hidden" name="variantId"
																					value="14765497">
																				<button class="button btn-cart btn-cart add_to_cart"
																					title="Cho vào giỏ hàng" type="button">
																					<span>Cho vào giỏ hàng</span>
																				</button>
																			</div>


																		</form>
																		<div class="clearfix"></div>
																	</div>
																</div>
															</div>
														</div>
														<div class="owl-item" style="width: 290px;">
															<div class="item">








																<div class="col-item">

																	<div class="product-image-area">
																		<a class="product-image" title="Combo 1"
																			href="https://quavatonline.com/combo-1"> <img
																			src="./sanpham_files/combo-1.jpg"
																			class="img-responsive" alt="Combo 1">
																		</a>
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253362"
																			enctype="multipart/form-data">



																			<div class="hover_fly">
																				<a
																					class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"
																					href=""
																					title="Cho vào giỏ hàng">
																					<div>
																						<i class="icon-shopping-cart"></i><span>Cho
																							vào giỏ hàng</span>
																					</div>
																				</a> <input type="hidden" name="variantId"
																					value="14765424">
																			</div>


																		</form>
																	</div>
																	<div class="info">
																		<div class="info-inner">
																			<div class="item-title">
																				<h3>
																					<a title="Combo 1"
																						href="https://quavatonline.com/combo-1">Combo
																						1</a>
																				</h3>
																			</div>
																			<!--item-title-->
																			<div class="item-content">


																				<div class="price-box">
																					<p class="special-price">
																						<span class="price">45.000₫ </span>
																					</p>
																				</div>


																			</div>
																			<!--item-content-->
																		</div>
																		<!--info-inner-->
																		<form action="https://quavatonline.com/cart/add"
																			method="post" class="variants"
																			id="product-actions-9253362"
																			enctype="multipart/form-data">



																			<div class="actions">
																				<input type="hidden" name="variantId"
																					value="14765424">
																				<button class="button btn-cart btn-cart add_to_cart"
																					title="Cho vào giỏ hàng" type="button">
																					<span>Cho vào giỏ hàng</span>
																				</button>
																			</div>


																		</form>
																		<div class="clearfix"></div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>









												<div class="owl-controls clickable">
													<div class="owl-buttons">
														<div class="owl-prev">
															<a class="flex-prev"></a>
														</div>
														<div class="owl-next">
															<a class="flex-next"></a>
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
				</div>
			</div>
		</div>
	</div>
</section>
<!--End main-container -->
<script src="./sanpham_files/option-selectors.js" type="text/javascript"></script>
<style>
.add-to-cart .selector-wrapper label {
	float: left !important;
	margin-right: 15px;
}
</style>

<script>  
	var selectCallback = function(variant, selector) {

		var addToCart = jQuery('.btn-cart'),
			productPrice = jQuery('.special-price .price'),
			comparePrice = jQuery('.old-price .price');

		if (variant) {
			if (variant.available) {
				// We have a valid product variant, so enable the submit button
				addToCart.text(' THÊM VÀO GIỎ HÀNG').removeClass('disabled').removeAttr('disabled');
				$('.product-shop .in-stock').text('Còn hàng').removeClass('out-stock');
			} else {
				// Variant is sold out, disable the submit button
				addToCart.text(' HẾT HÀNG').addClass('disabled').attr('disabled', 'disabled');
				$('.product-shop .in-stock').text('Hết hàng').addClass('out-stock');
			}

			// Regardless of stock, update the product price
			productPrice.html(Bizweb.formatMoney(variant.price, "{{amount_no_decimals_with_comma_separator}}₫"));

			// Also update and show the product's compare price if necessary
			if ( variant.compare_at_price > variant.price ) {

				comparePrice.html(Bizweb.formatMoney(variant.compare_at_price, "{{amount_no_decimals_with_comma_separator}}₫")).show();
			} else {
				comparePrice.hide();     
			}       


		} else {
			// The variant doesn't exist. Just a safeguard for errors, but disable the submit button anyway
			addToCart.text('Hết hàng').attr('disabled', 'disabled');
		}
		/*begin variant image*/
		if (variant && variant.image) {  
			var originalImage = jQuery(".large-image img"); 
			var newImage = variant.image;
			var element = originalImage[0];
			Bizweb.Image.switchImage(newImage, element, function (newImageSizedSrc, newImage, element) {
				jQuery(element).parents('a').attr('href', newImageSizedSrc);
				jQuery(element).attr('src', newImageSizedSrc);
			});
		}
		/*end of variant image*/
	};
	jQuery(function($) {
		

		 // Add label if only one product option and it isn't 'Title'. Could be 'Size'.
		 

		  // Hide selectors if we only have 1 variant and its title contains 'Default'.
		  
		  $('.selector-wrapper').hide();
		    
		   $('.selector-wrapper').css({
			   'text-align':'left',
			   'margin-bottom':'15px'
		   });
		   });
</script>