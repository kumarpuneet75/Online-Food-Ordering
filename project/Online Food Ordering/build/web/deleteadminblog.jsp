<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    DBR.DBlayer.executeq("delete from blog where blogid="+request.getParameter("id"));
    response.sendRedirect("viewblogadmin.jsp");
    %>