     
        <html>
            <body bgcolor="green">
                <head>
                    <link rel="stylesheet" href="card.css">  
                </head>
                
                <%@ page import="java.sql.*,java.util.*,java.net.*,oracle.jdbc.*,oracle.sql.*,oracle.jsp.dbutil.*"%>         
        <%    
        String s1=request.getParameter("t1");
        String s2=request.getParameter("t2");
        
       // out.println("data Received\n");

        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
          //  out.println("Driver Loded Sucessfully\n");
            Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rform","1234");
          //  out.println("Connected with Oracle Succesfully\n");
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery("select *from pbl where username='"+ s1 +"'and password='"+ s2 +"'");
          //  out.println("query executed succesfully\n");
          
            if(rs.next())
            {
        %> 
         <style>
          .buttonL{
            color : rgb(8, 61, 8);
            background-color: rgb(190, 158, 13);
            padding-top: 20px;
            padding-bottom: 20px;
            width: 2.5cm;
            font-size: 20px;
            font-family: 'Trebuchet MS';
            border-radius: 11px;
            margin-top: 10px;
            font-weight: bolder;
            box-shadow: 5px 4px rgb(1, 34, 1);
            border-style: inherit;
            cursor: pointer;
            }   
            .hL{
                font-family: 'Trebuchet MS';
                font-weight: bold;
                text-align: left;
                font-size: 40px;
            }
            .hP{
                font-family: 'Trebuchet MS';
                font-weight: bold;
                text-align: left;
                font-size: 20px;
            }
         </style>
            <form action="logout.jsp" method="post">
           
            <button style="float:right;" class="buttonL" type="submit" name="logout" value="logout">logout</button></form>
            <h1 class="hL"><font color="yellow"><%out.println(rs.getString(1));%></font></h1>
            <h3 class="hP"><font color="yellow"><%out.println(rs.getString(3));%></font></h3>

        <h1><b>.. BlackJack ..</b></h1>
        <p id="message-el">Want to Play a Round ?</p>
        <p id="cards-el">Cards :  </p>
        <p id="sum-el">Sum :  </p>
        <button onclick="startGame()">START GAME</button><br>
        <button onclick="newCard()">NEW CARD</button>
       <!-- <p id="player-el"></p> -->
        <p id="Rules">Rules :- </p>
        <h4 align="left" id="rule">In this game there are 12 cards Ace,2,3...9 and King, Queen and jack.</h4>
        <h4 align="left" id="rule">Where the score of Ace is [1] and the score of King, Queen and Jack is [10].</h4>
        <h4 align="left" id="rule">Now you will get two cards at first then if you are able to get the sum = [21] then it is a blackJack and you won and if sum if less then [21] you can get one more card and if you got the sum more than [21] then you are out of the game.</h4>
        <h4 style ="color:white" align="right"><small>By:- CHIRANSHU CHATURVEDI.</small></h4>
        <script src="card.js"></script>

        <%
            }else 
            {
                %><h2><font color="yellow"><%out.println("\nInvalid user name and Password :(");%></font></h2>
                <%
            }    
        }
          catch(ClassNotFoundException e)
        {
            out.println("Driver Problem\n"+e.getMessage());
        }
        catch(SQLException e)
        {
            out.println("Record with Given ID already exist"+e.getMessage());
        }
        catch(Exception e)
        {
            out.println("data Insert Problem"+e.getMessage());
        }
        out.close();
        %>
           </body>
        </html>