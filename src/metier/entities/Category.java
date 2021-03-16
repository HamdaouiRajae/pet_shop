package metier.entities;

public class Category {
	int category_id_p;
	String category_name_p;
	
	public Category(int pet_category_id, String pet_category_name) {
		super();
		this.category_id_p = category_id_p;
		this.category_name_p = category_name_p;
	}
	
	public int getCategory_id_p() {
		return category_id_p;
	}
	public void setCategory_id_p(int category_id_p) {
		this.category_id_p = category_id_p;
	}
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getCategory_name_p() {
		return category_name_p;
	}
	public void setCategory_name_p(String category_name_p) {
		this.category_name_p = category_name_p;
	}
	
}
