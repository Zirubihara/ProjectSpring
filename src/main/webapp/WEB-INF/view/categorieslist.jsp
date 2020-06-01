<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>


    <table>
        <thead >
        <tr>
            <th>Nazwa</th>
            <th>Edytuj</th>
            <th>Usuń</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="category" items="${categories}">
            <c:url var="update" value="/categories/updateCategoryForm">
                <c:param name="categoryId" value="${category.id}"/>
            </c:url>
            <c:url var="delete" value="/categories/deleteCategoryForm">
                <c:param name="categoryId" value="${category.id}"/>
            </c:url>
            <tr>
                <td><c:out value="${category.nazwa}"/></td>
                <td><a href="${update}">edytuj</a></td>
                <td><a href="${delete}">usuń</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div>
    <a href="${pageContext.request.contextPath}/categories/formadd" >Dodaj kategorię</a>
</div>

</body>
</html>
