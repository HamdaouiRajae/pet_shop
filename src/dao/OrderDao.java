package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import metier.entities.Order;

public class OrderDao {
	public List<Order>  getOrders() {
		List<Order> orders = new ArrayList<Order>();

		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM `order`");
			ResultSet rs = ps.executeQuery();
		

		
			while(rs.next()) {
				Order order = new Order();
				order.setId_user(rs.getInt("id_user"));
				order.setId_p(rs.getInt("id_p"));
				order.setId_order(rs.getInt("id_order"));
				
					orders.add(order);	
					
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return orders;
	}
	
	
	public void insert(int id_user,int id_p) {
		Connection connection = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement("INSERT INTO `order` ( `id_user`, `id_p`) VALUES (?,?)");
			
			ps.setInt(1, id_user);
			ps.setInt(2, id_p);
			ps.executeUpdate();
			System.out.println("insert");
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}