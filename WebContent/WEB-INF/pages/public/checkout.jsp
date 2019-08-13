<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	class="anyflexbox boxshadow display-table">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Quà Vặt Online - Thanh toán đơn hàng" />

<title>Quà Vặt Online - Thanh toán đơn hàng</title>


<link rel="shortcut icon"
	href="//bizweb.dktcdn.net/100/135/586/themes/175747/assets/favicon.ico?1522722188552"
	type="image/x-icon" />

<script
	src='//bizweb.dktcdn.net/assets/themes_support/jquery-2.1.3.min.js?4'
	type='text/javascript'></script>
<link
	href='//bizweb.dktcdn.net/assets/themes_support/bootstrap.min.css?20171025'
	rel='stylesheet' type='text/css' />
<link
	href='//bizweb.dktcdn.net/assets/themes_support/nprogress.css?20171025'
	rel='stylesheet' type='text/css' />
<link
	href='//bizweb.dktcdn.net/assets/themes_support/font-awesome.min.css?20171025'
	rel='stylesheet' type='text/css' />
<link
	href='//bizweb.dktcdn.net/assets/themes_support/checkout.css?20180321'
	rel='stylesheet' type='text/css' />

<link
	href='//bizweb.dktcdn.net/100/135/586/checkout_stylesheet/175747/checkout.css?1522722188552'
	rel='stylesheet' type='text/css' />

</head>

