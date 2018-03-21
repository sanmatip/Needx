<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.demo.model.Profile"%>
    <%@page import="com.demo.model.Customer"%>
    <%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>		
</head>
<body>
<%
Customer cust = (Customer) session.getAttribute("cust");


%>
<c:form method="post" action="upload" enctype="multipart/form-data" modelAttribute="profile">
ImagId: <input type="number" name="imageId"/>
ImageName: <input type="text" name="imageName"/>
<span>Browse Image</span>
<input type="file" name="fileUpload" size="100"/><br/><br/>

<input type="submit"/>

</c:form>

</body>
</html>