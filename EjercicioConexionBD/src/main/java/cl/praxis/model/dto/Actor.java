package cl.praxis.model.dto;

public class Actor {
	//Atributos
	private int id;
	private String firstname;
	private String lastname;
	
	


	//Constructor Vacio
	public Actor() {
		super();
	}




	//Constructor Completo
	public Actor(int id, String firstname, String lastname) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
	}




	//Getters y Setters
	
	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getFirstname() {
		return firstname;
	}




	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}




	public String getLastname() {
		return lastname;
	}




	public void setLastname(String lastname) {
		this.lastname = lastname;
	}




	@Override
	public String toString() {
		return "Actor [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + "]";
	}

	
	
	
}
