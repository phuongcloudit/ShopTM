<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>

<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<ul>
				<li class="home"><a href="https://quavatonline.com/"
					title="Trang chủ">Trang chủ</a><span>—›</span></li>


				<li><strong>Đồ ăn</strong></li>


			</ul>
		</div>
	</div>
</div>

<!-- Two columns content -->
<div class="main-container col2-left-layout">
	<div class="main container">
		<div class="row">
			<section
				class="col-main col-sm-8 col-md-9 col-sm-push-4 col-md-push-3">
				<div class="category-title">
					<h1>Đồ ăn</h1>
				</div>
				<div class="category-products">

					<div class="toolbar">
						<div class="sorter">
							<div class="view-mode">
								<span title="Grid" class="button button-active button-grid"></span>
								<a href="https://quavatonline.com/do-an?view=list" title="List"
									class="button button-list"></a>
							</div>
						</div>
						<div id="sort-by">
							<label class="left">Lọc theo: </label> <select name="sortBy"
								id="sortBy" class="selectBox"
								style="padding: 0px 10px; height: 30px;">
								<option selected="" value="default">Mặc định</option>
								<option value="alpha-asc">A → Z</option>
								<option value="alpha-desc">Z → A</option>
								<option value="price-asc">Giá tăng dần</option>
								<option value="price-desc">Giá giảm dần</option>
								<option value="created-desc">Hàng mới nhất</option>
								<option value="created-asc">Hàng cũ nhất</option>
							</select>
							<script>
								Bizweb.queryParams = {};
								if (location.search.length) {
									for (var aKeyValue, i = 0, aCouples = location.search.substr(1).split('&'); i < aCouples.length; i++) {
										aKeyValue = aCouples[i].split('=');
										if (aKeyValue.length > 1) {
											Bizweb.queryParams[decodeURIComponent(aKeyValue[0])] = decodeURIComponent(aKeyValue[1]);
										}
									}
								}

								$(function() {
									$('#sortBy')
									// select the current sort order
										.val('created-desc')
										.bind('change', function() {
										Bizweb.queryParams.sortby = jQuery(this).val();
										location.search = jQuery.param(Bizweb.queryParams).replace(/\+/g, '%20');
									});
								});
							</script>
							<a class="button-asc left"
								href="https://quavatonline.com/do-an?view=grid#"
								title="Set Descending Direction"><span
								class="glyphicon glyphicon-arrow-up"></span></a>
						</div>
					</div>

					<ul class="products-grid hidden_btn_cart">

<c:forEach items="${listProductbyID }" var="product">
						<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">

							<div class="col-item">

								<div class="product-image-area">
									<a class="product-image" title="Combo 3"
										href=""> <img
										src="${pageContext.request.contextPath }/files/${product.picture}" class="img-responsive">
									</a>
									<form action="${pageContext.request.contextPath }/cart/add" method="post"
										class="variants" id="product-actions-9253521"
										enctype="multipart/form-data">

										<div class="hover_fly">
											<a
												class="exclusive ajax_add_to_cart_button btn-cart add_to_cart"
												onclick="addCart(${product.id})" href="javascript:void(0)"
												title="Cho vào giỏ hàng">
												<div>
													<i class="icon-shopping-cart"></i><span>Cho vào giỏ
														hàng</span>
												</div>
											</a> <input type="hidden" name="variantId" value="14765615">
										</div>


									</form>
								</div>
								<div class="info">
									<div class="info-inner">
										<div class="item-title">
										<c:set
				value="${pageContext.request.contextPath }/${slugUtil.makeSlug(product.name)}/${product.id }"
				var="detailUrl" />
											<h3>
												<a  href="<c:out value="${detailUrl}"/>.html"">Combo
													3</a>
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
									<form action="${pageContext.request.contextPath }/cart/add" method="post"
										class="variants" id="product-actions-9253521"
										enctype="multipart/form-data">

										<div class="actions">
											<input type="hidden" name="variantId" value="14765615">
											<a onclick="addCart(${item.id})" href="javascript:void(0)"><button class="button btn-cart btn-cart add_to_cart"
												title="Cho vào giỏ hàng" type="button">
												<span>Cho vào giỏ hàng</span>
											</button></a>
											
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
									<div class="clearfix"></div>
								</div>
							</div>
						</li>

