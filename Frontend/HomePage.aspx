<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Frontend_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Hospital management System </title>

    <link rel="shortcut icon" href="../assets/images/fav.jpg">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/fontawsom-all.min.css">
     <link rel="stylesheet" href="../assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />

</head>
    <body>
    <!-- ################# Header Starts Here#######################--->   
      <header id="menu-jk">
    
        <div id="nav-head" class="header-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-3  col-sm-12" style="color:#000;font-weight:bold; font-size:42px; margin-top: 1% !important;">HMS
                       <a data-toggle="collapse" data-target="#menu" href="#menu" ><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
                    </div>
                    <div id="menu" class="col-lg-8 col-md-9 d-none d-md-block nav-item">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#Patients">Patients</a></li>
                            <li><a href="#Pharmacy">Pharmacy</a></li>
                            <li><a href="#Doctors">Doctors</a></li>
                            <li><a href="#gallery">Gallery</a></li>
                            <li><a href="#Contact_us">Contact us</a></li>  
                        </ul>
                    </div>
                   <!-- <div class="col-sm-2 d-none d-lg-block appoint">
                        <a class="btn btn-success" href="hms/user-login.php">Book an Appointment</a>
                    </div>-->
                </div>

            </div>
        </div>
    </header>
    
     <!-- ################# Slider Starts Here#######################--->

    <div class="slider-detail">

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item ">
                    <img class="d-block w-100" src="../assets/images/slider/slider_2.jpg" alt="Second slide">
                    <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated bounceInDown">Hospital Management System</h5>                                                     
                    </div>
                </div>
                
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../assets/images/slider/slider_3.jpg" alt="Third slide">
                      <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated bounceInDown">Pharmacy Management System</h5>                                                 
                    </div>             
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


    </div>
    
  <!--  ************************* Logins ************************** -->
    
    
   <section id="Patients" class="our-blog container-fluid">
    <div class="container">
        <div class="inner-title">
            <h2 class="text-center text-primary">Logins</h2>
        </div>
        <div class="row">
            <!-- Patient Login Card -->
            <div class="col-sm-6">
                <div class="card">
                    <img src="../assets/images/patient.jpg" class="card-img-top" alt="Patient Login">
                    <div class="card-body text-center">
                        <h5 class="card-title">Patient Login</h5>
                        <a href="OldPatients.aspx" target="_blank">
                            <button class="btn btn-primary btn-lg">Click Here</button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- New Patient Login Card -->
            <div class="col-sm-6">
                <div class="card">
                    <img src="../assets/images/doctor.jpg" class="card-img-top" alt="New Patient Login">
                    <div class="card-body text-center">
                        <h5 class="card-title">New Patient Login</h5>
                        <a href="Patients.aspx" target="_blank">
                            <button class="btn btn-primary btn-lg">Click Here</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
    <!-- ################# Our Pharmacy Starts Here#######################--->
     <section id="Pharmacy" class="our-blog container-fluid">
    <div class="container">
        <div class="inner-title">
            <h2 class="text-center text-primary">Pharmacy</h2>
        </div>
        <div class="row">
            <!-- view Pharmacy -->
            <div class="col-sm-6">
                <div class="card">
                    <img src="../assets/images/patient.jpg" class="card-img-top" alt="Patient Login">
                    <div class="card-body text-center">
                        <h5 class="card-title">View Pharmacy</h5>
                        <a href="Order.aspx" target="_blank">
                            <button class="btn btn-primary btn-lg">Click Here</button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Booked pharmacy -->
            <div class="col-sm-6">
                <div class="card">
                    <img src="../assets/images/doctor.jpg" class="card-img-top" alt="New Patient Login">
                    <div class="card-body text-center">
                        <h5 class="card-title">Booked Pharmacy</h5>
                        <a href="BookedOrders.aspx" target="_blank">
                            <button class="btn btn-primary btn-lg">Click Here</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

   
            <!--  ************************* Gallery Starts Here ************************** -->
        <div id="gallery" class="gallery">    
           <div class="container">
              <div class="inner-title">
                <h2>Our Gallery</h2>
            </div>
              <div class="row">
        <br/>



            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
                <img src="../assets/images/gallery/gallery_01.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter sprinkle">
                <img src="../assets/images/gallery/gallery_02.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
                <img src="../assets/images/gallery/gallery_03.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation">
                <img src="../assets/images/gallery/gallery_04.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
                <img src="../assets/images/gallery/gallery_05.jpg" class="img-responsive">
            </div>

          

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
                <img src="../assets/images/gallery/gallery_06.jpg" class="img-responsive">
            </div>

        </div>
    </div>
       
       
       </div>
        <!-- ######## Gallery End ####### -->
    
    
     <!--  ************************* Contact Us Starts Here ************************** -->
    
    <section id="contact_us" class="contact-us-single">
        <div class="row no-margin">

            <div  class="col-sm-12 cop-ck">
                <form method="post">
                <h2 >Contact Form</h2>
                    <div class="row cf-ro">
                        <div  class="col-sm-3"><label>Enter Name :</label></div>
                        <div class="col-sm-8"><input type="text" placeholder="Enter Name" name="fullname" class="form-control input-sm" required ></div>
                    </div>
                    <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Email Address :</label></div>
                        <div class="col-sm-8"><input type="text" name="emailid" placeholder="Enter Email Address" class="form-control input-sm"  required></div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Mobile Number:</label></div>
                        <div class="col-sm-8"><input type="text" name="mobileno" placeholder="Enter Mobile Number" class="form-control input-sm" required ></div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Enter  Message:</label></div>
                        <div class="col-sm-8">
                          <textarea rows="5" placeholder="Enter Your Message" class="form-control input-sm" name="description" required></textarea>
                        </div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label></label></div>
                        <div class="col-sm-8">
                         <button class="btn btn-success btn-sm" type="submit" name="submit">Send Message</button>
                        </div>
                </div>
            </form>
            </div>
     
        </div>
    </section>
    
    
    
    
    
    <!-- ################# Footer Starts Here#######################--->


    <footer class="footer">
        <div class="container">
            <div class="row">
       
                <div class="col-md-6 col-sm-12">
                    <h2>Useful Links</h2>
                    <ul class="list-unstyled link-list">
                        <li><a ui-sref="about" href="#Patients">Patients</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="portfolio" href="#Pharmacy">Pharmacy</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="products" href="#Doctors">Doctors</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="gallery" href="#gallery">Gallery</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="contact" href="#contact_us">Contact us</a><i class="fa fa-angle-right"></i></li>
                    </ul>
                </div>
                
            </div>
        </div>
        

    </footer>
    <div class="copy">
            <div class="container">
         Hospital Management System
                
     
            </div>

        </div>
    
    </body>

<script src="../assets/js/jquery-3.2.1.min.js"></script>
<script src="../assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/plugins/scroll-nav/js/jquery.easing.min.js"></script>
<script src="../assets/plugins/scroll-nav/js/scrolling-nav.js"></script>
<script src="../assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>

<script src="../assets/js/script.js"></script>



</html>
