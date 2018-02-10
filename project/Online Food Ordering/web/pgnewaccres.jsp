<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
        
        DBR.DBlayer.executeq("insert into restaurant(name,password,email,phno,address) values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"')");
        response.sendRedirect("reslogin.jsp?j=2");
        %>
    </body>
</html>
