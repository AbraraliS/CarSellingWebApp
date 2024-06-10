<%-- 
    Document   : userProfile
    Created on : 30-Apr-2024, 1:34:03 pm
    Author     : Abrarali
--%>
<%@page import="carsellbuy.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Car Deal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/style.css">
        <style>

            /* styles.css */
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }
            /* NavBar */
            .navbar1 {
                height: 100%;
                width: 25%;
                background-color: #fafffd;
                color: #000000;
                position: fixed;
                top: 9vh;
                left: 0;
                display: flex;
                flex-direction: column;
                align-items: center;
                border-right: 4px solid#29ca8e;
                /* justify-content: space-between; */
            }
            .imgcontainer1 {
                text-align: center;
                margin: 24px 0 12px 0;
            }
            img.avatar {
                width: 40%;
                border-radius: 50%;
            }
            .navbar1 li{
                 padding: 1vh 2vh;
                border: 2px;
                margin: 5vh 2vh;
                list-style: none;
                justify-content: space-between;
                width: 100%;
                border-right: 2px solid #29ca8e;
                box-shadow: 0 4px 8px -4px #29ca8e;
            }
         .navbar1   .active1{
                border-bottom: 6px solid #116647;
            }
            .navbar1 a {
               
                text-decoration: none;
                color: #000000;
                font-size: 16px;
                text-align: center;
                transition: 0.3s;
             
            }
            .navbar1 li:hover {
                opacity: 0.8;
                border-right: 2px solid black;
                border-bottom: 6px solid #116647;
                box-shadow: 0 2px 2px -2px #29ca8e;
            }

            /* Profile css */
            .profile-container1 {
                width: 60%;
                margin: 10% 30%;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-shadow: 0 4px 8px 2px #29ca8e;
            }

            .profile-field1 {
                margin-bottom: 2vh;

            }
            .profile-field1 label:hover {
                border-bottom: 2px solid #29ca8e;
            }

            .profile-field1 label {
                font-weight: bold;
            }

            /*            .edit-profile-button {
                            background-color: #29ca8e;
                            color: #fff;
                            border: none;
                            padding: 10px 20px;
                            border-radius: 5px;
                            cursor: pointer;
                        }*/

            table{
                border-collapse: collapse;
                width: 100%;
            }
            th, td{
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }
            th {
                background-color: #f2f2f2;
            }</style>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            session = request.getSession();
            String name = (String) session.getAttribute("Username");
            int userid = (Integer) session.getAttribute("UserID");


        %>

        <!-- MENU -->
        <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
            <div class="container">

                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="#" class="navbar-brand">Car Deal</a>
                </div>

                <!-- MENU LINKS -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-nav-first">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="cars.jsp">Buy Cars</a></li>
                        <li><a href="SellCar2.jsp">Sell Cars</a></li>
                        <li><a href="about-us.jsp">About Us</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>

                            <ul class="dropdown-menu">
                                <li><a href="blog-posts.jsp">Blog</a></li>
                                <li><a href="team.jsp">Team</a></li>
                                <li><a href="testimonials.jsp">Testimonials</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.jsp">Contact Us</a></li>

                    </ul>
                    <div class="ulright" style="margin-left: 50vw; display: flex; justify-content: space-between;">
                        <%                            if (session.getAttribute("UserID") == null) {
                                out.println("<a href=userRegister.jsp class=ulaa1> <img src=icons/usericon.png height=14px width=14px >Register</a>");
                                out.println("<a href=login.jsp class=ulaa2> <img src=icons/usericon.png height=14px width=14px >Login</a>");
                                out.println("<a href=# >SUBSCRIBE</a>");
                            } else {
                                out.println("<img src=icons/user2icon.png  height=14px width=14px >" + "Welcome " + name);
                                out.println("<a href=userProfile.jsp class=ulaa1><img src=icons/user2icon.png height=14px width=14px>Profile</a>");
                                out.println("<a href=logout class=ulaa3><img src=icons/usericon.png height=14px width=14px >Logout</a>");
                            }
                        %>

                    </div>

                </div>
        </section>



        <!-- navBar -->
        <div class="navbar1">
            <div class="imgcontainer1">
                <img src="icons/usericon.png"  alt="Avatar" class="avatar">
            </div>
            <ul>
               <li><a href="userProfile.jsp" >Profile</a></li>
                <li><a href="userUpdate.jsp">Update Profile</a></li>
             <li><a href="BuyHist.jsp">Buy History</a></li>
                 <li  class="active1"><a href="SellHist.jsp">Sell History</a></li>
                <li><a href="MyUCars.jsp">My Cars</a></li>
                <li><a href="ChangePass.jsp">Change Password</a></li>
<!--                <li><a href="#privacy-policy">Privacy Policy</a></li>-->
            </ul>
        </div>
 <div class="profile-container1">
     <h1>Sell History</h1>
    <table border="1">
            <tr><th>Car Brand</th><th>Price</th><th>Model</th><th>Date</th><th>Seller</th>
                   
            <tr><td>Suzuki</td><td>₹320000.00</td><td>Ertiga</td><td>24/03/2024 </td><td>Sahaj</td>
                <tr><td>Mahindra</td><td>₹220000.00</td><td>Scorpio</td><td>26/04/2024 </td><td>Suraj</td>

            
            </table>
               
</div>

        <!--        <div class="profile-container1">
                    <h1>User Details</h1>
                    <iframe src="carsfor" width="100%" height="400px"></iframe>        
                </div>-->
        <!-- SCRIPTS -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>
