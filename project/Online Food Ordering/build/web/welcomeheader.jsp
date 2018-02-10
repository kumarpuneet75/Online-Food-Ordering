<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            ul{
                
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #e60000;
            }
            li{
                float: left;
                 border-right: 1 px black;
            }
            li:last-child{
                border-right: none;
            }
            li a{
               
                display: block;
                color: #e6c300;
                text-align: center;
                padding: 10px;
                text-decoration: none;
                
            }
            a.active{
                background-color: #4CAF50;
            }
            li a:hover{
                background-color: #111;
            }
            
        </style>
            
    </head>
    <body>
        <table width="1341" bgcolor="#e60000">
            <tr align="top">
                <td colspan="2">
                    <font color="#e6c300" face="verdana" size="4">
                    <b>Online Food Ordering System</b>
                    </font>
                </td>
            </tr>
            
            <tr>
            <td width="800">
            </td>
            <td height="40">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="admlogin.jsp">Admin login</a></li>
            <li><a href="reslogin.jsp">Restaurant login</a></li>
            <li><a href="cuslogin.jsp">User login</a></li>
            <li><a href="Blog.jsp">Food Blog</a></li>
        </ul>            
                </td>
            </tr>
        </table>
        
        <table cellspacing="0" height="550" width="100%" background="images/burger.png"> 
            <tr>
                <td>
                    
