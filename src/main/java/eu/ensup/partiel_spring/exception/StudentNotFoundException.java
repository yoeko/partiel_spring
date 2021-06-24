package eu.ensup.partiel_spring.exception;

public class StudentNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public StudentNotFoundException() {
		this("Impossible de trouver cet étudiant");
	}

	public StudentNotFoundException(String message) {
		super(message);
	}
	
	public StudentNotFoundException( String message, Throwable cause ) {
		super( message, cause);
	}

}
