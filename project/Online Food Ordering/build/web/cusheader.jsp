<%@page contentType="text/html" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
    

<html>
    <style language="css">
        ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}
li a:hover {
    background-color: #555;
    color: white;

    .active {
    background-color: #4CAF50;
    color: white;
}
ul {
    border: 1px solid #555;
}

li {
    text-align: center;
    border-bottom: 1px solid #555;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 25%;
    background-color: #f1f1f1;
    height: 100%; /* Full height */
    position: fixed; /* Make it stick, even on scroll */
    overflow: auto; /* Enable scrolling if the sidenav has too much content */
}

    </style>
    <body>
        <%
        if(session.getAttribute("cid")==null)
            {
            response.sendRedirect("cuslogin.jsp?ses=exp");
            return;
            }
%>
        <table  width=100%>
            <tr>
                <td bgcolor="black" colspan="2">
                    <font size="4" align="center" color="white"> Online Food Portal</font>

                </td>
            </tr>           
            <tr>
                <td height="200" colspan="2">
                    <img src="images/indian2.png" height="200" width=100%>  
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    Welcome <%  if(session.getAttribute("cesn")!=null)
                out.print(session.getAttribute("cesn")); %>
                <a href="logoutcus.jsp" vlink="blue"><u>(Logout)</u></a>
                    
                </td>
            </tr>
            
            <tr>
                <td width="200" align="top">
                
         <ul>
  <li><a href="welcomecus.jsp">Home</a></li>
  <li><a href="myprofilecus.jsp">View Profile</a></li>
  <li><a href="viewres.jsp">Food Portal</a></li>
  <li><a href="blogadd.jsp">Add Blog</a></li>
  <li><a href="viewmyblog.jsp">View My Blog</a></li>
</ul
                    
                </td>
        
        
                
              