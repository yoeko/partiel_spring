package eu.ensup.partiel_spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.context.annotation.Bean;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class PartielSpringApplication {

	public static void main(String[] args) {
		SpringApplication.run(PartielSpringApplication.class, args);
	}
	
//	@Bean 
//	public BCryptPasswordEncoder bCryptPasswordEncoder() {
//	    return new BCryptPasswordEncoder(); 
//	}

}
