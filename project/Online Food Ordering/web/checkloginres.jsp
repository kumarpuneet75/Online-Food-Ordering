<%
String id=DBR.DBlayer.getScaler("select resid from restaurant where email='"+request.getParameter("t1").replaceAll("'","''")+"' and password='"+request.getParameter("t2").replaceAll("'","''")+"' and active='"+1+"'");
if(id==null || id.equals(""))
    response.sendRedirect("reslogin.jsp?p=2");
else
    {
        session.setAttribute("rid",id);
        String nam=DBR.DBlayer.getScaler("select name from restaurant where email='"+request.getParameter("t1")+"'");
        session.setAttribute("resn",nam);
        response.sendRedirect("welcomeres.jsp");
        }
%>