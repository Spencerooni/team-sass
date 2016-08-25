package mvc_data;

import org.apache.ibatis.annotations.Insert;

import mvc_course.models.Employee;

public interface IEmployeeMapper {
	
	@Insert("INSERT INTO Employee(employee_id, first_name, last_name,"
			+ "national_insurance, address, city, postcode, email_address"
			+ "account_name, IBAN, BIC, start_salary) "
			+ "VALUES('#{empID}', '#{empFirstName}', '#{empLastName}',"
			+ "'#{empNationalInsurance}', '#{empAddress}', '#{empCity}', "
			+ "'#{empPostcode}', #{empEmail}', '#{empAccountName}',"
			+ " '#{empIBAN}', #{empBIC}', '#{empStartSalary}', "
			+ "'#{empLastName}' )")
	int insertEmployee(Employee emp);

}
