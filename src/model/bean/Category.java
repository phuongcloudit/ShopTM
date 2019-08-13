package model.bean;

import javax.validation.constraints.Size;


public class Category {

	private int id;
//	@NotEmpty(message="Tên danh mục không được rỗng!")
	@Size(min=5, max=100)
	private String cname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	
	
}
