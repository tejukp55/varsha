<%-- 
    Document   : login
    Created on : 23 Dec, 2013, 11:35:38 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloud </title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%!
            String s1,s2,sql;
            Connection con;
            Statement st;
            ResultSet rs;
        %>
        <%
        try
                {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            con=DriverManager.getConnection("jdbc:odbc:test2","root","");
            st=con.createStatement();
            s1=request.getParameter("t1");
            s2=request.getParameter("t2");
            sql="select * from login where userid='"+s1+"' and pwd='"+s2+"'";
            rs=st.executeQuery(sql);
            if(rs.next())
            {
                %>
                     <script>
                         alert("Admin logged In Successful");
                         window.open("Main.html","_parent");
                     </script>
                     <%
            }
            else 
            {
                 sql="select * from reg where userid='"+s1+"' and pwd='"+s2+"'";
                 rs=st.executeQuery(sql);
                 if(rs.next())
                 {
                     %>
                     <script>
                         alert("User logged In Successful");
                         window.open("Main.html","_parent");
                     </script>
                     
                 <%
                 }
                 else
                 {
                     %>
                     <script>
                         alert("Check Your Userid and password");
                         window.open("login1.html","_parent");
                     </script>
                     
                 <%
                 }
            }
           }
        catch(Exception e)
                {
            out.println(e.toString());
        }
        %>
        </body>
</html>
