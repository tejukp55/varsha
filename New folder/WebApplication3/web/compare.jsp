<%-- 
    Document   : compare
    Created on : 2 Apr, 2014, 9:43:45 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <style type="text/css">
		.font
		{
			font-family:BatmanForeverAlternate;
			font-size: 18px;
			color:#CFCFCF;	
			text-decoration:none;
		}
		
		a:link {text-decoration:none;color:#FFFAFA;}    
		a:visited {color:#FFFAFA;font-weight:300;text-shadow: 0 1px 1px #07072;} 
		a:hover {text-decoration:underline;color:#FFFAFA;}  
		a:active {text-decoration:none;color:#FFFAFA;}
		
		.background
		{		
			width: 100%;
			background: url(images/sports.jpg) center top no-repeat;
			background-attachment:fixed;
		}
		
		body
		{
			<!---->
			margin: 0;
			padding: 0;
			color: #576973;
			font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
			font-size: 12px;
			line-height: 1.4em; 
			background-color: #0000FF;
			background-image: url(1.jpg);
			<!--background-image: url(images/back.jpg);
			
			background-repeat: no-repeat;
			background-position: top;
			background-attachment:fixed;-->
		}	
		
		#menu-bar .active a, #menu-bar li:hover > a {
  background: #0399D4;
  background: linear-gradient(top,  #EBEBEB,  #A1A1A1);
  background: -ms-linear-gradient(top,  #EBEBEB,  #A1A1A1);
  background: -webkit-gradient(linear, left top, left bottom, from(#EBEBEB), to(#A1A1A1));
  background: -moz-linear-gradient(top,  #EBEBEB,  #A1A1A1);
  color: #444444;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
  -moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
  box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
  text-shadow: 2px 2px 3px #FFFFFF;
}
#menu-bar ul li:hover a, #menu-bar li:hover li a {
  background: none;
  border: none;
  color: #666;
  -box-shadow: none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
}
#menu-bar ul a:hover {
  background: #0399D4 !important;
  background: linear-gradient(top,  #04ACEC,  #0186BA) !important;
  background: -ms-linear-gradient(top,  #04ACEC,  #0186BA) !important;
  background: -webkit-gradient(linear, left top, left bottom, from(#04ACEC), to(#0186BA)) !important;
  background: -moz-linear-gradient(top,  #04ACEC,  #0186BA) !important;
  color: #FFFFFF !important;
  border-radius: 0;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  text-shadow: 2px 2px 3px #FFFFFF;
}
		
	</style>
	
    <body>
         <div id="background">
             
        <%@page import="java.io.*"%>
        <%!
          String ss1,ss2,ss3;
        
        %>
        </div>
        <%
          BufferedReader bf = new BufferedReader(new FileReader("f:\\splitfiles\\new.txt"));
          while(true)
              {
              ss2=bf.readLine();
              if (ss2==null)
                  break;
              ss3=ss2;
              }
          ss1=request.getParameter("q1");
          if (ss1.equals(ss3))
              {
              out.println("files are correct");
              }
          else
              {
              out.println("files are not correct");
              }
        %>
    
    </body>
</html>
