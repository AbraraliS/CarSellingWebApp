<%-- 
    Document   : contact
    Created on : 02-May-2024, 10:13:17 pm
    Author     : Abrarali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

    </head>
    <body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

   <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            session = request.getSession();
            String name = (String) session.getAttribute("Username");
        %>

        <!-- PRE LOADER -->
        <section class="preloader">
            <div class="spinner">
                <span class="spinner-rotate"></span>
            </div>
        </section>


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
                        <li class="active"><a href="contact.jsp">Contact Us</a></li>

                    </ul>
                    <div class="ulright" style="margin-left: 50vw; display: flex; justify-content: space-between;">
                        <%
                            if (session.getAttribute("UserID") == null) {
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
        <section>
            <div class="container">
                <div class="text-center">
                    <h1>Contact Us</h1>

                    <br>

                    <p class="lead">Have questions or inquiries? Reach out to us at:</p>
                </div>
            </div>
        </section>


        <!-- CONTACT -->
        <section id="contact">
            <div class="container">
                <div class="row">

                    <div class="col-md-6 col-sm-12">
                        <form id="contact-form" role="form" action="" method="post">
                            <div class="col-md-12 col-sm-12">
                                <input type="text" class="form-control" placeholder="Enter full name" name="name" required>

                                <input type="email" class="form-control" placeholder="Enter email address" name="email" required>

                                <textarea class="form-control" rows="6" placeholder="Tell us about your message" name="message" required></textarea>
                            </div>

                            <div class="col-md-4 col-sm-12">
                                <input type="submit" class="form-control" name="send message" value="Send Message">
                            </div>

                        </form>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class="contact-image">
                            <img src="images/contact-1-600x400.jpg" class="img-responsive" alt="">
                        </div>
                    </div>

                </div>
            </div>
        </section>       


          <!-- FOOTER -->
        <footer id="footer">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-6">
                        <div class="footer-info">
                            <div class="section-title">
                                <h2>Headquarter</h2>
                            </div>
                            <address>
                                <p>Palanpur <br>BanasKantha, Gujarat,India</p>
                            </address>

                            <ul class="social-icon">
                                <li><a href="#" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                <li><a href="#" class="fa fa-twitter"></a></li>
                                <li><a href="#" class="fa fa-instagram"></a></li>
                            </ul>

                            <div class="copyright-text"> 
                                <p>Copyright &copy; 2024 CarDeal.com</p>
                                <p>Created by: <a href="#">Abrarali Sunasara</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <div class="footer-info">
                            <div class="section-title">
                                <h2>Contact Info</h2>
                            </div>
                            <address>
                                <p>+91 7203957429</p>
                                <p><a href="mailto:cardeal@company.com">cardeal@gmail.com</a></p>
                            </address>

                            <div class="footer_menu">
                                <h2>Quick Links</h2>
                                <ul>
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="about-us.jsp">About Us</a></li>
                                    <li><a href="terms.jsp">Terms & Conditions</a></li>
                                    <li><a href="contact.jsp">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-12">
                        <div class="footer-info newsletter-form">
                            <div class="section-title">
                                <h2>Newsletter Signup</h2>
                            </div>
                            <div>
                                <div class="form-group">
                                    <form action="#" method="get">
                                        <input type="email" class="form-control" placeholder="Enter your email" name="email" id="email" required>
                                        <input type="submit" class="form-control" name="submit" id="form-submit" value="Send me">
                                    </form>
                                    <span><sup>*</sup> Please note - we do not spam your email.</span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </footer>


        <!-- SCRIPTS -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>