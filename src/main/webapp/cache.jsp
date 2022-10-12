<%--
  Created by IntelliJ IDEA.
  User: 20601
  Date: 2022-10-10
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课上缓存</title>
</head>
<body>
    <%
        String p =request.getParameter("un");
        String a =request.getParameter("pwd");
        if (p.equals(a)){
            response.sendRedirect("main.jsp?name="+p);//重定向
            request.getRequestDispatcher("");//转向
        }
        else{
            out.println("密码错误");
        }
    %>
</body>
</html>
