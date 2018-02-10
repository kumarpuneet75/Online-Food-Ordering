<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%       
            DBR.DBlayer.executeq("insert into menu(name,type,price,description,resid) values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+session.getAttribute("rid")+"')");
            response.sendRedirect("pgsucessful.jsp");

        %>
    </body>
</html>
