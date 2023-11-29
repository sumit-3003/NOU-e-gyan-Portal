<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>noegyan</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.bundle.js"></script>
</head>
<body>
    <script>
        function validate()
        {
            var userid=document.getElementById("userid");
            var password=document.getElementById("password");
            
            if(userid.value=="" || userid.value==null)
            {
                alert('Please enter userid');
                userid.focus();
            }
            else if(password.value=="" || password.value==null)
            {
                alert('Please enter Password');
                password.focus();
            }
            else
            {
                document.getElementById("frmlogin").submit();
            }
        }
    </script>
    <jsp:include page="header.jsp"/>
    
    <!--main section start-->
    <div class="row">
        <div class="col-sm-12" style="background-color: pink;min-height: 600px;">
            <h2 style="color:blue; text-align: center;">Login Page</h2>
            <form method="post" class="form-group" onsubmit="event.preventDefault();validate();" id="frmlogin" action="controller.jsp">
                <input type="hidden" value="login" name="page"/>
                <table class="table table-bordered" style="width: 60%; margin: auto;">
                    <tr>
                        <td>Enter UserId / Roll No</td>
                        <td>
                            <input type="text" name="userid" class="form-control" id="userid"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Password</td>
                        <td>
                            <input type="password" name="password" class="form-control" id="password"/>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <button type="submit" class="btn btn-success">Login</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <!--main section ends-->
    <jsp:include page="footer.jsp"/>
</body>
</html>

