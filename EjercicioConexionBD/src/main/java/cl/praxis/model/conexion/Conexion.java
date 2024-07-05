package cl.praxis.model.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	
	private static Connection con = null;

	private String driver = "org.postgresql.Driver" ;
	private String url = "jdbc:postgresql://localhost:5433/dvdrental";
	private String user = "postgres";
	private String pass = "admin";
	
	public Conexion() {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, pass);
			boolean isValid = con.isValid(50000);
			System.out.println(isValid ? "Tests ok BD Postgres":"Test no ok BD Postgre");			
		}catch (ClassNotFoundException | SQLException ex ) {
			System.out.println("Error al Conectar con la BD : " + ex.getMessage());
		}
	}
	
	public static Connection getConn() {
		if (con == null) {
			new Conexion();
		}
		return con;
	}
	
	
	

}
