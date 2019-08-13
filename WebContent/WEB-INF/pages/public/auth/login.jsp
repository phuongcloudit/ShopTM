<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<ul>
				<li class="home"><a href="https://quavatonline.com/"
					title="Trang chủ">Trang chủ</a><span>—›</span></li>

				<li><strong>Đăng nhập tài khoản</strong></li>

			</ul>
		</div>
	</div>
</div>

<section class="main-container col1-layout">
	<div class="main container">
		<div class="account-login">
			<div class="page-title">
				<h2>Đăng nhập / tạo tài khoản</h2>
			</div>
			<fieldset class="col2-set">
				<legend>Đăng nhập / tạo tài khoản</legend>
				<div class="col-1 new-users">
					<strong>Khách hàng mới</strong>
					<div class="content">
						<p>Bằng cách tạo một tài khoản với cửa hàng của chúng tôi ,
							bạn sẽ có thể thực hiện những quy trình mua hàng nhanh hơn , lưu
							trữ nhiều địa chỉ gửi hàng , xem và theo dõi đơn đặt hàng của bạn
							trong tài khoản của bạn và nhiều hơn nữa .</p>
						<div class="buttons-set">
						<a class="button create-account" create-account href="${pageContext.request.contextPath }/register">Tạo tài khoản</a>
							
						</div>
					</div>
				</div>
				<div class="col-2 registered-users">
					<strong>Đăng nhập</strong>
					<div class="content">
						<p>Nếu bạn đã có tài khoản , xin vui lòng đăng nhập</p>
						<form accept-charset="UTF-8" id="customer_login" method="post">
							<input name="FormType" type="hidden" value="customer_login">
							<input name="utf8" type="hidden" value="true">

							<ul class="form-list">
								<li><label for="email">Email <span class="required">*</span></label>
									<br> <input type="email" title="Email Address"
									class="input-text required-entry" id="email" value=""
									name="ababababababa" autocomplete="off"
									style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAAPhJREFUOBHlU70KgzAQPlMhEvoQTg6OPoOjT+JWOnRqkUKHgqWP4OQbOPokTk6OTkVULNSLVc62oJmbIdzd95NcuGjX2/3YVI/Ts+t0WLE2ut5xsQ0O+90F6UxFjAI8qNcEGONia08e6MNONYwCS7EQAizLmtGUDEzTBNd1fxsYhjEBnHPQNG3KKTYV34F8ec/zwHEciOMYyrIE3/ehKAqIoggo9inGXKmFXwbyBkmSQJqmUNe15IRhCG3byphitm1/eUzDM4qR0TTNjEixGdAnSi3keS5vSk2UDKqqgizLqB4YzvassiKhGtZ/jDMtLOnHz7TE+yf8BaDZXA509yeBAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%;">
								</li>
								<li><label for="pass">Mật khẩu <span
										class="required">*</span></label> <br> <input type="password"
									title="Password" id="pass"
									class="input-text required-entry validate-password"
									name="password" autocomplete="off"
									style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAAPhJREFUOBHlU70KgzAQPlMhEvoQTg6OPoOjT+JWOnRqkUKHgqWP4OQbOPokTk6OTkVULNSLVc62oJmbIdzd95NcuGjX2/3YVI/Ts+t0WLE2ut5xsQ0O+90F6UxFjAI8qNcEGONia08e6MNONYwCS7EQAizLmtGUDEzTBNd1fxsYhjEBnHPQNG3KKTYV34F8ec/zwHEciOMYyrIE3/ehKAqIoggo9inGXKmFXwbyBkmSQJqmUNe15IRhCG3byphitm1/eUzDM4qR0TTNjEixGdAnSi3keS5vSk2UDKqqgizLqB4YzvassiKhGtZ/jDMtLOnHz7TE+yf8BaDZXA509yeBAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%;">
								</li>
							</ul>
							<p class="required">* Yêu cầu bắt buộc</p>
							<div class="buttons-set">
								<input id="send2" name="send" type="submit"
									class="button login" value="Đăng nhập">
								<a class="forgot forgot-word"
									href="https://quavatonline.com/account/login?returnUrl=/checkout#recover"
									onclick="showRecoverPasswordForm();return false;"
									id="RecoverPassword">Quên mật khẩu?</a>
							</div>
							<input name="returnUrl" type="hidden" value="/checkout">
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
									hoặc <a
										href="https://quavatonline.com/account/login?returnUrl=/checkout#"
										onclick="hideRecoverPasswordForm();return false;">Hủy</a>
								</p>
								<input name="returnUrl" type="hidden" value="/checkout">
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
    document.getElementById('customer_login').style.display='none';
  }

  function hideRecoverPasswordForm() {
    document.getElementById('recover_password').style.display = 'none';
    document.getElementById('customer_login').style.display = 'block';
  }

  // Allow deep linking to the recover password form
  if (window.location.hash == '#recover') { showRecoverPasswordForm() }

  // reset_success is only true when the reset form is
  
</script>