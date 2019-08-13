package model.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import model.bean.User;

@Repository
public class UserDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<User> getItems(){
		String sql = "SELECT * FROM users ORDER BY id DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class));
	}
	public User getItem(String username){
		String sql = "SELECT * FROM users WHERE username = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] {username},new BeanPropertyRowMapper<User>(User.class));
	}

	public int addItem(User user,String password) {
		String sql = "INSERT INTO users(fullname,email,password,address,phone, role_id) VALUES(?,?,?,?,?,3)";
		return jdbcTemplate.update(sql, new Object[] {user.getFullname(), user.getEmail(), password, user.getAddress(), user.getPhone()});
	}
// truyền username vào lấy full naem = getItem sử dụng session
	public int delItem(int id) {
		String sql = "DELETE FROM users WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] {id});
	}
	public User getItem(int id) {
		String sql = "SELECT * FROM users WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<User>(User.class));
	}
	
	public int editItem(String fullname, String email, String password,String address, String phone,int id) {
		String sql ="UPDATE users SET fullname = ?, email = ?, password = ?, address = ?, phone = ? WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { fullname, email, password,address, phone, id});
	}
}
