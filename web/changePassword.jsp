<%-- 
    Document   : changePassword
    Created on : Oct 22, 2019, 4:53:23 PM
    Author     : Porag
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.Task"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


        <style>
            html{
                overflow-x: hidden;
            }
        </style>


    </head>
    <body>





        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Navigation</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">

                </ul>
                <div class="dropdown">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                        <%
                            String fname = "", lname = "";
                            String email = (String) session.getAttribute("email");
                            String password = (String) session.getAttribute("password");
                            // Task task = new Task();
                            Task task = Task.getInstance();
                            ResultSet rs = task.getDetails(email, password);
                            while (rs.next()) {
                                //out.println("First Name " + rs.getString("fname") + "<br>");
                                fname = rs.getString("fname");
                                lname = rs.getString("lname");}
                            out.println(fname+" "+lname);
                            
                            
%>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Change Password</a>
                        <a class="dropdown-item" href="#">Logout</a>
                    </div>
                </div>

            </div>
        </nav>

        <style>

            .main-div{

                height: 580px;
            }

            .left-side{
                border:2px solid #aaa;
            }

            .left-side div{
                padding: 10px;
                text-align: center;
                border-bottom: 2px solid #aaa;
            }



            .right-side{
                border:2px solid #aaa;
                text-align: center;
            }

        </style>

        <div class="d-flex main-div row">

            <div class="left-side col-sm-2">
                <div>
                    <a href="profile.jsp"> Profile Page </a> 
                </div>

                <div>
                    <a href="changePassword.jsp">Change Password</a>
                </div>
            </div>

            <div class="right-side col-sm-10">

                <div style="text-align: center">
                    <h4 style="padding:10px 0px"> Change Password </h4>
                </div>
                <hr>


                <form action="change_password" method="post">
                    Previous Password <input type="password" name="oldpassword"/><br><br>
                    New Password <input type="password" name="newpassword"/><br><br>
                    Confirm Password <input type="password" name="newconfirmpassword"/><br><br>
                    <input type="submit" name="Change Password"/><br><br>
                    <input type="reset" name="Clear"/><br>
                </form>



            </div>


        </div>

        <footer style="width: 100%; height:20px; background:#ddd">

        </footer>


    </body>
</html>
