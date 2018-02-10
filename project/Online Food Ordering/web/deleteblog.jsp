<% 
DBR.DBlayer.executeq("delete from blog where blogid="+request.getParameter("bid"));
response.sendRedirect("viewmyblog.jsp");
%>

