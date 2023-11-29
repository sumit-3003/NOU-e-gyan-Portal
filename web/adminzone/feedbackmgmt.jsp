
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if(session.getAttribute("adminid")==null)
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
            <div class="col-sm-12" style="background-color: pink; min-height: 600px;">
                <h2 style="color:blue;text-align: center;">FeedBack Management</h2>
                <table class="table table-bordered">
                    <tr>
                        <th>Id</th>
                        <th>Roll No</th>
                        <th>Name</th>
                        <th>Program</th>
                        <th>Branch</th>
                        <th>Year</th>
                        <th>Contact No</th>
                        <th>Subject</th>
                        <th>Feedback</th>
                        <th>Posted Date</th>
                        <th>Delete</th>
                    </tr>
                    <%
                        DbManager dm=new DbManager();
                        String query="select * from response where responsetype='feedback'";
                        ResultSet rs=dm.select(query);
                        while(rs.next())
                        {
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("rollno")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("program")%></td>
                        <td><%=rs.getString("branch")%></td>
                        <td><%=rs.getString("year")%></td>
                        <td><%=rs.getString("contactno")%></td>
                        <td><%=rs.getString("subject")%></td>
                        <td><%=rs.getString("responsetext")%></td>
                        <td><%=rs.getString("responsedate")%></td>
                        <td>
                            <a href="delfeedback.jsp?id=<%=rs.getInt("Id")%>">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </a>
                        </td>
                    </tr>
                    <% } %>
                </table>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>   
        </div>
    </body>
</html>
<%
    }
%>