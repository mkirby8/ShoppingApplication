package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Product;

public class ProductDAO {
	public static Product viewProduct(int id) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Product product = new Product();
		
		String jdbcURL = "jdbc:mysql://htiz97hf42xltwv3:sps64uspk6muhrrl@en1ehf30yom7txe7.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/io64wq7jxkqkvcbo";
		String dbUser = "htiz97hf42xltwv3";
		String dbPassword = "sps64uspk6muhrrl";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			
			String sql = "SELECT * FROM io64wq7jxkqkvcbo.products WHERE productid = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			rs = ps.executeQuery();
			if (rs.next()) {
				String name = rs.getString("productname");
				String size = rs.getString("size");
				String category = rs.getString("category");
				double price = rs.getDouble("price");
				String description = rs.getString("description");
				int quantity = rs.getInt("quantity");
				String photo = rs.getString("photo");
				
				product.setProductName(name);
				product.setSize(size);
				product.setCategory(category);
				product.setPrice(price);
				product.setDescription(description);
				product.setQuantity(quantity);
				product.setPhoto(photo);
			}
	        conn.close();
	        ps.close();
	        rs.close(); 
		}
		
		catch (Exception e) {
			System.out.println(e);
		}
			
			
		return product;
	}
	
	public static Product findProduct(String name, String size) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Product product = new Product();
		
		String jdbcURL = "jdbc:mysql://htiz97hf42xltwv3:sps64uspk6muhrrl@en1ehf30yom7txe7.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/io64wq7jxkqkvcbo";
		String dbUser = "htiz97hf42xltwv3";
		String dbPassword = "sps64uspk6muhrrl";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			
			String sql = "SELECT * FROM io64wq7jxkqkvcbo.products WHERE productname = ? AND size = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, size);
			
			rs = ps.executeQuery();
			if (rs.next()) {
				int pid = rs.getInt("productid");
				String pname = rs.getString("productname");
				String psize = rs.getString("size");
				String category = rs.getString("category");
				double price = rs.getDouble("price");
				String description = rs.getString("description");
				int quantity = rs.getInt("quantity");
				String photo = rs.getString("photo");
				
				product.setProductID(pid);
				product.setProductName(pname);
				product.setSize(psize);
				product.setCategory(category);
				product.setPrice(price);
				product.setDescription(description);
				product.setQuantity(quantity);
				product.setPhoto(photo);
			}
	        conn.close();
	        ps.close();
	        rs.close(); 
		}
		
		catch (Exception e) {
			System.out.println(e);
		}
		return product;
	}
}
