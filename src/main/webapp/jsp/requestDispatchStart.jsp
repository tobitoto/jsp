<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/jsp/requestDispatchProcess.jsp">
		<input type="text" name="userId" value="sally"><br>
		<input type="submit" value="requestDispatch"/>
	
	</form>
</body>
</html>