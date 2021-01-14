package eu.ensup.partiel_spring.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import eu.ensup.partiel_spring.entities.Course;

@Repository
public interface CourseRepository extends CrudRepository<Course, String> {

}