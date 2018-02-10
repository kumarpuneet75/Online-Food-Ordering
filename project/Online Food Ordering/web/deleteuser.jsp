<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    DBR.DBlayer.executeq("delete from customer where cusid="+request.getParameter("id"));
    response.sendRedirect("viewuser.jsp");
    %>