<%@page import="connect.DbManager"%>
<%
   int id=Integer.parseInt(request.getParameter("id"));
   DbManager dm=new DbManager();
   String query="delete from news where id='"+id+"'";
   if(dm.insertUpdateDelete(query)==true)
   {
       out.print("<script>alert('News is deleted');window.location.href='adminhome.jsp';</script>");
   }
   else
   {
             out.print("<script>alert('News is Not deleted');window.location.href='adminhome.jsp';</script>"); 
   }
   
%>    
