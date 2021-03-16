package metier.entities;

public class Order {

	private int id_order;
	private int id_user;
	private int id_p;
	
	public int getId_order() {
		return id_order;
	}
	public void setId_order(int id_order) {
		this.id_order = id_order;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public int getId_p() {
		return id_p;
	}
	public void setId_p(int id_p) {
		this.id_p = id_p;
	}
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(int id_order, int id_user, int id_p) {
		super();
		this.id_order = id_order;
		this.id_user = id_user;
		this.id_p = id_p;
	}

	
}