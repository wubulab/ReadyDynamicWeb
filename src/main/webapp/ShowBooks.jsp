<%@ page import = "ua.readydynamicweb.DatabaseFacade" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>List of books</title>
</head>
<body>

<h2>List of books</h2>

<%

    for(String name: DatabaseFacade.getBooks()){
        out.print(name + "<br/>");
    }

%>

</body>
</html>