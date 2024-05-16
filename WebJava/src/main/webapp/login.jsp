<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 5/10/2024
  Time: 11:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
        <h3>Login</h3>
        <form method="post" action="LoginController.jsp">
            <label for="user_name">UserName:</label><br>
            <input type="text" name="user_name" placeholder="UserName" id="user_name" /><br />
            <label for="password">Password:</label><br>
            <input type="password" name="password" placeholder="password" id="password" /><br />
            <button type="submit">Login</button>
        </form>
</body>
</html>

