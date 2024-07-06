package cl.praxis.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.praxis.model.dto.Actor;
import cl.praxis.model.dao.*;


@WebServlet("/actorDetails")
public class ActorDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ActorDetailsController() {
        super();
    }

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String iD = request.getParameter("id");
		String firstName = request.getParameter("nombre");
		String lastName = request.getParameter("apellido");
		
		Actor a = null;
		
		ActorDAO aDAO = new ActorDAO();
 		
		if (!iD.isEmpty()) {
			
			
			
			System.out.println("registro vacio");
			int id = Integer.parseInt(iD);
			
			a = new Actor(id, firstName, lastName);
			aDAO.update(a);
		} else {
			System.out.println("registro no vacio");
			a = new Actor();
			a.setFirstname(firstName);
			a.setLastname(lastName);
			
			aDAO.crear(a);
		}
	
		response.sendRedirect(request.getContextPath() + "/Actor");
		
	}

}
