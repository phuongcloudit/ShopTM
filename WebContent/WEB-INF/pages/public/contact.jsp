
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<ul>
				<li class="home"><a href="https://quavatonline.com/"
					title="Trang chủ">Trang chủ</a><span>—›</span></li>

				<li><strong>Liên hệ</strong></li>

			</ul>
		</div>
	</div>
</div>

<div class="banner_contact"></div>
<style>
.form-control {
	border-radius: 0px;
}
</style>
<div class="google-map">
	
</div>
<div class="container">
	<div class="row">
		<div class="col-md-4">
			<h4 style="margin-top: 20px;">Địa chỉ liên hệ</h4>
			<p
				style="font-size: 14px; font-weight: bold; color: #000; text-transform: uppercase; margin-bottom: 20px; margin-top: 20px;"></p>
			<ul style="list-style: none; margin: 0px; line-height: 20px;">

				<li><p style="color: #333">
						<span style="color: #f26522"
							class="glyphicon glyphicon-map-marker"></span> &nbsp; Nam Cao, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng
					</p></li>

				<li><p style="color: #333">

						<span style="color: #f26522" class="glyphicon glyphicon-earphone"></span>
						&nbsp; Hotline: 0985 441 031

					</p></li>
				<li><p style="color: #383838">

						<span style="color: #f26522" class="glyphicon glyphicon-envelope"></span>
						&nbsp;<span style="color: #f26522">
							dongphuong2102@gmail.com</span>

					</p></li>
			</ul>
		</div>
		<div class="col-md-8">
			<div class="form_blog_comment">
				<form accept-charset="UTF-8"
					action="https://quavatonline.com/contact" id="contact"
					method="post">
					<input name="FormType" type="hidden" value="contact"> <input
						name="utf8" type="hidden" value="true">
					<h4 style="text-transform: uppercase; margin-top: 20px;">Liên
						hệ với chúng tôi</h4>


					<div class="form-group">
						<label for="name">Tên*</label> <input placeholder="Tên" id="name"
							name="contact[Name]" type="text" value="" class="form-control">
					</div>
					<div class="form-group">
						<label>Email*</label> <input placeholder="Email" id="email"
							name="contact[email]" class="form-control" type="email" value="">
					</div>
					<div class="form-group">

						<div class="form-group">
							<label for="exampleInputEmail1">Ý kiến*</label>
							<textarea id="message" name="contact[Body]"
								style="height: 120px;" class="form-control" rows="7"></textarea>
						</div>
						<div class="form-group">
							<button style="border-radius: 0px; padding: 7px 30px;"
								type="submit" class="btn btn-default stl_btn_reg">Gửi</button>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	(jQuery)(document).ready(function($){  
		if($('#contact_map').length){
			$('#contact_map').gMap({
				zoom: 17,
								   scrollwheel: true,
								   maptype: 'ROADMAP',
								   markers:[
								   {
								   address: 'Số 39 Ngõ 178/1 phố Thái Hà - Đống Đa - Hà Nội',
								   html: '_address'
								   }
								   ]
								   });
		}
	});    
</script>
<style>
.google-map {
	width: 100%;
}

.google-map .map {
	width: 100%;
	height: 350px;
	background: #dedede
}
</style>