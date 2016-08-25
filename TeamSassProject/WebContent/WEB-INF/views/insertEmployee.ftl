<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Employee details</title>
</head>
<body>
<h1>Please enter your details</h1>
<form action="insertEmployee.mvc">
<fieldset >
<p id="empID">Please enter the employee ID: </p><input type="text" name="empID">
</fieldset>
<fieldset >
<p id="empFirstName">Please enter your first name: </p><input type="text" name="empFirstName">
</fieldset>
<fieldset >
<p id="empLastName">Please enter your last name: </p><input type="text" name="empLastName">
</fieldset>
<fieldset>
<p id=empNationalInsurance>Please enter the national insurance number: </p><input type="text" name="empNationalInsurance"> 
</fieldset>
<input type = "submit" value="Submit">	
</form>
</body>
</html>