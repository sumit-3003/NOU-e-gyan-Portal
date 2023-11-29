<%-- 
    Document   : studenthome
    Created on : 18 Oct, 2023, 10:53:55 AM
    Author     : skuma
--%>
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
        <script>
            function validate()
            {
                var oldpassword=document.getElementById("oldpassword");
                var newpassword=document.getElementById("newpassword");
                var confirmpassword=document.getElementById("confirmpassword");
                if(oldpassword.value=="" || oldpassword.value==null)
                {
                    alert('Please enter oldpassword');
                    oldpassword.focus();
                }
                else if(newpassword.value=="" || newpassword.value==null)
                {
                    alert('Please enter newpassword');
                    newpassword.focus();
                }
                else if(confirmpassword.value=="" || confirmpassword.value==null)
                {
                    alert('Please enter confirmpassword');
                    confirmpassword.focus();
                }
                else if(newpassword.value!=confirmpassword.value)
                {
                    alert('Newpassword and confirmpassword did not matched');
                    confirmpassword.focus();
                }
                else
                {
                    document.getElementById("frmchangepassword").submit();
                }
            }
        </script>
        <div class="container">
        <jsp:include page="header.jsp"/>
        <div class="row">
            <div class="col-sm-12" style="background-color: pink; min-height: 600px;">
                <h2 style="color:blue;text-align: center">Change Password</h2>
                <form action="admincontroller.jsp" class="form-group" id="frmchangepassword" onsubmit="event.preventDefault();validate()">
                    <input type="hidden" name="page" value="changepassword"/>
                    <table class="table table-bordered" style="margin: auto;width: 70%;">
                        <tr>
                            <td>Enter Old Password</td>
                            <td>
                                <input type="password" name="oldpassword" class="form-control" id="oldpassword"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter New Password</td>
                            <td>
                                <input type="password" name="newpassword" class="form-control" id="newpassword"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm Password</td>
                            <td>
                                <input type="password" name="confirmpassword" class="form-control" id="confirmpassword"/>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success">change Password</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>   
        </div>
    </body>
</html>
<%
    }
%>