<body class="body--custom-background-color ">
	<div class="banner" data-header="">
		<div class="wrap">
			<div class="shop logo logo--left ">

				<a href="/"> <img class="logo__image  logo__image--small "
					alt="Quà Vặt Online"
					src="//bizweb.dktcdn.net/100/135/586/themes/175747/assets/logo.png?1522722188552">
				</a>

			</div>
		</div>
	</div>

	<form method="post" action="" data-toggle="validator"
		class="content stateful-form formCheckout">
		<div class="wrap" >
			<div class='sidebar '>
				<div class="sidebar_header">
					<h2>
						<label class="control-label">Đơn hàng</label> <label
							class="control-label">(${numberCart } sản phẩm)</label>
					</h2>
					<hr class="full_width" />
				</div>
				<div class="sidebar__content">
					<div
						class="order-summary order-summary--product-list order-summary--is-collapsed">
						<div class="summary-body summary-section summary-product">
							<div class="summary-product-list">
								<table class="product-table">
									<tbody>

										<c:forEach items="${listCart }" var="cart">
											<tr class="product product-has-image clearfix">
												<td>
													<div class="product-thumbnail">
														<div class="product-thumbnail__wrapper">

															<img
																src='${pageContext.request.contextPath }/files/${cart.image }'
																class='product-thumbnail__image' />

														</div>
														<span class="product-thumbnail__quantity"
															aria-hidden="true">${cart.quantity }</span>
													</div>
												</td>
												<td class="product-info"><span
													class="product-info-name"> ${cart.name } </span></td>
												<td class="product-price text-right">${cart.price }₫</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
						</div>
						<hr class="m0" />
					</div>
					<div class="order-summary order-summary--discount">
						<div class="summary-section">
							<div class="form-group m0"
								bind-show="!existCode ||code == null || !code.length">
								<div class="field__input-btn-wrapper">
									<div class="field__input-wrapper">
										<input bind="code" name="code" type="text"
											class="form-control discount_code"
											placeholder="Nhập mã giảm giá" value=""
											id="checkout_reduction_code" />
									</div>
									<button
										bind-event-click="reduction_code = false, caculateShippingFee('')"
										class="btn btn-primary event-voucher-apply" type="button">Áp
										dụng</button>
								</div>
							</div>

						</div>
						<hr class="m0" />
					</div>
					<div class="order-summary order-summary--total-lines">
						<div class="summary-section border-top-none--mobile">
							<div class="total-line total-line-subtotal clearfix">
								<span class="total-line-name pull-left"> Tạm tính </span> <span
									class="total-line-subprice pull-right"> ${sumTotal }₫ </span>
							</div>
							<div class="total-line total-line-shipping clearfix"
								bind-show="requiresShipping">
								<span class="total-line-name pull-left"> Phí vận chuyển </span>
								<span
									bind="shippingFee >  0 ? money(shippingFee,'{{amount_no_decimals_with_comma_separator}}₫') : ((requiresShipping && shippingMethods.length == 0) ? 'Khu vực này không hỗ trợ vận chuyển': 'Miễn phí')"
									class="total-line-shipping pull-right"
									bind-show="ShippingProvinceId || BillingProvinceId && !otherAddress || (requiresShipping && shippingMethods.length > 0)">

									Miễn phí </span>
							</div>
							<div class="total-line total-line-total clearfix">
								<span class="total-line-name pull-left"> Tổng cộng </span> <span
									bind="money(totalOrderItemPrice + (isNaN(shippingFee) ? 0 : shippingFee) - discount,'{{amount_no_decimals_with_comma_separator}}₫')"
									class="total-line-price pull-right"> ${sumTotal }₫ </span>
							</div>
						</div>
					</div>
					<div class="form-group clearfix hidden-sm hidden-xs">
						<div class="field__input-btn-wrapper mt10">
							<a class="previous-link"
								href="${pageContext.request.contextPath }/cart"> <i
								class="fa fa-angle-left fa-lg" aria-hidden="true"></i> <span>Quay
									về giỏ hàng</span>
							</a> <input class="btn btn-primary btn-checkout" type="submit"
								value="ĐẶT HÀNG" />
						</div>
					</div>
				</div>
			</div>
			<div class="main" role="main">
				<div class="main_header">
					<div class="shop logo logo--left ">

						<a href="${pageContext.request.contextPath }"> <img
							class="logo__image  logo__image--small " alt="Quà Vặt Online"
							src="//bizweb.dktcdn.net/100/135/586/themes/175747/assets/logo.png?1522722188552">
						</a>

					</div>
				</div>
				
					<div class="main_content">
						<div class="row">
							<div class="col-md-6 col-lg-6">
								<div class="section" define="{billing_address: {}}">
									<div class="section__header">
										<div class="layout-flex layout-flex--wrap">
											<h2
												class="section__title layout-flex__item layout-flex__item--stretch">
												<i
													class="fa fa-id-card-o fa-lg section__title--icon hidden-md hidden-lg"
													aria-hidden="true"></i> <label class="control-label">Thông
													tin mua hàng</label>
											</h2>

											<a class="layout-flex__item section__title--link"
												href="/account/login?returnUrl=/checkout"> <i
												class="fa fa-user-circle-o fa-lg" aria-hidden="true"></i>
												Đăng nhập
											</a>

										</div>
									</div>
									<div class="section__content">


										<div class="form-group"
											bind-class="{'has-error' : invalidEmail}">
											<div>
												<label class="field__input-wrapper"
													bind-class="{ 'js-is-filled': email }"> <span
													class="field__label" bind-event-click="handleClick(this)">
														Email </span> <input name="email" type="email"
													bind-event-change="changeEmail()"
													bind-event-focus="handleFocus(this)"
													bind-event-blur="handleFieldBlur(this)"
													class="field__input form-control" id="_email"
													data-error="Vui lòng nhập email đúng định dạng" value=""
													pattern="^([a-zA-Z0-9_\-\.\+]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
													bind="email" />
												</label>
											</div>
											<div class="help-block with-errors"></div>
										</div>

										<div class="billing">
											<div>
												<div class="form-group">
													<div class="field__input-wrapper"
														bind-class="{ 'js-is-filled': billing_address.full_name }">
														<span class="field__label"
															bind-event-click="handleClick(this)"> Họ và tên </span> <input
															name="fullname" type="text"
															bind-event-change="saveAbandoned()"
															bind-event-focus="handleFocus(this)"
															bind-event-blur="handleFieldBlur(this)"
															class="field__input form-control"
															id="_billing_address_last_name"
															data-error="Vui lòng nhập họ tên" required
															bind="billing_address.full_name" />
													</div>
													<div class="help-block with-errors"></div>
												</div>

												<div class="form-group">
													<div class="field__input-wrapper"
														bind-class="{ 'js-is-filled': billing_address.phone }">
														<span class="field__label"
															bind-event-click="handleClick(this)"> Số điện
															thoại </span> <input name="phone"
															bind-event-change="saveAbandoned()" type="text"
															bind-event-focus="handleFocus(this)"
															bind-event-blur="handleFieldBlur(this)"
															class="field__input form-control"
															id="_billing_address_phone"
															data-error="Vui lòng nhập số điện thoại" required
															bind="billing_address.phone" />
													</div>
													<div class="help-block with-errors"></div>
												</div>


												<div class="form-group">
													<div class="field__input-wrapper"
														bind-class="{ 'js-is-filled': billing_address.address1 }">
														<span class="field__label"
															bind-event-click="handleClick(this)"> Địa chỉ </span> <input
															name="address" bind-event-change="saveAbandoned()"
															type="text" bind-event-focus="handleFocus(this)"
															bind-event-blur="handleFieldBlur(this)"
															class="field__input form-control"
															id="_billing_address_address1"
															data-error="Vui lòng nhập địa chỉ" required
															bind="billing_address.address1" />
													</div>
													<div class="help-block with-errors"></div>
												</div>

											</div>
										</div>
									</div>
								</div>


							</div>
							<div class="col-md-6 col-lg-6">
								<div class="section shipping-method hide"
									bind-show="shippingMethods.length > 0">
									<div class="section__header">
										<h2 class="section__title">
											<i
												class="fa fa-truck fa-lg section__title--icon hidden-md hidden-lg"
												aria-hidden="true"></i> <label class="control-label">Vận
												chuyển</label>
										</h2>
									</div>
									<div class="section__content">
										<div class="content-box"></div>
									</div>
								</div>
								<div class="section payment-methods"
									bind-class="{'p0--desktop': shippingMethods.length == 0}">
									<div class="section__header">
										<h2 class="section__title">
											<i
												class="fa fa-credit-card fa-lg section__title--icon hidden-md hidden-lg"
												aria-hidden="true"></i> <label class="control-label">Thanh
												toán</label>
										</h2>
									</div>
									<div class="section__content">
										<div class="content-box">

											<div class="content-box__row">
												<c:forEach items="${listPay }" var="pay">
													<div class="radio-wrapper">

														<div class="radio__input">
															<input class="input-radio" type="radio"
																value="${pay.id }" name="payment"
																id="payment_method_138820" data-check-id="2"
																bind="payment_method_id" checked>
														</div>

														<label class="radio__label" for="payment_method_138820">

															<span class="radio__label__primary">${pay.name }</span> <span
															class="radio__label__accessory">
																<ul>
																	<li class="payment-icon-v2 payment-icon--4"><i
																		class="fa fa-money payment-icon-fa" aria-hidden="true"></i>

																	</li>
																</ul>
														</span>

														</label>

													</div>
													<!-- /radio-wrapper-->
												</c:forEach>
											</div>


										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				<div class="main_footer footer unprint">



					<div class="mt10"></div>
				</div>

			</div>
			</div>
