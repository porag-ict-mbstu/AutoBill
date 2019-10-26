<%-- 
    Document   : admin
    Created on : Oct 23, 2019, 8:58:55 AM
    Author     : Porag
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.ViewModel"%>
<%@page import="Controller.Task"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>


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

        <script>

            $(document).ready(function () {


                $("#searchUser").keyup(function () {
                    //alert("ok");
                    var sv = $(this).val().toLowerCase();
                    $("#searchTableRow tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(sv) > -1);
                    });
                });


            });



        </script>



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
                        Admin
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Change Password</a>
                        <a class="dropdown-item" href="login.jsp">Logout</a>
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
                    <a href="profile.jsp"> User List </a> 
                </div>
            </div>

            <div class="right-side col-sm-10">

                <div style="text-align: center; padding:15px 20px; justify-content: space-between" class="d-flex">
                    <h4 > User List </h4>
                    <input type="text" id="searchUser" />
                </div>

                <hr style="margin:0px; padding: 0px;">

                <table class="table table-striped" >

                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Email</th>
                            <th>Phone</th>
                        </tr>
                    </thead>

                    <tbody id="searchTableRow">

                        <%
                            Task task = Task.getInstance();
                            List<ViewModel> L = new ArrayList<ViewModel>();
                            L = task.userList();
                            for (ViewModel m : L) {
                                //out.println(m.getName() + " " + m.getAge() + " " + m.getEmail() + " " + m.getPhone() + "<br>");
%>
                        <tr >
                            <td><%=m.getName()%></td>
                            <td><%=m.getAge()%></td>
                            <td><%=m.getEmail()%></td>
                            <td><%=m.getPhone()%></td>
                        </tr>


                        <% } %>

                    </tbody>
                </table>

            </div>
                        
        </div>

        <footer style="width: 100%; height:20px; background:#ddd">

        </footer>








        <!--        <form action="admin.jsp" method="post">
                    <input type="text" name="name"/>
                </form>-->
        <!--        User List-->
        <%//            Task task = Task.getInstance();
//            String name = request.getParameter("name");
//            //out.println(name);
//            if (name == null) {
//                //Task task = new Task();
//                List<ViewModel> L = new ArrayList<ViewModel>();
//                L = task.userList();
//                for (ViewModel m : L) {
//                    out.println(m.getName() + " " + m.getAge() + " " + m.getEmail() + " " + m.getPhone() + "<br>");
//                }
//            } else {
//                //Task task = new Task();
//                List<ViewModel> L = new ArrayList<ViewModel>();
//                L = task.searchList(name);
//                for (ViewModel m : L) {
//                    out.println(m.getName() + " " + m.getAge() + " " + m.getEmail() + " " + m.getPhone() + "<br>");
//                }
//            }
        %>



    </body>
</html>
