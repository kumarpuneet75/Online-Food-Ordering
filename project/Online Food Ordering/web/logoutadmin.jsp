<%
session.removeAttribute("aid");
session.removeAttribute("aesn");
response.sendRedirect("index.jsp");
%>