<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Hueta</h2>
<hr>
<p>
Welcome
</p>
<hr>
<security:authorize access="hasRole('MANAGER')">
<p>
    <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
</p>
</security:authorize>

<security:authorize access="hasRole('ADMIN')">
<p>
    <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
</p>
</security:authorize>
<hr>

<p>
    User:<security:authentication property="principal.username" />
    <br><br>
    Rolse(s): <security:authentication property="principal.authorities" />
</p>

<hr>
<form:form action="${pageContext.request.contextPath}/logout" method="post">
<input type="submit" value="Logout">
</form:form>
</body>
</html>
