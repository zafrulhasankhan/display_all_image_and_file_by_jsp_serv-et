<%-- 
    Document   : pdf_reader
    Created on : May 12, 2020, 2:38:51 PM
    Author     : Zafrul Hasan Nasim
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.ImageDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Image</title>
</head>
<body>

<%
List<ImageDto> list = (ArrayList<ImageDto>)request.getAttribute("list");
%>

 
<%
for(int i=0;i<list.size();i++){
ImageDto dto = list.get(i);
String id = dto.getId();
String name = dto.getName();
%>
<a href="./pdfdownloader?id=<%=id%>"><%=name%><br></a>
<%}
%>



</body>
</html>