package mvc_data;

import org.apache.ibatis.annotations.Insert;

import mvc_course.models.Employee;

public interface IEmployeeMapper {
	
	@Insert("INSERT INTO Employee(employee_id, first_name, last_name,"
			+ "national_insurance) VALUES('#{empID}', '#{empFirstName}', '#{empLastName}',"
			+ "'#{empNationalInsurance}')")
	int insertEmployee(Employee emp);

}
