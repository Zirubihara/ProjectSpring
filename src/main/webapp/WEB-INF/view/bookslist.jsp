<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List books</title>
</head>
<body>
<h2>Books:</h2>
<div>
    <table>
        <tr>
            <th>Name</th>
            <th>Publisher</th>
            <th>Price</th>
            <th>Category</th>
        </tr>
        <c:forEach var="book" items="${books}">
            <c:url var="update" value="/books/updateBookForm">
                <c:param name="bookId" value="${book.id}"/>
            </c:url>
            <c:url var="delete" value="/books/deleteBookForm">
                <c:param name="bookId" value="${book.id}"/>
            </c:url>
            <tr>
                <td>${book.nazwa}</td>
                <td>${book.wydawnictwo}</td>
                <td>${book.cena}</td>
                <td>${book.kategoria.nazwa}</td>


                <td><form:hidden path="id"/></td>

                <td><a href="${update}" >update</a> </td>
                <td><a href="${delete}" > usuń </a> </td>

            </tr>
        </c:forEach>
    </table>
</div>
<div>
    <a href="${pageContext.request.contextPath}/books/formadd"> add book</a>
</div>
</body>
</html>

