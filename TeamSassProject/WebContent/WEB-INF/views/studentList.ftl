<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FreeMarker Student List</title>
</head>
<body>
	List generated at ${.now}
	<ul>
		<#list studentList as s> <#if s.gender="Male"> <#assign c="blue">
		<#else> <#assign c="red"> </#if>
		<li style="color: ${c}">${s.firstName} ${s.lastName}</li> </#list>
	</ul>
</body>
</html>