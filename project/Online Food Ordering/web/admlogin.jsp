<%@ include file="welcomeheader.jsp" %>
<style>
    div{
        
        color: White;
      padding: 20px;
      font-style: oblique;
      
    }
</style>
        
<form name="frm" method="post" action="checkloginadm.jsp">       
    
                   <table width=300 height=400 cellspacing="0" align="center" style="opacity: 0.5; background-color: black;">
               
                       <tr><td colspan="2" align="center"><div><strong>Authenticate UrSelf(Admin)</strong></div></td>
                        </tr>
                        <tr>
                            <td><div>Email</div></td>
                            <td><div><input type=text name=t1 required placeholder="Email" ></div></td>
                        </tr>
                        <tr>
                            <td><div>Password</div></td>
                            <td><div><input type=password name=t2 required placeholder="Password" ></div></td>
                        </tr>
                        <%
                          if(request.getParameter("p")!=null)
                              out.print("<tr><td colspan=2 align=center><<div>invalid password and user<div></td></tr>");
                                  //out.print("select resid from resdetails where email='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"'");
                            if(request.getParameter("j")!=null)
                              out.print("<tr><td colspan=2 align=center>><div>you are added plzz login<div></td></tr>");
                             else if(request.getParameter("ses")!=null)
                              out.print("<tr><td colspan=2 align=center><b><div>Session Expired<div></b></font></td></tr>"); 
                        %>
                        <tr>
                        <Td colspan="2" align=center >
                            <div><input type="submit" value="Login" ></div><br><br>
                            <a href='index.jsp'><div>Back</div></a>
                        </TD>
                        </tr>
                        
  </table>
    
                </td>      
                
            </tr>
       
        </table>
</form>

    </body>
</html>
