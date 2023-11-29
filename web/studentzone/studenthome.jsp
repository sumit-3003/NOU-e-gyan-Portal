<%-- 
    Document   : studenthome
    Created on : 18 Oct, 2023, 10:53:55 AM
    Author     : skuma
--%>
<%
    if(session.getAttribute("studentid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
        
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NOU - Student Zone</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
        <jsp:include page="header.jsp"/>
        <div class="row">
            <div class="col-sm-12" style="background-color: pink; min-height: 600px;"></div>
        </div>
        <jsp:include page="footer.jsp"/>   
        </div>
    </body>
</html>
<%
    }
%>