</c:forEach>



					</ul>
					<div class="toolbar">
						<div class="pager">
							<div class="pages">
								<label>Trang:</label>
								<ul class="pagination">


									<li class="active"><a
										href="https://quavatonline.com/do-an?view=grid#"
										style="pointer-events: none">1</a></li>




								</ul>
							</div>
						</div>
					</div>


				</div>
			</section>
			<aside
				class="col-left sidebar col-md-3 col-sm-4 col-xs-12 col-md-pull-9 col-sm-pull-8">
				<div class="side-nav-categories">
					<div class="block-title">Danh mục sản phẩm</div>
					<!--block-title-->
					<!-- BEGIN BOX-CATEGORY -->
					<div class="box-content box-category">
						<ul>
							<c:forEach items="${listCat }" var="cat">
								<c:set
									value="${pageContext.request.contextPath }/${slugUtil.makeSlug(cat.cname)}-${cat.id }"
									var="detailUrl" />
								<li><a href="<c:out value="${detailUrl}"/>.html">${cat.cname }</a></li>
							</c:forEach>




						</ul>
					</div>
					<!--box-content box-category-->
				</div>
				<div class="block block-layered-nav hide_scroll">
					<div class="block-title">
						<span>Lọc sản phẩm theo :</span>
					</div>
					<div class="block-content">
						<dl id="narrow-by-list">
							<dt class="even">Thương hiệu</dt>
							<dd class="even">
								<ol>

								</ol>
							</dd>
						</dl>
					</div>
				</div>

				<div class="block block-cart hide_scroll open_button"
					id="open_shopping_cart">
					<div class="block-title">
						<span>Giỏ hàng của bạn</span>
					</div>
					<div class="block-content">
						<div class="summary">
							<p class="amount">
								Đang có <span id="cart-total">5</span> sản phẩm trong giỏ hàng
								của bạn.
							</p>
							<p class="subtotal">
								<span class="label">Tổng tiền:</span> <span
									class="price total_price">11.000₫</span>
							</p>
						</div>
						<div class="ajax-checkout">
							<button onclick="window.location=&#39;/checkout&#39;"
								type="submit" title="Submit" class="button button-checkout">
								<span>Thanh toán</span>
							</button>
						</div>
						<ul class="shopping_cart style_cart_col">
							<div class="block-subtitle">Sản phẩm đã cho vào giỏ hàng</div>
							<li class="item even"><a class="product-image"
								href="https://quavatonline.com/banh-goi"><img
									src="./cat1_files/banhgoi-web.jpg" width="80"></a>
								<div class="detail-item">
									<div class="product-details">
										<a href="javascript:void(0);"
											onclick="Bizweb.removeItem(7120557)" title="xóa sản phẩm"
											class="glyphicon glyphicon-remove">&nbsp;</a>
										<p class="product-name">
											<a href="https://quavatonline.com/banh-goi" title="bánh gối">bánh
												gối</a>
										</p>
									</div>
									<div class="product-details-bottom">
										<span class="price">11.000₫</span> <span class="title-desc">Số
											lượng:</span> <strong>1</strong>
									</div>
								</div></li>
							<div class="top-subtotal">
								Tổng tiền: <span class="price total_price">11.000₫</span>
							</div>
							<div class="actions">
								<button class="btn-checkout" type="button"
									onclick="window.location.href=&#39;/checkout&#39;">
									<a href="https://quavatonline.com/checkout"><span>Thanh
											toán</span></a>
								</button>
								<button class="view-cart" type="button"
									onclick="window.location.href=&#39;/cart&#39;">
									<a href="https://quavatonline.com/cart"><span>giỏ
											hàng</span></a>
								</button>
							</div>
						</ul>
					</div>
				</div>

				<div class="block block-tags">
					<div class="block-title">
						<span>Tags sản phẩm</span>
					</div>
					<div class="block-content">
						<ul class="tags-list">

						</ul>
					</div>
				</div>

			</aside>
		</div>
	</div>
</div>