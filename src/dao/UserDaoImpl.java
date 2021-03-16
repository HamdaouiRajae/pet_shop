package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.entities.Pet;
import metier.entities.User;

public class UserDaoImpl {
	public User register(User u) {
		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("INSERT INTO user_tab (username, password, email, phone, company, address) VALUES (?,?,?,?,?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPhone());
			ps.setString(5, u.getCompany());
			ps.setString(6, u.getAddress());
			ps.executeUpdate();
			PreparedStatement ps2 = connection.prepareStatement("SELECT MAX(id_user) AS MAX_ID FROM user_tab");
			ResultSet rs = ps2.executeQuery();
			if(rs.next()) {
				u.setUser_id(rs.getInt("MAX_ID"));
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}


	public int login(String user, String pass) {
		int id =-1;
		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT id_user AS MAX_ID FROM user_tab where username like ? and  password like ?");
			ps.setString(1, user);
			ps.setString(2, pass);
		
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				id=rs.getInt("MAX_ID");
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		return id;
	}
	
	public String select(int id) {
		String name="";
		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT  username FROM user_tab where id_user = ?");
			ps.setInt(1, id);
			
		
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				name=rs.getString("username");
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		return name;
	}
	public List<User>  getUsers() {
		List<User> users = new ArrayList<User>();

		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM user_tab");
			ResultSet rs = ps.executeQuery();
		
			while(rs.next()) {
					User user = new User();
					
					user.setUser_id(rs.getInt("id_user"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					user.setEmail(rs.getString("email"));
					user.setPhone(rs.getString("phone"));
					user.setCompany(rs.getString("company"));
					user.setAdrres(rs.getString("address"));
					users.add(user);	
					
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}


}
