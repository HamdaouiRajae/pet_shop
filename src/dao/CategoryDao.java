package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.entities.Category;

public class CategoryDao {
public List<Category>  getCategorys() {
		
		List<Category> categories = new ArrayList<Category>();

		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM category_tab_p");
			ResultSet rs = ps.executeQuery();		
			while(rs.next()) {
					Category category = new Category();
					category.setCategory_id_p(rs.getInt("category_id_p"));
					category.setCategory_name_p(rs.getString("category_name_p"));				
					categories.add(category);						
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return categories;
	}	

}
