<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<ul>
				<li class="home"><a href="https://quavatonline.com/"
					title="Trang chủ">Trang chủ</a><span>—›</span></li>

				<li><strong>Đăng ký tài khoản</strong></li>

			</ul>
		</div>
	</div>
</div>


<section class="main-container col1-layout">
	<div class="main container">
		<div class="account-login">
			<div class="page-title">
				<h2>Tạo tài khoản</h2>
			</div>
			<c:if test="${not empty msg }">
		<div class="alert alert-success">
			<strong>${msg }</strong>
		</div>
	</c:if>
			<fieldset class="col2-set">
				<legend>Tạo tài khoản</legend>
				<div class="col-1 new-users">
					<strong>Khách hàng mới</strong>
					<div class="content">
						<p>Bằng cách tạo một tài khoản với cửa hàng của chúng tôi ,
							bạn sẽ có thể thực hiện những quy trình mua hàng nhanh hơn , lưu
							trữ nhiều địa chỉ gửi hàng , xem và theo dõi đơn đặt hàng của bạn
							trong tài khoản của bạn và nhiều hơn nữa .</p>
						<form accept-charset="UTF-8"
							action=""
							id="customer_register" method="post">
							<input name="FormType" type="hidden" value="customer_register">
							<input name="utf8" type="hidden" value="true">
							<h4>Thông tin cá nhân</h4>

							<div class="form-group">
								<label for="last_name">Họ tên<span class="required">*</span></label>
								<input
									style="border-radius: 0px; background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABHklEQVQ4EaVTO26DQBD1ohQWaS2lg9JybZ+AK7hNwx2oIoVf4UPQ0Lj1FdKktevIpel8AKNUkDcWMxpgSaIEaTVv3sx7uztiTdu2s/98DywOw3Dued4Who/M2aIx5lZV1aEsy0+qiwHELyi+Ytl0PQ69SxAxkWIA4RMRTdNsKE59juMcuZd6xIAFeZ6fGCdJ8kY4y7KAuTRNGd7jyEBXsdOPE3a0QGPsniOnnYMO67LgSQN9T41F2QGrQRRFCwyzoIF2qyBuKKbcOgPXdVeY9rMWgNsjf9ccYesJhk3f5dYT1HX9gR0LLQR30TnjkUEcx2uIuS4RnI+aj6sJR0AM8AaumPaM/rRehyWhXqbFAA9kh3/8/NvHxAYGAsZ/il8IalkCLBfNVAAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;"
									type="text" name="fullname" id="last_name" class="form-control"
									placeholder="Họ, tên đầy đủ">
							</div>
							<div class="form-group">
								<label for="email">Email<span class="required">*</span></label>
								<input style="border-radius: 0px;" type="email"
									class="form-control input-text required-entry" name="email" id="email"
									placeholder="Email" required>
							</div>
							<div class="form-group">
								<label for="customer_password">Mật khẩu<span
									class="required">*</span></label> <input
									style="border-radius: 0px; background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACIUlEQVQ4EX2TOYhTURSG87IMihDsjGghBhFBmHFDHLWwSqcikk4RRKJgk0KL7C8bMpWpZtIqNkEUl1ZCgs0wOo0SxiLMDApWlgOPrH7/5b2QkYwX7jvn/uc//zl3edZ4PPbNGvF4fC4ajR5VrNvt/mo0Gr1ZPOtfgWw2e9Lv9+chX7cs64CS4Oxg3o9GI7tUKv0Q5o1dAiTfCgQCLwnOkfQOu+oSLyJ2A783HA7vIPLGxX0TgVwud4HKn0nc7Pf7N6vV6oZHkkX8FPG3uMfgXC0Wi2vCg/poUKGGcagQI3k7k8mcp5slcGswGDwpl8tfwGJg3xB6Dvey8vz6oH4C3iXcFYjbwiDeo1KafafkC3NjK7iL5ESFGQEUF7Sg+ifZdDp9GnMF/KGmfBdT2HCwZ7TwtrBPC7rQaav6Iv48rqZwg+F+p8hOMBj0IbxfMdMBrW5pAVGV/ztINByENkU0t5BIJEKRSOQ3Aj+Z57iFs1R5NK3EQS6HQqF1zmQdzpFWq3W42WwOTAf1er1PF2USFlC+qxMvFAr3HcexWX+QX6lUvsKpkTyPSEXJkw6MQ4S38Ljdbi8rmM/nY+CvgNcQqdH6U/xrYK9t244jZv6ByUOSiDdIfgBZ12U6dHEHu9TpdIr8F0OP692CtzaW/a6y3y0Wx5kbFHvGuXzkgf0xhKnPzA4UTyaTB8Ph8AvcHi3fnsrZ7Wore02YViqVOrRXXPhfqP8j6MYlawoAAAAASUVORK5CYII=&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%;"
									type="password" class="form-control" name="password"
									id="creat_password" placeholder="Password">
							</div>
							
							<div class="form-group">
								<label for="first_name">Địa chỉ</label>
								<input style="border-radius: 0px;" type="text"
									class="form-control" name="address" id="first_name">
							</div>
							<div class="form-group">
								<label for="first_name">Số điện thoại</label>
								<input style="border-radius: 0px;" type="text"
									class="form-control" name="phone" id="first_name">
							</div>
							<div class="form-group">
								<input style="border-radius: 0px; border: none; background: #c22b3b; color: #fff;"
									class="btn btn-default button-red" name="address" type="submit"
									value="Đăng ký">
							</div>
							<p class="required">* Yêu cầu bắt buộc</p>
						</form>
					</div>
				</div>
				<div class="col-2 registered-users">
					<strong>Đăng nhập</strong>
					<div class="content">
						<p>Nếu bạn đã có tài khoản , xin vui lòng đăng nhập</p>
						<form accept-charset="UTF-8"
							action="${pageContext.request.contextPath }/register"
							id="customer_login" method="post">
							<input name="FormType" type="hidden" value="customer_login">
							<input name="utf8" type="hidden" value="true">
							<ul class="form-list">
								<li><label for="email">Email <span class="required">*</span></label>
									<br> <input type="email" title="Email Address"
									class="input-text required-entry" id="email" name="email" autocomplete="off">
								</li>
								<li><label for="pass">Mật khẩu <span
										class="required">*</span></label> <br> 
										<input type="password"	title="Password" id="pass"class="input-text required-entry validate-password"
									name="password" >
								</li>
							</ul>
							<p class="required">* Yêu cầu bắt buộc</p>
							<div class="buttons-set">
								<input type="submit"
									class="button login" value="Đăng nhập">
									<span>Đăng nhập</span>
								</button>
								<a class="forgot forgot-word"
									href="https://quavatonline.com/account/register#recover"
									onclick="showRecoverPasswordForm();return false;"
									id="RecoverPassword">Quên mật khẩu?</a>
							</div>
						</form>
						<div id="recover_password" style="display: none;">
							<h3>Đặt lại mật khẩu</h3>
							<p id="intro note-reset">Chúng tôi sẽ gửi cho bạn một email
								để kích hoạt việc đặt lại mật khẩu.</p>

							<form accept-charset="UTF-8"
								action="https://quavatonline.com/account/recover"
								id="recover_customer_password" method="post">
								<input name="FormType" type="hidden"
									value="recover_customer_password"> <input name="utf8"
									type="hidden" value="true"> <label for="email">Email<span
									id="required">*</span></label> <input style="height: 34px;"
									type="email" class="input-control" value="" title="email"
									name="email" id="email">
								<p class="action-btn" style="margin-top: 15px;">
									<input type="submit" class="button stl_btn_reg" value="Gửi">
									hoặc <a href="https://quavatonline.com/account/register#"
										onclick="hideRecoverPasswordForm();return false;">Hủy</a>
								</p>
							</form>
						</div>
					</div>
				</div>
			</fieldset>
		</div>
		<br>
	</div>
</section>
<script>
	function showRecoverPasswordForm() {
		document.getElementById('recover_password').style.display = 'block';
		document.getElementById('customer_login').style.display = 'none';
	}

	function hideRecoverPasswordForm() {
		document.getElementById('recover_password').style.display = 'none';
		document.getElementById('customer_login').style.display = 'block';
	}

	// Allow deep linking to the recover password form
	if (window.location.hash == '#recover') {
		showRecoverPasswordForm()
	}

	// reset_success is only true when the reset form is
</script>