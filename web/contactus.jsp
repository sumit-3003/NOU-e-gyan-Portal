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
    <jsp:include page="header.jsp"/>
    
    <!--main section start-->
    <div class="row">
        <div class="col-sm-12" style="background-color: pink;min-height: 600px;">
            <h2 style="color: blue;text-align: center">Enquiry Form</h2>
            <form class="form-group" method="post" action="controller.jsp">
                <input type="hidden" name="page" value="contactus"/>
                <table class="table table-bordered" style="width: 70%;margin: auto;">
                    <tr>
                        <td>Enter Name</td>
                        <td>
                            <input type="text" name="name" class="form-control"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Select Gender</td>
                        <td>
                            <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                            <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Address</td>
                        <td>
                            <textarea name="address" class="form-control"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Contact no.</td>
                        <td>
                            <input type="number" name="contactno" class="form-control"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Email Address</td>
                        <td>
                            <input type="email" name="emailaddress" class="form-control"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Enquiry Text</td>
                        <td>
                            <textarea name="enquirytext" class="form-control"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <button type="submit" class="btn-success">Submit</button>
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

