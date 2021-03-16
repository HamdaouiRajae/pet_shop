package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import metier.entities.Pet;

public class PetDao {
	public List<Pet>  getPets() {
		List<Pet> pets = new ArrayList<Pet>();

		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM pet_tab");
			ResultSet rs = ps.executeQuery();
		

		
			while(rs.next()) {
					Pet pet = new Pet();
					
					pet.setId_p(rs.getInt("id_p"));
					pet.setDescription_p(rs.getString("description_p"));
					pet.setCategory_id_p(rs.getInt("category_id_p"));
					pet.setImgs_p(rs.getString("imgs_p"));
					pet.setStatus_p(rs.getString("status_p"));
					pet.setPrice(rs.getDouble("price"));
					pet.setName_p(rs.getString("name_p"));
					pets.add(pet);	
					
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pets;
	}
}
