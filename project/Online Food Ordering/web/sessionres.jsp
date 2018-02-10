<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id;
    id=request.getParameter("id");
   // id=DBR.DBlayer.getScaler("select resid from restaurant where ");
    session.setAttribute("pid", id);
    
    response.sendRedirect("showmenu.jsp");
    %>