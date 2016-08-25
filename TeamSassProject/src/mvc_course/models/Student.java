package mvc_course.models;

import java.util.HashSet;
import java.util.Set;

public class Student {

	private String firstName;
	private String lastName;
	private String gender;
	private String university;

	public enum Sex {
		MALE, FEMALE
	}

	public static Set<Student> list = new HashSet<Student>();

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(Sex sex) {
		if (sex.equals(Student.Sex.MALE)) {
			this.gender = "Male";
		} else {
			this.gender = "female";
		}
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}
}
