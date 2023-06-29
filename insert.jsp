<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="signin.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="title">Signin and win !!</div>
    <div class="content">
      <form action="profile.jsp" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Username</span>
            <input type="text" name="t1" placeholder="Enter your username" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="text" name="t2" placeholder="Enter your password" required>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Confirm">
        </div>
      </form>
    </div>
  </div>
    <%@ page import="java.sql.*,java.util.*,java.net.*,oracle.jdbc.*,oracle.sql.*,oracle.jsp.dbutil.*"%>

<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
String s4=request.getParameter("t4");
String s5=request.getParameter("t5");
String s6=request.getParameter("t6");
String s7=request.getParameter("gender");
//out.println(s7);
//out.println("data Received\n");

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
   // out.println("Driver Loded Sucessfully\n");
    Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rform","1234");
   // out.println("Connected with Oracle Succesfully");
    PreparedStatement pst=cn.prepareStatement("insert into PBL values(?,?,?,?,?,?,?)");
    pst.setString(1,s1);
    pst.setString(2,s2);
    pst.setString(3,s3);
    pst.setString(4,s4);
    pst.setString(5,s5);
    pst.setString(6,s6);
    pst.setString(7,s7);
    int x=pst.executeUpdate();
    if(x>0) 
    {
       // out.println("User Created Successfully");
    }
}
catch(ClassNotFoundException e)
{
    out.println("Driver Problem\n"+e.getMessage());
}
catch(SQLException e)
{
    out.println("  Record with Given ID already exist"+e.getMessage());
}
catch(Exception e)
{
    out.println("data Insert Problem"+e.getMessage());
}
out.close();
%>
</body>
</html>   