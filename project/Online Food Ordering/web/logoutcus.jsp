<%
session.removeAttribute("cid");
session.removeAttribute("cesn");
response.sendRedirect("index.jsp");
%>