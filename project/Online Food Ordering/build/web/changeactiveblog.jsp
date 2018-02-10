<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String r;
    r=DBR.DBlayer.getScaler("select active from blog where blogid="+request.getParameter("id"));
    if(r.equals("1"))
    DBR.DBlayer.executeq("update blog set active='"+0+"' where blogid="+request.getParameter("id"));
    else
    DBR.DBlayer.executeq("update blog set active='"+1+"' where blogid="+request.getParameter("id"));
    response.sendRedirect("viewblogadmin.jsp");
    %>