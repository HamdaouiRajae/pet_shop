package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import web.ContatctModel;

public class ContactDao extends ContatctModel{
	
	
	
	public void enregistrerContact(ContatctModel cm) {
		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("INSERT INTO contact (nom,email,phone,company,message) VALUES (?,?,?,?,?)");
			ps.setString(1, cm.getName());
			ps.setString(2,cm.getEmail() );
			ps.setString(3, cm.getPhone());
			ps.setString(4, cm.getCompany());
			ps.setString(5, cm.getMessage());
			ps.executeUpdate();
		}catch(Exception e) {
			e.getMessage();}
	}
	
	
		
	
	

}
