package model.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import model.bean.Category;

@Repository
public class CategoryDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Category> getItems(){
		String sql = "SELECT * FROM category ORDER BY id DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Category>(Category.class));
	}

	public int addItem(Category cat) {
		String sql = "INSERT INTO category(cname) VALUES(?)";
		return jdbcTemplate.update(sql, new Object[] {cat.getCname()});
	}

	public int delItem(int id) {
		String sql = "DELETE FROM category WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] {id});
	}
	public Category getItem(int id) {
		String sql = "SELECT * FROM category WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Category>(Category.class));
	}
	public Category getItembylid(int id) {
		String sql = "SELECT * FROM category as c INNER JOIN lands as l ON c.id = l.id  WHERE l.lid = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Category>(Category.class));
	}
	
	
	public int editItem(String cname, int id) {
		String sql ="UPDATE category SET cname = ? WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { cname, id});
	}
	public List<Category> getItemsHot(){
		String sql = "SELECT * FROM category as c INNER JOIN lands as l ON  c.id = l.id ORDER BY id DESC";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Category>(Category.class));
	}
}
