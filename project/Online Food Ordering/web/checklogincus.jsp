<%
String id=DBR.DBlayer.getScaler("select cusid from customer where email='"+request.getParameter("t1").replaceAll("'","''")+"' and password='"+request.getParameter("t2").replaceAll("'","''")+"' and active='"+1+"'");
if(id==null || id.equals(""))
    response.sendRedirect("cuslogin.jsp?p=2");
else
    {
        session.setAttribute("cid",id);
        String nam=DBR.DBlayer.getScaler("select name from customer where email='"+request.getParameter("t1")+"'");
        session.setAttribute("cesn",nam);
        response.sendRedirect("welcomecus.jsp");
        }
%>