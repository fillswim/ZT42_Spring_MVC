<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showDetails</title>
</head>
<body>

<h2>Dear Employee, you are WELCOME!</h2>
<br>
<br>

<%--Your name: ${param.employeeName}--%>

<%--employee - название(ключ) аттрибута в модели--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Language(s):
<%--Вывод списка языков--%>
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>
            ${lang}
        </li>
    </c:forEach>
</ul>
<br>
Phone number: ${employee.phoneNumber}
<br>


</body>
</html>
