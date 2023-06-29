<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="index.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="title">Welcome are you ready to win !!</div>
    <div class="content">
       <form action="signin.html" method="post">
        <div class="button">
          <input type="submit" value="Signin">
        </div>
        </form>
        <form action="PBBL.html" method="post">
        <div class="button">
          <input type="submit" value="Signup">
        </div>
      </form>
    </div>
  </div>
        <%@ page import="java.sql.*,java.util.*,java.net.*,oracle.jdbc.*,oracle.sql.*,oracle.jsp.dbutil.*"%>   
            <%
             session.invalidate();
            // out.println("You are loged out");
             out.close();
             %>
    </body>
</html>