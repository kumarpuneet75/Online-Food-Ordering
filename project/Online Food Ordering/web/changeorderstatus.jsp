<%@ page errorPage="errorpage.jsp" %>

<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>

<%
    String d,ggql,e;
    String p=request.getParameter("abcd");
    out.print(p);
   String a[]=p.split(",");
   out.print(a[0]);out.print(a[1]);
  String s=DBR.DBlayer.getScaler("select cusid from orders where orderid='"+a[0]+"'");
  // out.print("update orders set orderstatus='"+a[1]+"' where orderid='"+a[0]+"'");
    DBR.DBlayer.executeq("update orders set orderstatus='"+a[1]+"' where orderid='"+a[0]+"'");
          if(a[1].equals("Pending") || a[1].equals("Delivered"))
        {     d=DBR.DBlayer.getScaler("select totalamount from orders where orderid='"+a[0]+"'");
    //double pts=0.10*Double.parseDouble(d);
   // e=DBR.DBlayer.getScaler("select points from customer where cusid='"+s+"'");
   // double n=Double.parseDouble(e)+pts;
    //ggql="update customer set points='"+n+"' where email='"+s+"'";
   // DBR.DBlayer.executeq(ggql);
    response.sendRedirect("pendingorders.jsp?e=2");
    }

          else
response.sendRedirect("pendingorders.jsp");
%>
