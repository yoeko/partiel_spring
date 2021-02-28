package eu.ensup.partiel_spring;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import eu.ensup.partiel_spring.entities.Course;
import eu.ensup.partiel_spring.entities.Student;
import eu.ensup.partiel_spring.repositories.CourseRepository;
import eu.ensup.partiel_spring.service.CourseServiceImpl;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@SpringBootTest
public class CourseServiceTest {
	
	//Create Mock
	@Mock
	CourseRepository mockedCourseRepo;
	
	//Inject a mock in the service class
	@InjectMocks
	private CourseServiceImpl courseService;
	
	
	@DisplayName("Test the get all courses method")
	@Test
	public void getAllCoursesTest() {
		//Create list of courses
		Course course1 = new Course("Histoire", 40);
		Course course2 = new Course("Maths", 30);
		List<Course> listCourse = new ArrayList<Course>();
		listCourse.add(course1);
		listCourse.add(course2);
		
		//Stubbing
		Mockito.when(mockedCourseRepo.findAll()).thenReturn(listCourse);
		
		//Call the method
	 	List<Course> listCourse2 = courseService.getAllCourses();
	 	
	 	//Test
	 	assertEquals(course1, listCourse2.get(0));
	 	assertEquals(course2, listCourse2.get(1));
	 	
	 	//Verify
	 	assertEquals(null, Mockito.verify(mockedCourseRepo).findAll() );
	}
	
	
	@DisplayName("Test the get get by Id method")
	@Test
	public void getByIdTest() {
		//Create Course
		Course returnCourse = new Course("Histoire", 20);		
		
		//Stubbing
		Mockito.when(mockedCourseRepo.findById("Histoire")).thenReturn(Optional.of(returnCourse));
		
		//Test
		CourseServiceImpl courseService = new CourseServiceImpl(mockedCourseRepo);
		Course actualCourse = courseService.getCourseById("Histoire");
		assertEquals(returnCourse, actualCourse);
		Mockito.verify(mockedCourseRepo).findById("Histoire");
	}
	
	
	@DisplayName("Test the get by student method")
	@Test
	public void getByStudentTest() {
		//Create Course
		Course course = new Course("Histoire", 20);
		List<Course> listCourse = new ArrayList<Course>();
		listCourse.add(course);
		
		//Create Student
		Student student = new Student("Jules", "Yoeko", "yoeko@yoeko.com", "Paris", "0343343456", "12/12/12");
		
		//Stubbing
		Mockito.when(mockedCourseRepo.findByStudents(student)).thenReturn(listCourse);
		List<Course> actualCourse = courseService.getListCourseByStudent(student);
		
		//Test 
		assertEquals(listCourse, actualCourse);
		Mockito.verify(mockedCourseRepo).findByStudents(student);
	}
	
	
	@RepeatedTest(10)
	@DisplayName("Test the create course method")
	@Test
	public void createCourseTest() {
		//Create course
		Course course = new Course("Histoire", 30);
		
		//Stubbing 
		Mockito.when(mockedCourseRepo.save(course)).thenReturn(course);
		
		//Call the method
		courseService.createCourse(course);
		
		//Test
		Mockito.verify(mockedCourseRepo).save(course);
	}
	

	@Disabled
	@DisplayName("Test the update course method")
	@Test
	public void updateCourseTest() {
		//Create course
		Course course = new Course("Histoire", 30);
		Course courseForUpdate = new Course("Histoire", 120);
		
		//Stubbing
		Mockito.when(mockedCourseRepo.save(courseForUpdate)).thenReturn(courseForUpdate);
		courseService.updateCourse(courseForUpdate);
		
		//Test
		Mockito.verify(mockedCourseRepo).save(courseForUpdate);
		
	}
	
}
