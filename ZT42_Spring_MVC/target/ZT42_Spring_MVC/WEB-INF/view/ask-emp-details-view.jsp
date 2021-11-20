<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>askDetails</title>
</head>
<body>

<h2>Dear Employee, Please enter your details</h2>
<br>
<br>

<%--modelAttribute="employee" - созданная в контроллере модель имеет аттрибут employee--%>
<form:form action="showDetails" modelAttribute="employee" method="get">

    Name <form:input path="name"/>
<%--    Вывод информации об ошибке, "name" - поле объекта Employees, к которому относятся ошибки--%>
    <form:errors path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    <br>

<%--    Выпадающий список для выбора департамента--%>
    Department <form:select path="department">

<%--    Жетко прописанный вариант--%>
<%--    <form:option value="Information Technology" label="IT"/>--%>
<%--    <form:option value="Human Resources" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>

<%--    Данные берутся из класса Employee и Map departments--%>
    <form:options items="${employee.departments}"/>

    </form:select>
    <br>
    <br>
<%--    Радио-баттон--%>
    Which car do you want?
<%--    Жетко прописанный вариант--%>
<%--    BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    MB <form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>

    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    <br>
    Foreign Language(s)
<%--    Набор флажков--%>
<%--    Жетко прописанный вариан--%>
<%--    EN <form:checkbox path="languages" value="English"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutch"/>--%>
<%--    FR <form:checkbox path="languages" value="French"/>--%>
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br>
    <br>

    Phone Number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>
    <br>

<%--    Кнопка--%>
    <input type="submit" value="OK">

</form:form>

</body>
</html>
