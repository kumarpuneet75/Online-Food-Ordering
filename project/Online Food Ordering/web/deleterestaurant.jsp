<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    DBR.DBlayer.executeq("delete from restaurant where resid="+request.getParameter("id"));
    response.sendRedirect("viewrestaurant.jsp");
    %>