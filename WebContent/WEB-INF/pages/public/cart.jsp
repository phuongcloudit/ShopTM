<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
			<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<ul>				
				<li class="home"> <a href="https://quavatonline.com/" title="Trang chủ">Trang chủ</a><span>—›</span></li>				
				
				<li><strong>Giỏ hàng</strong></li>
				
			</ul>
		</div>
	</div>
</div>
			
			<section class="main-container col1-layout">
	<div class="main container">
		<div class="col-main">
			<div class="cart">
				<div class="page-title">
					<h2>Giỏ hàng</h2>
				</div>
				
				<form action="https://quavatonline.com/cart" method="post" novalidate="">
					<div class="table-responsive">
						<fieldset>
							<table class="data-table cart-table" id="shopping-cart-table">
								<colgroup>
									<col>
									<col>
									<col>
									<col>
									<col>
									<col>
									<col>
								</colgroup>
								<thead>
									<tr class="first last">
										<th rowspan="1">&nbsp;</th>
										<th rowspan="1"><span class="nobr">Tên sản phẩm</span></th>
										<th colspan="1" class="a-center"><span class="nobr">Giá bán lẻ</span></th>
										<th class="a-center" rowspan="1">Số lượng</th>
										<th colspan="1" class="a-center">Tạm tính</th>

										<th rowspan="1">&nbsp;</th>
									</tr>
								</thead>

								<tbody>

									<c:forEach items="${listCart }" var="cart">
									<tr>
										<td class="image"><a class="product-image" title="bánh gối" href=""><img width="75" alt="bánh gối" src="${pageContext.request.contextPath }/files/${cart.image}"></a></td>
										<td><h2 class="product-name"> <a href="https://quavatonline.com/banh-goi">${cart.name }</a> </h2>
											<span class="variant-title" style="display: none">Default Title</span>
										</td>
										<td class="a-right"><span class="cart-price"> <span class="price">${cart.price }₫</span> </span></td>
										<td><input type="number" maxlength="12" min="0" class="input-text qty" title="Số lượng" size="4" value="${cart.quantity }" name="quantity" id="updates_5993821"></td>
										<td><span class="cart-price"> <span class="price">₫</span> </span></td>

										<td>                     
											<a class="button remove-item" title="Xóa" href="https://quavatonline.com/cart/change?line=1&amp;quantity=0" data-id="5993821"><span><span>Xóa</span></span></a>
											
										</td>
									</tr>
									
								</c:forEach>	

								</tbody>
								<tfoot>
									<tr class="first last">
										<td class="a-right last" colspan="7">
										<a class="button btn-continue" href="${pageContext.request.contextPath }/checkout">Tiếp tục mua hàng</a>
										
											<a onclick="updatecard(${product.id})" href="javascript:void(0)" class="btn-update button">Cập nhật số lượng</a>
											<script>
															function  updatecard(id) {
																$.ajax({
																	url: '${pageContext.request.contextPath }/cart/update',
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

										</td>
									</tr>
								</tfoot>
							</table>
						</fieldset>
					</div>
				</form>
				
				<div class="cart-collaterals row">        
					  
					<div class="totals col-sm-4 col-md-offset-8">
						<h3>Tổng cộng</h3>
						<div class="inner">
							<table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
								<colgroup>
									<col>
									<col>
								</colgroup>
								<tfoot>
									<tr>
										<td colspan="1" class="a-left"><strong>Tổng tiền</strong></td>
										<td class="a-right"><strong><span class="price">${sumTotal }₫</span></strong></td>
									</tr>
								</tfoot>
							</table>
							<ul class="checkout">
								<li>
								<a  href="${pageContext.request.contextPath }/checkout" ><button class="button btn-proceed-checkout" title="Tiến hành thanh toán" type="button" onclick="window.location.href=&#39;/checkout&#39;"><span>Tiến hành thanh toán</span></button></a>
									
								</li>              
							</ul>
						</div>
						<!--inner--> 

					</div>
					
				</div>
			</div>
		</div>
	</div>
</section>