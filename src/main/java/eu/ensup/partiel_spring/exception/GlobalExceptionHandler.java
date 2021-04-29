package eu.ensup.partiel_spring.exception;

import java.util.Date;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;


@ControllerAdvice
public class GlobalExceptionHandler {
	
	@ExceptionHandler(StudentNotFoundException.class )
	protected ResponseEntity<ErrorMessage> studentNotFoundException(StudentNotFoundException ex, WebRequest request) {
        ErrorMessage message = new ErrorMessage(
        		HttpStatus.NOT_FOUND.value(),
        		new Date(),
        		ex.getMessage(),
        		request.getDescription(false) );
		return new ResponseEntity<ErrorMessage>(message, HttpStatus.NOT_FOUND);
	}
	
	@ExceptionHandler(NullPointerException.class)
	public ResponseEntity<ErrorMessage> globalExceptionHandler(Exception ex, WebRequest request) {
		ErrorMessage message = new ErrorMessage(
				HttpStatus.INTERNAL_SERVER_ERROR.value(),
        		new Date(),
        		ex.getMessage(),
        		request.getDescription(false) );
		return new ResponseEntity<ErrorMessage>(message, HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	



}
