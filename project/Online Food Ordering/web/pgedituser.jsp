<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
        
        DBR.DBlayer.executeq("update customer set name='"+request.getParameter("t1")+"',email='"+request.getParameter("t2")+"',phno='"+request.getParameter("t3")+"',gender='"+request.getParameter("t4")+"',address='"+request.getParameter("t5")+"' where cusid='"+session.getAttribute("cid")+"'");
        response.sendRedirect("myprofilecus.jsp");
        %>
    </body>
</html>
