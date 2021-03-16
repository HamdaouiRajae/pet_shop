package metier.entities;

public class Pet {
	int id_p;
	private String description_p;
	private int category_id_p;
	private String imgs_p;
	private String status_p;
	private double price;
	private String name_p;
	
	public Pet(String name_p, String description_p, int category_id_p, String imgs_p, String status_p,
			double price) {
		super();
		
		this.description_p = description_p;
		this.category_id_p = category_id_p;
		this.imgs_p = imgs_p;
		this.status_p = status_p;
		this.name_p = name_p;
		this.price = price;
	}
	public int getId_p() {
		return id_p;
	}
	public void setId_p(int id_p) {
		this.id_p = id_p;
	}
	public String getName_p() {
		return name_p;
	}
	public void setName_p(String name_p) {
		this.name_p = name_p;
	}
	
	public String getDescription_p() {
		return description_p;
	}
	public void setDescription_p(String description_p) {
		this.description_p = description_p;
	}
	public int getCategory_id_p() {
		return category_id_p;
	}
	public void setCategory_id_p(int category_id_p) {
		this.category_id_p = category_id_p;
	}
	public Pet() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getImgs_p() {
		return imgs_p;
	}
	public void setImgs_p(String imgs_p) {
		this.imgs_p = imgs_p;
	}
	public String getStatus_p() {
		return status_p;
	}
	public void setStatus_p(String status_p) {
		this.status_p = status_p;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

}
