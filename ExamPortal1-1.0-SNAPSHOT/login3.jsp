<%-- 
    Document   : login
    Created on : 07-Mar-2022, 2:39:58 pm
    Author     : Ankit mandloi
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
       String email=request.getParameter("email");
       String password=request.getParameter("password1");
       try{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Ankit1","root","");
        Statement st=con.createStatement();
      //  st.executeUpdate("insert into table1 (ID,password)values('"+email+"','"+password+"')");
        ResultSet rs=st.executeQuery("select * from table2 where ID='"+email+"'") ;
//        PreparedStatement ps=con.prepareStatement("select * from table2 where ID=? and password=?");
//        ps.setString(1,email);
//        ps.setString(2,password);
//        ResultSet rs=ps.executeQuery();
        
        String CorrectPassword="";
        if(rs.next())
        {
          CorrectPassword=rs.getString("password");
         }
         st.close();
         if(CorrectPassword.equals(password))
        {
           response.sendRedirect("Quiz.html"); 
        }  
//        else
//        {
//        
//         
//          //request.setAttribute("error","invalid credentials");
//         
//          response.sendRedirect("index.html");  
//         }
    }
           
             
          
        
    
        
         
    
          
        catch(Exception e)
        {
          out.println(e);
        }
        
        
   %>
   <html>
       <head>
           <style>
               p{
                   font-size: 30px;
                   margin-left: 550px;
                   color:red;
               }
           </style> 
       <body>
           
          <%@include file="index.html"%>
         
       <p>invalid credentials</p> 
           
           
       </body>
       
   </html>