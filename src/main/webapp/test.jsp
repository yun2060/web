<%--
  Created by IntelliJ IDEA.
  User: 20601
  Date: 2022-10-18
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%! int x=0;%>
<%
    Integer y = (Integer) application.getAttribute("counter");
    if (y == null) {
        y = 0;
    }
    if (session.isNew()) {
        x++;
        y++;
    }
    application.setAttribute("counter", y.toString());
%>
您是第<%=x%>位访客！
您是第<%=y%>位访客！
</body>
</html>
