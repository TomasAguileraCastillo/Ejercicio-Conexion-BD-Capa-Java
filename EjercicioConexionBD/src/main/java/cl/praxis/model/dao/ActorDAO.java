package cl.praxis.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cl.praxis.model.conexion.Conexion;
import cl.praxis.model.dto.Actor;

public class ActorDAO  {
	
	
	
	
	public void crear( Actor a) {
	//Implementacion logica de creacion de registro
		
		String sql = "insert into actor (first_name, last_name) values ('" + a.getFirstname() + "', '" + a.getLastname() + "')";

		System.out.println(sql);
		
		
		try {
			Connection c = Conexion.getConn();
			Statement s = c.createStatement();
			s.execute(sql);
		}  catch (SQLException e) {
			System.out.println("ERROR en método create()");
			e.printStackTrace();
		}
		
	}
	public Actor read(int id) {
		//Implementacion logica de lectiura de un registro
		return null;
		
	}
	public List<Actor> read(){
		
		List<Actor> actores = new ArrayList<Actor>();
		try {
			Connection conect = Conexion.getConn();
			Statement s = conect.createStatement();
			//Query a la BD
			String qSql = "select actor_id, first_name, last_name from actor";
			
			//ejecucion de Query
			ResultSet rs = s.executeQuery(qSql);
			
			//Ciclo para recorrer los registros  
			while (rs.next()) {
				
				//creacion de objeto nuevo
			/*	Actor a = new Actor();
				//asigna los resultados
				a.setId(rs.getInt("actor_id"));
				a.setFirstname(rs.getString("first_name"));
				a.setLastname(rs.getString("last_name"));
				
				actores.add(a);			
				*/
				
			actores.add(new Actor(rs.getInt("actor_id"), rs.getString("first_name"), rs.getString("last_name")));
			}			
		} catch ( SQLException ex){
			System.out.println("Error en metodo Read()");
			ex.printStackTrace();
		}
			
		return actores;
		
	}

	public void update(Actor a) {
		//Implementacion logica de actualizacion de registro
		
	}
	
	public void delete(int a) {
		//Implementacion logica de borrado de registro
		
		
	}
	 
	
	
	
	
	
	

}
