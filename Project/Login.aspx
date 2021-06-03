<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
</head>
<body>
    <div class="container-fluid" />
    <div class="row min-vh-100">
        <div class="col-12">
            <header class="row">
                <!-- Top Nav -->
                <div class="col-12 bg-dark py-2 d-md-block d-none">
                    <div class="row">
                        <div class="col-auto mr-auto">
                            <ul class="top-nav">
                                <li>
                                    <a href="tel:+92332-3043115"><i class="fa fa-phone-square mr-2"></i>+92332-3043115</a>
                                </li>
                                <li>
                                    <a href="mailto:hassanhadayat3@gmail.com"><i class="fa fa-envelope mr-2"></i>hassanhadayat3@gmail.com</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-auto">
                            <ul class="top-nav">
                                <li>
                                    <a href="register.html"><i class="fas fa-user-edit mr-2"></i>Register</a>
                                </li>
                                <li>
                                    <a href="login.html"><i class="fas fa-sign-in-alt mr-2"></i>Login</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Top Nav -->

                <!-- Header -->
                <div class="col-12 bg-white pt-4">
                    <div class="row">
                        <div class="col-lg-auto">
                            <div class="site-logo text-center text-lg-left">
                                <a href="index.html">Unico</a>
                            </div>
                        </div>
                        <div class="col-lg-5 mx-auto mt-4 mt-lg-0">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="search" class="form-control border-dark" placeholder="Search..." />
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-dark"><i class="fas fa-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-auto text-center text-lg-left header-item-holder">
                            <a href="#" class="header-item">
                                <i class="fas fa-heart mr-2"></i><span id="header-favorite">0</span>
                            </a>
                            <a href="#" class="header-item">
                                <i class="fas fa-shopping-bag mr-2"></i><span id="header-qty" class="mr-3">2</span>
                                <i class="fas fa-money-bill-wave mr-2"></i><span id="header-price">$4,000</span>
                            </a>
                        </div>
                    </div>
                    <!-- Nav -->
                    <div class="row">
                        <nav class="navbar navbar-expand-lg navbar-light bg-white col-12">
                            <button class="navbar-toggler d-lg-none border-0" type="button" data-toggle="collapse" data-target="#mainNav">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="mainNav">
                                <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="electronics" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Brands</a>
                                        <div class="dropdown-menu" aria-labelledby="electronics">
                                            <a class="dropdown-item" href="category.html">Adidas</a>
                                            <a class="dropdown-item" href="category.html">Puma</a>
                                            <a class="dropdown-item" href="category.html">Sketchers</a>
                                            <a class="dropdown-item" href="category.html">Bata</a>
                                            <a class="dropdown-item" href="category.html">Servis</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="fashion" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category</a>
                                        <div class="dropdown-menu" aria-labelledby="fashion">
                                            <a class="dropdown-item" href="category.html">Men's</a>
                                            <a class="dropdown-item" href="category.html">Women's</a>
                                            <a class="dropdown-item" href="category.html">Children's</a>
                                            <a class="dropdown-item" href="category.html">Accessories</a>
                                            <a class="dropdown-item" href="category.html">Footwear</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <!-- Nav -->
                </div>
                <!-- Header -->
            </header>
        </div>
        <div class="col-12">
            <!-- Main Content -->
            <div class="row">
                <div class="col-12 mt-3 text-center text-uppercase">
                    <h2>Login</h2>
                </div>
            </div>
            <main class="row">
                <div class="col-lg-4 col-md-6 col-sm-8 mx-auto bg-white py-3 mb-4">
                    <div class="row">
                        <div class="col-12">
                            <form id="LogIn" runat="server">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <asp:TextBox pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter a valid email!" ID="email" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <asp:TextBox pattern=".{8,}" title="Password must be Eight or more characters" ID="password" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <div class="form-check">
                                        <input type="checkbox" id="remember" class="form-check-input" />
                                        <label for="remember" class="form-check-label ml-2">Remember Me</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="SignInClick" type="submit" runat="server" CssClass="btn btn-outline-dark" Text="Login" OnClick="Signin_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </main>
            <!-- Main Content -->
        </div>
        <div class="col-12 align-self-end">
            <!-- Footer -->
            <footer class="row">
                <div class="col-12 bg-dark text-white pb-3 pt-5">
                    <div class="row">
                        <div class="col-lg-2 col-sm-4 text-center text-sm-left mb-sm-0 mb-3">
                            <div class="row">
                                <div class="col-12">
                                    <div class="footer-logo">
                                        <a href="index.html">Unico</a>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <address>
                                        221B Baker Street<br />
                                        Multan Chungi, Lahore                                       
                                    </address>
                                </div>
                                <div class="col-12">
                                    <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                                    <a href="#" class="social-icon"><i class="fab fa-pinterest-p"></i></a>
                                    <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
                                    <a href="#" class="social-icon"><i class="fab fa-youtube"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-8 text-center text-sm-left mb-sm-0 mb-3">
                            <div class="row">
                                <div class="col-12 text-uppercase">
                                    <h4>Who are we?</h4>
                                </div>
                                <div class="col-12 text-justify">
                                    <p>We are the champions.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-sm-3 col-5 ml-lg-auto ml-sm-0 ml-auto mb-sm-0 mb-3">
                            <div class="row">
                                <div class="col-12 text-uppercase">
                                    <h4>Quick Links</h4>
                                </div>
                                <div class="col-12">
                                    <ul class="footer-nav">
                                        <li>
                                            <a href="#">Home</a>
                                        </li>
                                        <li>
                                            <a href="#">Contact Us</a>
                                        </li>
                                        <li>
                                            <a href="#">About Us</a>
                                        </li>
                                        <li>
                                            <a href="#">Privacy Policy</a>
                                        </li>
                                        <li>
                                            <a href="#">Terms & Conditions</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-1 col-sm-2 col-4 mr-auto mb-sm-0 mb-3">
                            <div class="row">
                                <div class="col-12 text-uppercase text-underline">
                                    <h4>Help</h4>
                                </div>
                                <div class="col-12">
                                    <ul class="footer-nav">
                                        <li>
                                            <a href="#">FAQs</a>
                                        </li>
                                        <li>
                                            <a href="#">Shipping</a>
                                        </li>
                                        <li>
                                            <a href="#">Returns</a>
                                        </li>
                                        <li>
                                            <a href="#">Track Order</a>
                                        </li>
                                        <li>
                                            <a href="#">Report Fraud</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 text-center text-sm-left">
                            <div class="row">
                                <div class="col-12 text-uppercase">
                                    <h4>Newsletter</h4>
                                </div>
                                <div class="col-12">
                                    <form action="#">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter your email..." required="required" />
                                        </div>
                                        <div class="form-group">
                                            <button class="btn btn-outline-light text-uppercase">Subscribe</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- Footer -->
        </div>
    </div>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
</body>
</html>
