<%--
  Created by IntelliJ IDEA.
  User: 20601
  Date: 2022-10-10
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录检验</title>
</head>
<body>
<%
    String p =request.getParameter("邮箱");
    String a =request.getParameter("密码");
    if (p!=null&&a!=null)
    {
        if (p.equals(a)) {
//            out.println("欢迎");
            response.sendRedirect("main.jsp?name="+p);
        } else {
            out.println("密码错误");
        }
    }
%>
</body>
</html>
