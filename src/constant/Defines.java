package constant;

public class Defines {
	// định nghĩa các thông số cho ứng dụng web
	private String urlPublic = "/ShopTM/templates/public";
	private String urlAdmin = "/ShopTM/templates/admin";
	public static final String SUCCESS = "Xử lí thành công!";
	public static final String sendSUCCESS = "Đã gửi đi!";
	public static final String ERROR = "Xử lí thất bại!";
	public static final String sendERROR = "Gửi lỗi, vui lòng gửi lại!";
	public static final int ROW_COUNT = 3;
	public static final String DIR_UPLOAD = "files";
	public String getUrlPublic() {
		return urlPublic;
	}
	public void setUrlPublic(String urlPublic) {
		this.urlPublic = urlPublic;
	}
	public String getUrlAdmin() {
		return urlAdmin;
	}
	public void setUrlAdmin(String urlAdmin) {
		this.urlAdmin = urlAdmin;
	}
	
}
