<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String r;
    r=DBR.DBlayer.getScaler("select active from customer where cusid="+request.getParameter("id"));
    if(r.equals("1"))
    DBR.DBlayer.executeq("update customer set active='"+0+"' where cusid="+request.getParameter("id"));
    else
    DBR.DBlayer.executeq("update customer set active='"+1+"' where cusid="+request.getParameter("id"));
    response.sendRedirect("viewuser.jsp");
    %>