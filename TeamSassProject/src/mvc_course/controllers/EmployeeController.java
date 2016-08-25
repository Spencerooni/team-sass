package mvc_course.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc_course.models.Employee;
import mvc_data.IEmployeeMapper;

@Controller
public class EmployeeController {

	@Autowired
	public IEmployeeMapper employeeMapper;

	@RequestMapping("insertEmployee.mvc")
	public void employee(Employee emp) {
		employeeMapper.insertEmployee(emp);

	}
}