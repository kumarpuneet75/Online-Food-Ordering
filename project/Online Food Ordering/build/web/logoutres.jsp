<%
session.removeAttribute("rid");
session.removeAttribute("resn");
//session.removeAttribute("em");
response.sendRedirect("index.jsp");
%>