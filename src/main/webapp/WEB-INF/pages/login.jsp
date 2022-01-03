<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:pageTemplate pageTitle="Login">

<form method="post" action="j_security_check">
    <label class="sr-only" for="username">Username:</label>
    <input class="form-control" placeholder="Username" id="username" type="text" name="j_username" required autofocus>
    <label class="sr-only" for="password">Password:</label>
    <input class="form-control" placeholder="Password" id="password" type="password" name="j_password" required>
    <button type="submit">Login</button>
</form>
</t:pageTemplate>
