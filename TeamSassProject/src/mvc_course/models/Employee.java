package mvc_course.models;


public class Employee {
	
	private int empID;
	private String empFirstName;
	private String empLastName;
	private String empAddress;
	private String empPostcode;
	private String empCity;
	private String empNationalInsurance;
	private String empAccountName;
	private String empIBAN;
	private String empBIC;
	private Float empStartSalary;
	private String empDepartment;
	private String empEmail;
	
	public Employee(int empID, String empFirstName, String empLastName,
			String empNationalInsurance){
		
		this.empID = empID;
		this.empFirstName = empFirstName;
		this.empLastName = empLastName;
		this.empNationalInsurance = empNationalInsurance;
		
		
	}
	
	
	public String getEmpEmail() {
		return empEmail;
	}


	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}


	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public String getEmpFirstName() {
		return empFirstName;
	}
	public void setEmpFirstName(String empFirstName) {
		this.empFirstName = empFirstName;
	}
	public String getEmpLastName() {
		return empLastName;
	}
	public void setEmpLastName(String empLastName) {
		this.empLastName = empLastName;
	}
	public String getEmpAddress() {
		return empAddress;
	}
	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}
	public String getEmpPostcode() {
		return empPostcode;
	}
	public void setEmpPostcode(String empPostcode) {
		this.empPostcode = empPostcode;
	}
	public String getEmpCity() {
		return empCity;
	}
	public void setEmpCity(String empCity) {
		this.empCity = empCity;
	}
	public String getEmpNationalInsurance() {
		return empNationalInsurance;
	}
	public void setEmpNationalInsurance(String empNationalInsurance) {
		this.empNationalInsurance = empNationalInsurance;
	}
	public String getEmpAccountName() {
		return empAccountName;
	}
	public void setEmpAccountName(String empAccountName) {
		this.empAccountName = empAccountName;
	}
	public String getEmpIBAN() {
		return empIBAN;
	}
	public void setEmpIBAN(String empIBAN) {
		this.empIBAN = empIBAN;
	}
	public String getEmpBIC() {
		return empBIC;
	}
	public void setEmpBIC(String empBIC) {
		this.empBIC = empBIC;
	}
	public Float getEmpStartSalary() {
		return empStartSalary;
	}
	public void setEmpStartSalary(Float empStartSalary) {
		this.empStartSalary = empStartSalary;
	}
	public String getEmpDepartment() {
		return empDepartment;
	}
	public void setEmpDepartment(String empDepartment) {
		this.empDepartment = empDepartment;
	}
}
