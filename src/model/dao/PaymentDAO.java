package model.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import model.bean.Payment;

@Repository
public class PaymentDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Payment> getItems(){
		String sql = "SELECT * FROM Payment ORDER BY id DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Payment>(Payment.class));
	}

	public int addItem(Payment pay) {
		String sql = "INSERT INTO Payment(name) VALUES(?)";
		return jdbcTemplate.update(sql, new Object[] {pay.getName()});
	}

	public int delItem(int id) {
		String sql = "DELETE FROM Payment WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] {id});
	}
	public Payment getItem(int id) {
		String sql = "SELECT * FROM Payment WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Payment>(Payment.class));
	}
	
	
	public int editItem(String name, int id) {
		String sql ="UPDATE Payment SET name = ? WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { name, id});
	}
}