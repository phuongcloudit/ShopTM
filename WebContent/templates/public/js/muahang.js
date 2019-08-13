

function  faddCart(id) {
	$.ajax({
		url: '${pageContext.request.contextPath }/cart',
		type: 'POSR',
		cache: false,
		data: {
				//Dữ liệu gửi đi
				pid : id,
				},
				success: function(data){
			// Xử lý thành công
			$('#cart-box').html(data);
			alert('OK');
		},
		error: function (){
		// Xử lý nếu có lỗi
		alert('Loi3');
		}
	});
}