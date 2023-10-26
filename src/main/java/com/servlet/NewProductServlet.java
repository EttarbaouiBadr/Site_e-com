package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ajouter
 */
@WebServlet("/NewUserServlet")
public class NewProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//if (session.getAttribute("login")!=null){
			String name =request.getParameter("name");
			String category =request.getParameter("category");
			String price =request.getParameter("price");
			String image =request.getParameter("image");
			
			String url =  "jdbc:mysql://localhost/ecommerce_cart";
			String user ="root";
			String Pwd = "badr";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,user,Pwd);
			//	
				PreparedStatement pst =con.prepareStatement("INSERT INTO products(name,category,price,image) VALUES(?,?,?,?)");
				pst.setString(1, name);
				pst.setString(2, category);
				pst.setString(3, price);
				pst.setString(4, image);
				 pst.executeUpdate();
				response.sendRedirect("login.jsp");
				pst.close();
				
				//}
				con.close();
			}catch(Exception e) {
				System.out.println(e);
			}
			
		}//else response.sendRedirect("login.jsp");
		
	//}

}