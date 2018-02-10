<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
        
        DBR.DBlayer.executeq("insert into customer(name,password,email,phno,gender,address) values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"','"+request.getParameter("t6")+"')");
        response.sendRedirect("cuslogin.jsp?j=2");
        %>
    </body>
</html>
