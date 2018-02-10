<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body bgcolor='green'>
        <img src="images/food1.png">
        <table border='1' width='1330'>
            <table align='center' width='500'>
                <%
                    ResultSet rsb;
                    rsb=DBR.DBlayer.getResult("select * from blog order by blogid desc");
                    while(rsb.next())
                    {
                        String name=DBR.DBlayer.getScaler("select name from customer where cusid="+rsb.getString(4));
                    out.print("<tr><td><h1>"+rsb.getString(2)+"</h1>"+rsb.getString(3)+"<br><i>Written by "+name+"</i><hr></td></tr>");
                            } %>
                
                </table>
        </body>
</html>
    
    
        
    
