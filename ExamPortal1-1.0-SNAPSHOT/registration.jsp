<%-- 
    Document   : registration
    Created on : 09-Mar-2022, 7:31:26 pm
    Author     : Ankit mandloi
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
       String email=request.getParameter("email");
       String password=request.getParameter("password");
       String course=request.getParameter("course");
       try{
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Ankit1","root","");
        Statement st=con.createStatement();
        st.executeUpdate("insert into table2(ID,password,course)values('"+email+"','"+password+"','"+course+"')");
       
         con.close();  
      }
             
        catch(Exception e)
        {
          out.println(e);
        }
         response.sendRedirect("Successfull.html");
        
     
   %>