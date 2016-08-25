package mvc_data;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface IEmployeeMapper {
	
	@Insert("INSERT INTO Employee(employee_id, first_name, last_name,"
			+ "national_insurance) VALUES(#{id}, #{firstName}, #{lastName},"
			+ "#{NINum})")
	Void insertEmployee(@Param("firstName") String firstName, 
			@Param("lastName") String lastName,
			@Param("id") int id, 
			@Param("NINum") String NINum);

}
