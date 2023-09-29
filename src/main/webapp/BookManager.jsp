<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Book Manager</title>
</head>
<body>

<h2>Book Manager</h2>

<form action="ShowBooks.jsp" method="post">

    <div>
        <button type="submit">Show books</button>
    </div>

</form>

<br/>

<form action="AddBook.jsp">

    <div>
        <button type="submit">Add book</button>
    </div>

</form>

<br/>

<form action="RemoveBook.jsp">

    <div>
        <button type="submit">Remove book</button>
    </div>

</form>
</body>
</html>