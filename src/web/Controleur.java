package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CategoryDao;
import dao.ContactDao;
import dao.OrderDao;
import dao.PetDao;
import dao.UserDaoImpl;
import metier.entities.Category;
import metier.entities.Order;
import metier.entities.Pet;
import metier.entities.User;

//@WebServlet("/Controleur")
public class Controleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controleur() {
        super();
    }
    private UserDaoImpl metierUser;
    private PetDao metierPet;
    private CategoryDao metierCat;
    private OrderDao metierOrder;
    
    @Override
	public void init() throws ServletException{
    	metierUser = new UserDaoImpl();
    	metierPet =new PetDao();
    	metierCat =new CategoryDao();
    	metierOrder = new OrderDao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = request.getServletPath();
		
		List<Category> categories = metierCat.getCategorys();		
		request.setAttribute("modelCategorys",categories);
		
		List<Pet> pets = metierPet.getPets();	
		request.setAttribute("modelPets",pets);
		
		HttpSession session = request.getSession();	
		
		if(path.equals("/index.do")) {
			
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		

		if(path.equals("/about.do")) {
			request.getRequestDispatcher("about.jsp").forward(request, response);
		}
		
		
		if(path.equals("/register.do")) {
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
		
		
		else if(path.equals("/reg.do")&&(request.getMethod().equals("POST"))) {
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String company = request.getParameter("company");
			String address = request.getParameter("address");
			String checkbox =request.getParameter("terms");
			String msg ="";
			if(!username.trim().isEmpty() && !password.trim().isEmpty() && !email.trim().isEmpty() && !company.trim().isEmpty() && !address.trim().isEmpty() && !phone.trim().isEmpty() && checkbox!=null) {
			User I = metierUser.register(new User( username,  password,  email,  phone,  company, address));
			
			int id = metierUser.login(username, password);
			session.setAttribute("userid", id);
			request.getRequestDispatcher("home.jsp").forward(request, response);
			}else {
				
				if(checkbox==null) {
					if(!username.trim().isEmpty() && !password.trim().isEmpty() && !email.trim().isEmpty() && !company.trim().isEmpty() && !address.trim().isEmpty() && !phone.trim().isEmpty()) {
						msg="<h5 style='color:red;'>you must agree to the conditions !</h5>";
					}else {
						msg="<h5 style='color:red;'>you must agree to the conditions !</h5><h5 style='color:red;'>you must fill all inputs !</h5>";
					}
				}else {
					msg="<h5 style='color:red;'>you must fill all inputs !</h5>";
				}
					request.setAttribute("message", msg);
					this.getServletContext().getRequestDispatcher("/register.jsp").forward(request,response);
	}
				
		}

		else if(path.equals("/myaccount.do")) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
else if(path.equals("/login.do")&&(request.getMethod().equals("POST"))) {
			
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
			String msg="";
			
			if(!username.trim().isEmpty() && !password.trim().isEmpty()) {
			int id =metierUser.login(username, password);
			if( id==-1) {
				request.getRequestDispatcher("myaccount.do").forward(request, response);
				msg="<h4 style='color:red;'>interouvable user !try again</h4>";
			}
			else {
				
									
				session.setAttribute("userid", id);
				request.getRequestDispatcher("home.jsp").forward(request, response);
				
				
				
			}
			}else {if(!username.trim().isEmpty() && password.trim().isEmpty()){
				msg ="<h5 style='color:red;'>you must enter your password !</h5>";
				
			}else if(username.trim().isEmpty() && !password.trim().isEmpty()) {
				msg ="<h5 style='color:red;'>you must enter your username !</h5>";
			}else {
				msg ="<h5 style='color:red;'>you must fill all inputs !</h5>";
			}
			request.setAttribute("message", msg);
			this.getServletContext().getRequestDispatcher("/myaccount.do").forward(request,response);
			}
		}
		
		
		else if(path.equals("/specials.do")) {
				request.getRequestDispatcher("specials.jsp").forward(request, response);
			}
		
		else if(path.equals("/pets.do")) {
					
				request.getRequestDispatcher("pets.jsp").forward(request, response);
			}
		if(path.equals("/order.do")) {
			int userid = Integer.parseInt(request.getParameter("userid")) ;
			int pet_id = Integer.parseInt(request.getParameter("pet_id")) ;
		
			metierOrder.insert(userid,pet_id);
		
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		
		
		if(path.equals("/cart.do")) {
			double c= 0;
			List<Order> orders = metierOrder.getOrders();		
			List<Pet> petOrder= new ArrayList<Pet>();
			int userid = Integer.parseInt(request.getParameter("userid")) ;
			for(Order o :orders) {
				if(o.getId_user()==userid) {
					for(Pet p :pets) {
						if(p.getId_p()==o.getId_order()) {
							petOrder.add(p);
							c+=p.getPrice();
							
						}
					}

				}
			}
			String formatted = String.format("%.2f", c);
			request.setAttribute("total",formatted);
			request.setAttribute("pet_order",petOrder);
			request.getRequestDispatcher("cart.jsp").forward(request, response);
			
		}
		
		if(path.equals("/contact.do")) {
			
			ContatctModel c=new ContatctModel();
			ContactDao cd=new ContactDao();
			
			String nom=request.getParameter("name");
			String email=request.getParameter("email");
			String phone=request.getParameter("phone");
			String company=request.getParameter("company");
			String message=request.getParameter("message");
			
			c.setName(nom);
			c.setEmail(email);
			c.setPhone(phone);
			c.setCompany(company);
			c.setMessage(message);
			
			cd.enregistrerContact(c);
			
					 RequestDispatcher rd=request.getRequestDispatcher("contact.jsp");
					 
				        rd.forward(request, response);  
				        
				    }  
				    else{  
				    	
				      
				        RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
				        rd.include(request, response); 
				        } 
		
		if(path.equals("/logout.do")) {
			
				session.invalidate();
				request.getRequestDispatcher("home.jsp").forward(request, response);
			}
		
		if(path.contains("/details.do")) {
			
				int id_p = Integer.parseInt(request.getParameter("id")) ;
				for(Pet p :pets) {
					if(p.getId_p() == id_p) {
						request.setAttribute("pet_selected",p);
					}
				}
				
				request.getRequestDispatcher("detail.jsp").forward(request, response);
		}
		if(path.equals("/achat.do")) {
			List<User> users = metierUser.getUsers();
			int id_user = Integer.parseInt(request.getParameter("id1")) ;
			
			for(User u :users)
			{
				if(u.getUser_id() == id_user) {
					request.setAttribute("user_s",u);
				}
				
			}
			int id_p = Integer.parseInt(request.getParameter("id2")) ;
			for(Pet p :pets) {
				if(p.getId_p() == id_p) {
					request.setAttribute("pet_s",p);
				}
			}
			request.getRequestDispatcher("achat.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
