<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Remove book</title>
</head>
<body>

<form action = "RemoveMethod.jsp" method = "post">
    <div>

        <label for = "index">Index:</label>
        <input type = "text" id = "index" name = "index"/>

    </div>

    <br/>

    <div>

        <button type = "submit">Remove book</button>

    </div>
</form>

</body>
</html>