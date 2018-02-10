<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            
                
            String act=request.getParameter("chk1")==null?"0":"1";          
            DBR.DBlayer.executeq("update menu set name='"+request.getParameter("t1")+"', type='"+request.getParameter("t2")+"', price='"+request.getParameter("t3")+"', description='"+request.getParameter("t4")+"',active='"+act+"'where menuitemid='"+request.getParameter("id")+"';");
            response.sendRedirect("viewmenu.jsp");
            
        %>
    </body>
</html>
