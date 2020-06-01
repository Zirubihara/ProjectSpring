<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>books</title>
</head>
<body>
ADD BOOK
<form:form action="saveBook" modelAttribute="book" method="POST">
    <table>
        <tbody>


        <tr>
            <td><label>nazwa:</label></td>
            <td><form:input path="nazwa"/></td>
        </tr>
        <tr>
            <td><label>wydawnictwo:</label></td>
            <td><form:input path="wydawnictwo"/></td>
        </tr>
        <tr>
            <td><label>cena:</label></td>
            <td><form:input path="cena"/></td>
        </tr>
        <tr>
            <td>

            <form:select path="kategoria">
                <form:options items="${categories}" itemValue="id" itemLabel="nazwa"/>
            </form:select>

            </td>
        </tr>
        <tr>
            <td><form:hidden path="id"/></td>
        </tr>
        <tr>
            <td><label></label></td>
            <td><input type="submit" value="Save" class="save"/></td>
        </tr>


        </tbody>
    </table>
</form:form>
<!-- -wracamy do listy bez zapisu-->
<p>
    <a href="${pageContext.request.contextPath}/books/list "> return </a>
</p>
</body>
</html>
