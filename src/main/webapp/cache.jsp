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
同一个用户，2个页面直接传值：<br>
(1)request。
必须在一个页面里面或通过A.jsp request.setAttribute("name","value");
request.getRequestDispatcher("B.jsp")
在B.jsp  request.getAttribute("name")<br>
(2)response.sendRedirect("B.jsp?name="+);
当写中文到客户端时，加上out.println("中文"),
response.setCharacterEncoding();<br>
<br>
session结束条件：1.关闭浏览器2.超时(tomcat可以配置)<br>
同一个用户，session传值
（1）多页面直接传值
（2）在一个页面里存储，在其他页面读取<br>
不同用户之间共享数据,所有页面之间都可以共享数据
application



    <%
        String p =request.getParameter("un");
        String a =request.getParameter("pwd");

        if (p.equals(a)){
            request.setAttribute("username",p);
            session.setAttribute("Userid",p);
//            response.sendRedirect("main.jsp?name="+p);//重定向
            request.getRequestDispatcher("main.jsp?name="+p).forward(request,response);//转向
        }
        else{
            out.println("<br>密码错误");

        }
    %>
</body>
</html>
