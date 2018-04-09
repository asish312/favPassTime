<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="myFavpasTime.Login" EnableEventValidation="false" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>PassTime</title>
    <style>
       
    </style>
    <script src="js/modernizr.js"></script>
    <link href="css/reset.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css">
    <script src="dist/jquery-3.2.1.js"></script>


    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/flexslider.css" />
    <link rel="stylesheet" href="css/jquery.fancybox.css" />
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="stylesheet" href="css/font-icon.css" />
    <link rel="stylesheet" href="css/animate.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <!-- header section -->
            <section class="banner" role="banner">
                <header id="header">
                    <div class="header-content clearfix">
                        <a class="logo" href="index.aspx">Fav Passtime</a>
                        <nav class="navigation" role="navigation">
                            <ul class="primary-nav">
                                <li><a href="#intro">About</a></li>
                                <li><a href="#services">services</a></li>
                                <li><a href="#works">Works</a></li>
                                <li><a href="#teams">Our Team</a></li>
                                <li><a href="#testimonials">Testimonials</a></li>
                                <li><a href="#contact">Contact</a></li>
                                <li><a class="btn btn-launch" href="javascript:;" data-toggle="modal" data-target="#loginModal">Sign In</a></li>

                            </ul>
                        </nav>
                        <%-- <nav class="primary-nav">
                            <ul class="primary-nav">
                                <!-- inser more links here -->
                            
                            </ul>
                        </nav>--%>
                        <a href="#" class="nav-toggle">Menu<span></span></a>
                    </div>
                </header>
                <%-- <header role="banner">

            <nav class="main-nav">
                <ul>
                    <!-- inser more links here -->
                    <li><a class="cd-signin" href="#0">Sign in</a></li>
                    <li><a class="cd-signup" href="#0">Sign up</a></li>
                </ul>
            </nav>
        </header>--%>


                <!-- banner text -->
                <div class="container">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="banner-text text-center">
                            <h2 class='text-info'>Hey... I'm blue</h2>
                            <p class="text-white">
                                Welcome...
                               
                            </p>
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Login</button>

                            <a href="https://www.facebook.com/panda.asish/asishpics" class="btn btn-large">Connect with Me..</a>

                        </div>
                        <!-- banner text -->
                    </div>
                </div>

            </section>
            <!-- header section -->


            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Login</h4>
                        </div>
                        <div class="modal-body">
                            <asp:Login ID="Login1" runat="server" OnAuthenticate="ValidateUser" class="text-white">
                                <LayoutTemplate>
                                    <table class="table-responsive">
                                        <tr>
                                            <td>
                                                <table class="table-responsive">
                                                    <tr>
                                                        <td colspan="2">Log In</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="UserNameLabel" class="form-group-label" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="UserName" class="form-control col-md-7 col-xs-12" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="color: Red;">
                                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" class="btn btn-info" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                            </asp:Login>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>




            <!-- intro section -->
            <section id="intro" class="section intro">
                <div class="container">
                    <div class="col-md-8 col-md-offset-2 text-center">
                        <h3>Hire Me!!</h3>
                        <p>
                            Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.!
                        </p>
                        <p>Well, You won't Regret afterwards! :) </p>
                    </div>
                </div>
            </section>
            <!-- intro section -->


            <!-- -Login Modal -->
            <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content login-modal">
                        <div class="modal-header login-modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title text-center" id="loginModalLabel">USER AUTHENTICATION</h4>
                        </div>
                        <div class="modal-body">
                            <div class="text-center">
                                <div role="tabpanel" class="login-tab">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a id="signin-taba" href="#home" aria-controls="home" role="tab" data-toggle="tab">Sign In</a></li>
                                        <li role="presentation"><a id="signup-taba" href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Sign Up</a></li>
                                        <li role="presentation"><a id="forgetpass-taba" href="#forget_password" aria-controls="forget_password" role="tab" data-toggle="tab">Forget Password</a></li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active text-center" id="home">
                                            &nbsp;&nbsp;
						    		<span id="login_fail" class="response_error" style="display: none;">Loggin failed, please try again.</span>
                                            <div class="clearfix"></div>
                                            <div>
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                                        <input type="text" class="form-control" id="login_username" placeholder="Username" />

                                                    </div>
                                                    <span class="help-block has-error" id="email-error"></span>
                                                </div>
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <div class="input-group-addon"><i class="fa fa-lock"></i></div>
                                                        <input type="password" class="form-control" id="password" placeholder="Password" />
                                                    </div>
                                                    <span class="help-block has-error" id="password-error"></span>
                                                </div>
                                                <button type="button" id="login_btn" class="btn btn-block bt-login" data-loading-text="Signing In....">Login</button>
                                                <div class="clearfix"></div>
                                                <div class="login-modal-footer">
                                                    <div class="row">
                                                        <div class="col-xs-8 col-sm-8 col-md-8">
                                                            <i class="fa fa-lock"></i>
                                                            <a href="javascript:;" class="forgetpass-tab">Forgot password? </a>

                                                        </div>

                                                        <div class="col-xs-4 col-sm-4 col-md-4">
                                                            <i class="fa fa-check"></i>
                                                            <a href="javascript:;" class="signup-tab">Sign Up </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="profile">
                                            &nbsp;&nbsp;
						    	    <span id="registration_fail" class="response_error" style="display: none;">Registration failed, please try again.</span>
                                            <div class="clearfix"></div>
                                            <div>
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                                        <input type="text" class="form-control" id="username" placeholder="Username" />
                                                    </div>
                                                    <span class="help-block has-error" data-error='0' id="username-error"></span>
                                                </div>
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <div class="input-group-addon"><i class="fa fa-at"></i></div>
                                                        <input type="text" class="form-control" id="remail" placeholder="Email" />
                                                    </div>
                                                    <span class="help-block has-error" data-error='0' id="remail-error"></span>
                                                </div>
                                                <button type="button" id="register_btn" class="btn btn-block bt-login" data-loading-text="Registering....">Register</button>
                                                <div class="clearfix"></div>
                                                <div class="login-modal-footer">
                                                    <div class="row">
                                                        <div class="col-xs-8 col-sm-8 col-md-8">
                                                            <i class="fa fa-lock"></i>
                                                            <a href="javascript:;" class="forgetpass-tab">Forgot password? </a>

                                                        </div>

                                                        <div class="col-xs-4 col-sm-4 col-md-4">
                                                            <i class="fa fa-check"></i>
                                                            <a href="javascript:;" class="signin-tab">Sign In </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane text-center" id="forget_password">
                                            &nbsp;&nbsp;
						    	    <span id="reset_fail" class="response_error" style="display: none;"></span>
                                            <div class="clearfix"></div>
                                            <div>
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                                        <input type="text" class="form-control" id="femail" placeholder="Email">
                                                    </div>
                                                    <span class="help-block has-error" data-error='0' id="femail-error"></span>
                                                </div>

                                                <button type="button" id="reset_btn" class="btn btn-block bt-login" data-loading-text="Please wait....">Forget Password</button>
                                                <div class="clearfix"></div>
                                                <div class="login-modal-footer">
                                                    <div class="row">
                                                        <div class="col-xs-6 col-sm-6 col-md-6">
                                                            <i class="fa fa-lock"></i>
                                                            <a href="javascript:;" class="signin-tab">Sign In </a>

                                                        </div>

                                                        <div class="col-xs-6 col-sm-6 col-md-6">
                                                            <i class="fa fa-check"></i>
                                                            <a href="javascript:;" class="signup-tab">Sign Up </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- - Login Model Ends Here -->


            <!-- services section -->
            <section id="services" class="services service-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 services text-center">
                            <span class="icon icon-strategy"></span>
                            <div class="services-content">
                                <h5>Strategy & Consulting</h5>
                                <p>No Strategy Contents</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 services text-center">
                            <span class="icon icon-briefcase"></span>
                            <div class="services-content">
                                <h5>corporate identity</h5>
                                <p>No Corporate identity Contents</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 services text-center">
                            <span class="icon icon-tools"></span>
                            <div class="services-content">
                                <h5>web design and development</h5>
                                <p>No web design and development contents.</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 services text-center">
                            <span class="icon icon-genius"></span>
                            <div class="services-content">
                                <h5>Branding</h5>
                                <p>No Branding.</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 services text-center">
                            <span class="icon icon-megaphone"></span>
                            <div class="services-content">
                                <h5>Digital marketing</h5>
                                <p>No Digital marketing.</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 services text-center">
                            <span class="icon icon-trophy"></span>
                            <div class="services-content">
                                <h5>Promotion material</h5>
                                <p>No Promotion material.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- services section -->
            <!-- work section -->
            <section id="works" class="works section no-padding">
                <div class="container-fluid">
                    <div class="row no-gutter">
                        <div class="col-lg-3 col-md-6 col-sm-6 work">
                            <a href="images/work-1.jpg" class="work-box">
                                <img src="images/work-1.jpg" alt="">
                                <div class="overlay">
                                    <div class="overlay-caption">
                                        <h5>Project Name1</h5>
                                        <p>Website Design1</p>
                                    </div>
                                </div>
                                <!-- overlay -->
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 work">
                            <a href="images/work-2.jpg" class="work-box">
                                <img src="images/work-2.jpg" alt="">
                                <div class="overlay">
                                    <div class="overlay-caption">
                                        <h5>Project Name2</h5>
                                        <p>Website Design2</p>
                                    </div>
                                </div>
                                <!-- overlay -->
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 work">
                            <a href="images/work-3.jpg" class="work-box">
                                <img src="images/work-3.jpg" alt="">
                                <div class="overlay">
                                    <div class="overlay-caption">
                                        <h5>Project Name3</h5>
                                        <p>Website Design3</p>
                                    </div>
                                </div>
                                <!-- overlay -->
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 work">
                            <a href="images/work-4.jpg" class="work-box">
                                <img src="images/work-4.jpg" alt="">
                                <div class="overlay">
                                    <div class="overlay-caption">
                                        <h5>Project Name4</h5>
                                        <p>Website Design4</p>
                                    </div>
                                </div>
                                <!-- overlay -->
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 work">
                            <a href="images/work-5.jpg" class="work-box">
                                <img src="images/work-5.jpg" alt="">
                                <div class="overlay">
                                    <div class="overlay-caption">
                                        <h5>Project Name5</h5>
                                        <p>Website Design5</p>
                                    </div>
                                </div>
                                <!-- overlay -->
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 work">
                            <a href="images/work-6.jpg" class="work-box">
                                <img src="images/work-6.jpg" alt="">
                                <div class="overlay">
                                    <div class="overlay-caption">
                                        <h5>Project Name6</h5>
                                        <p>Website Design6</p>
                                    </div>
                                </div>
                                <!-- overlay -->
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 work">
                            <a href="images/work-7.jpg" class="work-box">
                                <img src="images/work-7.jpg" alt="">
                                <div class="overlay">
                                    <div class="overlay-caption">
                                        <h5>Project Name7</h5>
                                        <p>Website Design7</p>
                                    </div>
                                </div>
                                <!-- overlay -->
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 work">
                            <a href="images/work-8.jpg" class="work-box">
                                <img src="images/work-8.jpg" alt="">
                                <div class="overlay">
                                    <div class="overlay-caption">
                                        <h5>Project Name8</h5>
                                        <p>Website Design8</p>
                                    </div>
                                </div>
                                <!-- overlay -->
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- work section -->
            <!-- our team section -->
            <section id="teams" class="section teams">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="person">
                                <img src="images/team-1.jpg" alt="" class="img-responsive">
                                <div class="person-content">
                                    <h4>Don</h4>
                                    <h5 class="role">The Mastermind</h5>
                                    <p>Ha HA. </p>
                                </div>
                                <ul class="social-icons clearfix">
                                    <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                                    <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                                    <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                                    <li><a href="#"><span class="fa fa-dribbble"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="person">
                                <img src="images/team-2.jpg" alt="" class="img-responsive">
                                <div class="person-content">
                                    <h4>Don 1</h4>
                                    <h5 class="role">Creative head</h5>
                                    <p>Ha Ha Haa 1.</p>
                                </div>
                                <ul class="social-icons clearfix">
                                    <li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-linkedin"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-dribbble"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="person">
                                <img src="images/team-3.jpg" alt="" class="img-responsive">
                                <div class="person-content">
                                    <h4>Don 2</h4>
                                    <h5 class="role">Technical lead</h5>
                                    <p>Ha Ha Ha 2.</p>
                                </div>
                                <ul class="social-icons clearfix">
                                    <li><a href="https://www.facebook.com" class=""><span class="fa fa-facebook"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-linkedin"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-dribbble"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="person">
                                <img src="images/team-4.jpg" alt="" class="img-responsive">
                                <div class="person-content">
                                    <h4>Don 3</h4>
                                    <h5 class="role">Marketing head</h5>
                                    <p>Ha Ha Ha</p>
                                </div>
                                <ul class="social-icons clearfix">
                                    <li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-linkedin"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
                                    <li><a href="#" class=""><span class="fa fa-dribbble"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- our team section -->
            <!-- Testimonials section -->
            <section id="testimonials" class="section testimonials no-padding">
                <div class="container-fluid">
                    <div class="row no-gutter">
                        <div class="flexslider">
                            <ul class="slides">
                                <li>
                                    <div class="col-md-12">
                                        <blockquote>
                                            <h1>"One Two Three..." </h1>
                                            <p>Ha HA Ha... Content</p>
                                        </blockquote>
                                    </div>
                                </li>
                                <li>
                                    <div class="col-md-12">
                                        <blockquote>
                                            <h1>"One1 Two1 Three1..." </h1>
                                            <p>Ha HA Ha1... Content1</p>
                                        </blockquote>
                                    </div>
                                </li>
                                <li>
                                    <div class="col-md-12">
                                        <blockquote>
                                            <h1>"One2 Two2 Three2..." </h1>
                                            <p>Ha HA Ha2... Content2</p>
                                        </blockquote>
                                    </div>
                                </li>
                                <li>
                                    <div class="col-md-12">
                                        <blockquote>
                                            <h1>"One3 Two3 Three3..." </h1>
                                            <p>Ha HA Ha3... Content3</p>
                                        </blockquote>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Testimonials section -->



            <!-- contact section -->
            <section id="contact" class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 conForm">
                            <h5>Shoot An Email</h5>
                            <p>We are happy to talk you.Kindly share your valuable feedback. TIA :) </p>
                            <div id="message"></div>
                            <div id="cform">
                                <input name="name" id="name" type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Your name..." />
                                <input name="email" id="email" type="email" class=" col-xs-12 col-sm-12 col-md-12 col-lg-12 noMarr" placeholder="Email Address..." />
                                <textarea name="comments" id="comments" cols="" rows="" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="Please write something..."></textarea>
                                <input type="submit" id="submit" name="send" class="submitBnt" value="Send your query" />
                                <div id="simple-msg"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- contact section -->

            <!-- Login section -->
            <!-- Login section -->

            <!-- Footer section -->
            <footer class="footer">
                <div class="footer-top section">
                    <div class="container">
                        <div class="row">
                            <div class="footer-col col-md-6">
                                <h5>Our Office Location</h5>
                                <p>
                                    It's on the Cloud.<br />
                                    <br />
                                    So Please dun try to find Me
                                </p>
                                <p>Copyright © 2017 asish.k.panda Inc. All Rights Reserved. Made with <i class="fa fa-heart pulse"></i>by <a href="http://www.asishpanda.cloudapp.net/">AsishK Panda</a></p>
                            </div>
                            <div class="footer-col col-md-3">
                                <h5>Services We Offer</h5>
                                <p>
                                    <ul>
                                        <li><a href="#">FaceBook</a></li>
                                        <li><a href="#">WhatsApp</a></li>
                                        <li><a href="#">Instagram</a></li>
                                        <li><a href="#">Twitter</a></li>
                                        <li><a href="#">Social Media</a></li>
                                    </ul>
                                </p>
                            </div>
                            <div class="footer-col col-md-3">
                                <h5>Share with Love</h5>
                                <ul class="footer-share">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- footer top -->

            </footer>
            <!-- Footer section -->
            <!-- JS FILES -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.flexslider-min.js"></script>
            <script src="js/jquery.fancybox.pack.js"></script>
            <script src="js/retina.min.js"></script>
            <script src="js/modernizr.js"></script>
            <script src="js/main.js"></script>
            <script type="text/javascript" src="js/jquery.contact.js"></script>
            <script>
                $(document).ready(function () {
                    $(document).on('click', '.signup-tab', function (e) {
                        e.preventDefault();
                        $('#signup-taba').tab('show');
                    });

                    $(document).on('click', '.signin-tab', function (e) {
                        e.preventDefault();
                        $('#signin-taba').tab('show');
                    });

                    $(document).on('click', '.forgetpass-tab', function (e) {
                        e.preventDefault();
                        $('#forgetpass-taba').tab('show');
                    });
                });
            </script>


        </div>
    </form>
</body>
</html>
