package model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import constant.Defines;
import model.bean.Product;

@Repository
public class ProductDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Product> getItems(int offset) {
		String sql = "SELECT p.id, name, description, p.cid, picture, price, quantity, cname FROM Product AS p INNER JOIN category AS c ON p.cid = c.id ORDER BY p.id DESC LIMIT ?,?";
		return jdbcTemplate.query(sql, new Object[] { offset, Defines.ROW_COUNT },
				new BeanPropertyRowMapper<Product>(Product.class));
	}

	public List<Product> getItems() {
		String sql = "SELECT p.id, name, description, p.cid, picture, price, quantity, cname FROM Product AS p INNER JOIN category AS c ON p.cid = c.id ORDER BY p.id DESC";
		return jdbcTemplate.query(sql, new Object[] { },
				new BeanPropertyRowMapper<Product>(Product.class));
	}
	public List<Product> getItems10() {
		String sql = "SELECT p.id, name, description, p.cid, picture, price, quantity, cname FROM Product AS p INNER JOIN category AS c ON p.cid = c.id ORDER BY p.id DESC LIMIT 9";
		return jdbcTemplate.query(sql, new Object[] { },
				new BeanPropertyRowMapper<Product>(Product.class));
	}
	public List<Product> getItemsbyID(int offset, int id) {
		String sql = "SELECT p.id, name, description, p.cid, picture, price, quantity, cname FROM Product AS p INNER JOIN category AS c ON p.cid = c.id WHERE c.id = ? ORDER BY p.id DESC LIMIT ?,?";
		return jdbcTemplate.query(sql, new Object[] { id, offset, Defines.ROW_COUNT },
				new BeanPropertyRowMapper<Product>(Product.class));
	}
	public List<Product> getItemsbyID(int id) {
		String sql = "SELECT id, name, description, p.cid, picture, price, quantity, cname FROM Product AS p INNER JOIN category ON p.cid = category.cid ORDER BY p.id DESC WHERE p.id = ?";
		return jdbcTemplate.query(sql, new Object[] {id },
				new BeanPropertyRowMapper<Product>(Product.class));
	}

	public int getCount() {
		String sql = "SELECT COUNT(*) AS countItem FROM Product INNER JOIN category ON Product.cid = category.id";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	/*public int getCounthot() {
		String sql = "SELECT COUNT(*) AS countItemhot FROM Products INNER JOIN categories ON Products.cid = categories.cid ORDER BY countItemhot";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}*/

	public int addItem(Product Product) {
		String sql = "INSERT INTO Product(name, description, cid, picture, price, quantity) VALUES(?,?,?,?,?,?)";
		return jdbcTemplate.update(sql, new Object[] { Product.getName(), Product.getDescription(), Product.getCid(),
				Product.getPicture(), Product.getPrice(), Product.getQuantity() });
	}

	public Product getItem(int id) {
		String sql = "SELECT p.id, name, cid, price, quantity, description, picture, cname FROM Product AS p INNER JOIN category as c ON p.cid = c.id WHERE p.id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Product>(Product.class));
		} catch (Exception e) {
			return null;
		}
	}

	public int delItem(int id) {
		String sql = "DELETE FROM Product WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { id });
	}

	public int editItem(Product Product, int id) {
		String sql = "UPDATE Product set name = ?, description = ?, cid = ?, picture = ?, quantity = ?, price = ? WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[] { Product.getName(), Product.getDescription(), Product.getCid(),
				Product.getPicture(), Product.getQuantity(), Product.getPrice(), id });
	}

	/*public int getCount(int id) {
		String sql = "SELECT COUNT(*) AS countItem FROM categories INNER JOIN Products ON categories.cid = Products.cid WHERE Products.cid = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { id }, Integer.class);
	}
*/
	/*public List<Product> getItemsHot() {
		String sql = "SELECT lid, lname, description, date_create, l.cid, picture, area, address, count_views, cname FROM Products AS l INNER JOIN categories ON l.cid = categories.cid ORDER BY count_views DESC LIMIT 5";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Product>(Product.class));
	}*/

	public List<Product> getItemslq(int cid, int id) {
		String sql = "SELECT id, name, description, cid, picture, price FROM Product AS p INNER JOIN category as c ON p.cid = c.cid WHERE c.cid = ? && p.id != ? ORDER BY p.id DESC LIMIT 4";
		return jdbcTemplate.query(sql, new Object[] { cid, id }, new BeanPropertyRowMapper<Product>(Product.class));
	}

	/*public List<Product> getItemsHot3Items() {
		String sql = "SELECT lid, lname, description, date_create, l.cid, picture, area, address, count_views, cname FROM Products AS l INNER JOIN categories ON l.cid = categories.cid ORDER BY count_views DESC LIMIT 3";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Product>(Product.class));
	}*/

	/*public List<Product> getItemsNew() {
		String sql = "SELECT lid, lname, description, date_create, l.cid, picture, area, address, count_views, cname FROM Products AS l INNER JOIN categories ON l.cid = categories.cid ORDER BY l.lid DESC LIMIT 5";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Product>(Product.class));
	}*/

	/*public List<Product> getItemsSearch(String s) {
		String sql = "SELECT lid, lname, description, date_create, l.cid, picture, area, address, count_views, cname FROM Products AS l INNER JOIN categories ON l.cid = categories.cid WHERE l.lname LIKE '%"
				+ s + "%' ORDER BY count_views DESC LIMIT 5";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Product>(Product.class));
	}*/
}
