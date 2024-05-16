<%@ page import="com.example.webjava.LoginBean" %>
<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 5/10/2024
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LoginController</title>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

            LoginBean loginBean = new LoginBean();
            boolean status = loginBean.checkLogin(username, password);

                if (status) {
                    response.sendRedirect("success.jsp");
                } else {
                    response.sendRedirect("error.jsp");
                }


    %>
</head>
<body>

</body>
</html>
