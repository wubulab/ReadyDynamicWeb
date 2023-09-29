<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add book</title>
</head>
<body>

<h1>Add book</h1>

<form action = "AddMethod.jsp" method = "post">

    <div>
        <label for = "index">Index:</label>
        <input type = "text" id = "index" name = "index"/>
    </div>

    <br/>

    <div>
        <label for = "book">Book:</label>
        <input type = "text" id = "book" name = "book"/>
    </div>

    <br/>

    <div>
        <input type = "submit" value = "Add book"/>
    </div>

</form>

</body>
</html>