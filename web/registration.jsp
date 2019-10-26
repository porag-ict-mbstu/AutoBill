<%-- 
    Document   : registration
    Created on : Oct 22, 2019, 4:19:04 PM
    Author     : Porag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
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
                width:450px;
                height:auto;
                box-shadow: 1px 5px 5px #ddd;

            }


        </style>

    </head>
    <body>
        
        
<!--        <h1>Registration Panel</h1>
        <form action="registration" method="post">
            First Name <input type="text" name="fname"/><br><br>
            Last Name <input type="text" name="lname"/><br><br>
            Address <input type="text" name="address"/><br><br>
            Phone <input type="text" name="phone"/><br><br>
            Email <input type="email" name="email"/><br><br>
            Birth Date <input type="text" name="birthdate"/><br><br>
            Password <input type="password" name="password"/><br><br>
            <input type="submit" value="Register"/><br><br>
            <input type="reset" value="Cancel"/><br><br>
        </form>-->
        
        
        
        
        
        
         <center>



        <div class="formView">

            <i class="fa fa-address-book" style="font-size:48px;"></i>
            <h4>Registration Panel</h4>
            

            <form action="registration" method="post" >
                
                <table>
                    
                    <tr>
                        <td style="text-align:left;">First Name </td>
                        <td style="text-align:right"><input type="text" class="form-control" name="fname" required="" /></td>
                    </tr>
                    
                     <tr>
                        <td style="text-align:left;">Last Name </td>
                        <td style="text-align:right"><input type="text" class="form-control" name="lname" required=""/></td>
                    </tr>
                    
                     <tr>
                        <td style="text-align:left;">Address </td>
                        <td style="text-align:right"><input type="text" class="form-control" name="address" required=""/></td>
                    </tr>
                    
                     <tr>
                        <td style="text-align:left;">Phone </td>
                        <td style="text-align:right"><input type="text" class="form-control" name="phone" required=""/></td>
                    </tr>
                    
                     <tr>
                        <td style="text-align:left;">Email </td>
                        <td style="text-align:right"><input type="text" class="form-control" name="email" required=""/></td>
                    </tr>
                    
                     <tr>
                        <td style="text-align:left;">Birth Date </td>
                        <td style="text-align:right">
                            <input type="date" class="form-control" name="birthdate" required=""/>
                           
                        </td>
                        <td> <i class="fa fa-calendar" ></i> </td>
                         
                    </tr>
                    
                     <tr>
                        <td style="text-align:left;">Password </td>
                        <td style="text-align:right"><input type="password" class="form-control" name="password" required=""/></td>
                    </tr>
                    
                </table>
                
              
                <div style="justify-content: space-between; margin-top:10px;">
                    <button type="submit" class="btn btn-primary">Register</button>
                    <a href="login.jsp" style="margin-left:50px"  class="btn btn-danger">Cancel</a>
                </div>

            </form>


        </div>


    </center>



        
        
        
        
        
        
        
        
    </body>
</html>
