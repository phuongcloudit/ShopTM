package model.bean;

import java.sql.Timestamp;

public class Order {
	private int id;
	private String fullname;
	private int id_order_status;
	private String status;
	private String address;
	private String email;
	private String phone;
	private Timestamp create_at;
	private int sumPrice;
	private String pay;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public int getId_order_status() {
		return id_order_status;
	}
	public void setId_order_status(int id_order_status) {
		this.id_order_status = id_order_status;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Timestamp getCreate_at() {
		return create_at;
	}
	public void setCreate_at(Timestamp create_at) {
		this.create_at = create_at;
	}
	public int getSumPrice() {
		return sumPrice;
	}
	public void setSumPrice(int sumPrice) {
		this.sumPrice = sumPrice;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public Order(String fullname, String address, String email, String phone) {
		super();
		this.fullname = fullname;
		this.address = address;
		this.email = email;
		this.phone = phone;
	}
	public Order() {
		super();
	}
	
	
}
