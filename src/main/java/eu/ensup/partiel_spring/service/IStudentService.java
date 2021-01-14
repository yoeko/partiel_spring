package eu.ensup.partiel_spring.service;

import java.util.List;

import eu.ensup.partiel_spring.entities.Student;

public interface IStudentService {

	List<Student> getAllStudents();

	Student getStudentById(Long id);

	void createStudent(Student student);

	void updateStudent(Student student);

}