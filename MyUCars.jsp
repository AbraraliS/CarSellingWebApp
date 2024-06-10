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
                <li  ><a href="SellHist.jsp">Sell History</a></li>
                <li class="active1"><a href="MyUCars.jsp">My Cars</a></li>
                <li><a href="ChangePass.jsp">Change Password</a></li>
            </ul>
        </div>
        <div class="profile-container1">
            <h1>My Cars</h1>
            <%
                DbConnection db = new DbConnection();

                Connection conn = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;

                try {
                    // Connect to the database
                    conn = db.makeConnection();
                    // SQL query to fetch user data
                    String query = "SELECT * FROM cars2 WHERE Owner2='" + userid + "'";
                    stmt = conn.prepareStatement(query);
                    rs = stmt.executeQuery();

                    // Display user data

            %> <table border="1">
                <tr><th>Car ID</th><th>Car Name</th><th>Registration Year</th><th>Price</th><th>Km Driven</th><th>Brand Name</th><th>Model</th><th>Description</th><th>Photo</th><th>Update</th><th>Delete</th>
                        <% while (rs.next()) {
                                String carid = rs.getString("Car2ID");
                                String carname = rs.getString("car2Name");
                                String regyer = rs.getString("Reg2Year");
                                String price = rs.getString("Price2");
                                String kmdrive = rs.getString("KM2Driven");
                                String brandname = rs.getString("CarBrand2");
                                String model = rs.getString("Model2");
                                String photo = rs.getString("Photos2");
                                String descr = rs.getString("Description2");


                        %>
                <tr><td><%=carid%></td><td><%=carname%></td><td><%=regyer%></td><td>₹<%=price%> </td><td><%=kmdrive%>km </td><td><%=brandname%> </td><td><%=model%> </td><td><%=descr%> </td><td><image src="<%=photo%>" height="60px" width="50px" /> </td><td style='color: blue; cursor: pointer'>Update</td><td style='color: red; cursor: pointer'>Delete</td></tr>

                    <%                    }
                    %></table><%
                        } catch (ClassNotFoundException e) {
                            e.printStackTrace();
                            out.println("Error: " + e.getMessage());
                        }
                %></div>

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
