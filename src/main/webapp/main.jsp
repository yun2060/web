<%--
  Created by IntelliJ IDEA.
  User: 20601
  Date: 2022-10-11
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主界面</title>
</head>
<body>
欢迎：<%=request.getParameter("name")%>
<div>
    其他网站
    <form name="input" action="https://www.cidp.edu.cn/" method="get">
        <input type="submit" value="防灾科技学院">
    </form>
    <form name="input" action="https://www.csdn.net/" method="get">
        <input type="submit" value="CSDN">
    </form>
    <form name="input" action="https://www.runoob.com/" method="get">
        <input type="submit" value="菜鸟教程">
    </form>
    <form name="input" action="https://www.bilibili.com/" method="get">
        <input type="submit" value="bilibili">
    </form>
</div>
</body>
</html>
