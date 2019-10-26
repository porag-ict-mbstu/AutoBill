
<%-- 
    Document   : login
    Created on : Oct 22, 2019, 4:32:40 PM
    Author     : Porag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>

            .formView{
                padding: 50px;
                margin-top: 40px;
                width:350px;
                height:auto;
                box-shadow: 1px 5px 5px #ddd;

            }


        </style>

    </head>
    <body>
        <!--
        <form action="login" method="post">
            Email Address<br><br>
            <input type="email" name="email"/><br><br>
            Password<br><br>
            <input type="password" name="password"/><br><br>
            <input type="submit" name="login"/><br><br>
            <input type="reset" name="Clear"/>
        </form>
        <br>
        Are you new here? <a href="registration.jsp">Register Now</a>
        -->

    <center>



        <div class="formView">

            <i class="fa fa-address-book" style="font-size:48px;"></i>
            <h4>Login Panel</h4>
            

            <form action="admin.jsp" method="post" >
                <div class="form-group">
                    <label for="uname">Email Address</label>
                    <input type="email" class="form-control"  placeholder="Enter email" name="email" required>

                </div>
                <div class="form-group">
                    <label for="pwd">Password</label>
                    <input type="password" class="form-control"  placeholder="Enter password" name="password" required>

                </div>

                <div style="justify-content: space-between">
                    <button type="submit" class="btn btn-primary">Login</button>
                    <button style="margin-left:50px" type="reset" class="btn btn-danger">Clear</button>
                </div>

                <br/>
                

            </form>


        </div>


    </center>






</body>
</html>
