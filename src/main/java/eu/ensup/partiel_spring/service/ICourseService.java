package eu.ensup.partiel_spring.service;

import java.util.List;

import eu.ensup.partiel_spring.entities.Course;

public interface ICourseService {

	List<Course> getAllCourses();

	Course getCourseById(String theme);

	void createCourse(Course Course);

	void updateCourse(Course Course);

}