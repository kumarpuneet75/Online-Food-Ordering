
    <%@ include file="welcomeheader.jsp" %>
<style>
    div{
        
        color: White;
      padding: 20px;
      font-style: oblique;
      
    }
</style>
<form name="frmres" method="post" action="pgnewaccres.jsp">
        <table width=250 border=0 align="center" height=400 style="opacity: 0.5; background-color: black;">
            <tr><td colspan="2" align="center">Sign up</td></tr>
            <tr>
                <td><div> Res. Name</div></td>
                <td><input type=text name=t1 required ></td>
            </tr>
            <tr>
                <td><div>Password</div></td>
                <td><input type=password name=t2 required ></td>
            </tr>
            <tr>
                <td><div>Email</div></td>
                <td><input type=text name=t3></td>
            </tr>
                        
            <tr>
                <td><div>Phone number</div></td>
                <td><input type=text name=t4></td>
            </tr>
                        
            <tr>
                <td><div>Address</div></td>
                <td><textarea name="t5"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align=center >
                    <div><input type="submit" value="Create Account" ></div><br><br>
                </TD>
            </tr>
            </table>
    
                </td>      
                
            </tr>
  
        </table>
</form>
                       
