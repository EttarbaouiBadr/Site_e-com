package badr;

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
@WebServlet("/ajouter")
public class ajouter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String cne =request.getParameter("cne");
			String nom =request.getParameter("nom");
			String prenom =request.getParameter("prenom");
			
			
			String url =  "jdbc:mysql://localhost/etudiant";
			String user ="root";
			String Pwd = "badr";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,user,Pwd);
			//	
				PreparedStatement pst =con.prepareStatement("INSERT INTO etudiant(CNE,NOM,PRENOM) VALUES(?,?,?)");
				pst.setString(1,cne);
				pst.setString(2, nom);
				pst.setString(3, prenom);
				
				
				 pst.executeUpdate();
				response.sendRedirect("index.jsp");
				pst.close();
				
				//}
				con.close();
			}catch(Exception e) {
				System.out.println(e);
			}
			
		
		
	}

}	
