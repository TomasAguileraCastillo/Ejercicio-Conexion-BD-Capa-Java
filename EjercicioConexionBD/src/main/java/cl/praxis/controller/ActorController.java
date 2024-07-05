package cl.praxis.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.praxis.model.dao.ActorDAO;
import cl.praxis.model.dto.Actor;

 
@WebServlet("/Actor")
public class ActorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ActorController() {
        super();
     }

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//comprobando si funciona 
		
 		ActorDAO aDAO = new ActorDAO();
 		//trae la info desde la BD
 		List<Actor> actores = aDAO.read();
 		
 		
 		//forma1 		
 		//actores.stream().forEach(System.out::println);
 		
 		//forma2
 		//actores.forEach( a -> { 
 			//					System.out.println(a); 
 				//				} );
 		//forma3
 		//System.out.println(actores.get(0).toString());
 			
 		
 		request.setAttribute("actores", actores);
 		
 		getServletContext().getRequestDispatcher("/views/actors.jsp").forward(request, response);
 		
 		
 		
 		
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		doGet(request, response);
	}

}