</form>
	<script
		src='//bizweb.dktcdn.net/assets/themes_support/jquery-2.1.3.min.js?20171025'
		type='text/javascript'></script>
	<script
		src='//bizweb.dktcdn.net/assets/themes_support/bootstrap.min.js?20171025'
		type='text/javascript'></script>
	<script
		src='//bizweb.dktcdn.net/assets/themes_support/twine.min.js?20171025'
		type='text/javascript'></script>
	<script
		src='//bizweb.dktcdn.net/assets/themes_support/validator.min.js?20171025'
		type='text/javascript'></script>
	<script
		src='//bizweb.dktcdn.net/assets/themes_support/nprogress.js?20171025'
		type='text/javascript'></script>
	<script
		src='//bizweb.dktcdn.net/assets/themes_support/money-helper.js?20171025'
		type='text/javascript'></script>

	<script
		src='//bizweb.dktcdn.net/assets/themes_support/checkout.js?20180327'
		type='text/javascript'></script>
	<!--<script src="https://bizweb.dktcdn.net/100/000/001/themes/544642/assets/checkout.js?1516873044448" type='text/javascript'></script>-->

	<script type="text/javascript">
		$(document).ajaxStart(function() {
			NProgress.start();
		});
		$(document).ajaxComplete(function() {
			NProgress.done();
		});

		context = {}

		$(function() {
			Twine.reset(context).bind().refresh();
		});

		$(document).ready(function() {
			setTimeout(function() {

			}, 50);

		});
	</script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'https://www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-35985126-1', 'auto');
		ga('send', 'pageview');
	</script>
</body>
</html>