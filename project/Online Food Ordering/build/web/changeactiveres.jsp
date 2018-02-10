<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String r;
    r=DBR.DBlayer.getScaler("select active from restaurant where resid="+request.getParameter("id"));
    if(r.equals("1"))
    DBR.DBlayer.executeq("update restaurant set active='"+0+"' where resid="+request.getParameter("id"));
    else
    DBR.DBlayer.executeq("update restaurant set active='"+1+"' where resid="+request.getParameter("id"));
    response.sendRedirect("viewrestaurant.jsp");
    %>