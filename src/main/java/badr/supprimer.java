package badr;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class delete
 */
@WebServlet("/supprimer")
public class supprimer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
			String id =request.getParameter("id");
			
			
			String url =  "jdbc:mysql://localhost/etudiant";
			String user ="root";
			String Pwd = "badr";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,user,Pwd);
				PreparedStatement pst =con.prepareStatement("DELETE FROM etudiant WHERE id=?" );
				pst.setString(1, id);
				
				 pst.executeUpdate();
				response.sendRedirect("index.jsp");
				pst.close();
				con.close();
			}catch(Exception e) {
				System.out.println(e);
			}
			
		
		
	}

	

}
