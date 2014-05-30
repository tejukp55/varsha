<%-- 
    Document   : dragDrop
    Created on : 7 Apr, 2014, 12:19:37 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloud</title>
    </head>
    <body>
        
        <%@page import="java.sql.*" %>
        <%!
            Connection con;
            Statement st,st1,st2;
            ResultSet rs,rs1;
            String s1,s2,s3,s4,s5;
            String sql1,sql2;
        %>
        <%
            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                con=DriverManager.getConnection("jdbc:odbc:test2","root","");
                st=con.createStatement();
                st1=con.createStatement();
                st2=con.createStatement();
                s1=request.getParameter("t1");
                s2=request.getParameter("t2");
                s3=request.getParameter("t3");
                s4=request.getParameter("t4");
                s5=request.getParameter("t5");
                sql1="select * from reg where userid='"+s4+"'";
                rs=st.executeQuery(sql1);
                if(rs.next())
                {
                    %>
                    <script>
                        alert("User ID Exist");
                        window.open("login1.html","_parent");
                    </script>
        <%
                }
                else
                {
                    sql2="insert into reg values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')";
                    st1.executeUpdate(sql2);
                    %>
                    <script>
                        alert("Congrats, you registered successfully");
                        window.open("login1.html","_parent");
                    </script>
        <%
                }
            }
            catch(Exception e)
            {
                out.println(e.getMessage());
            }
            
        %>
    </body>
</html>
