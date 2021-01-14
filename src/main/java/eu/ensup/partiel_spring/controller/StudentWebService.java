package eu.ensup.partiel_spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import eu.ensup.partiel_spring.entities.Student;
import eu.ensup.partiel_spring.service.IStudentService;

@RestController
@CrossOrigin
@RequestMapping("/student")
public class StudentWebService {
	
	@Autowired
	private IStudentService studentService;
	
	
	public StudentWebService(IStudentService studentService) {
		this.studentService = studentService;
	}

	@GetMapping("/getAll")
	public List<Student> getAllStudent(){
		return studentService.getAllStudents();
	}
	
	@GetMapping("/detail/{id}")
	public Student getStudentById(@PathVariable(value = "id") Long id){
		return studentService.getStudentById(id);
	}
	
	@PostMapping("/create")
	public void createStudent(@Validated @RequestBody Student student) {
		studentService.createStudent(student);
	}
	
	@PutMapping("/update/{id}")
	public void updateStudent(@PathVariable (value = "id") Long id, @RequestBody Student student) {
		
		Student studentFound = studentService.getStudentById(id);
		studentFound.setId(student.getId());
		studentService.updateStudent(studentFound);
	}
	
	

}
