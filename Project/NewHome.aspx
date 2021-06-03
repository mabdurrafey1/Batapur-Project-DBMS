<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewHome.aspx.cs" Inherits="Project.NewHome" %>

<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="container-fluid">
            <div class="d-grid gap-2 m-1">
                <asp:Button ID="signin" class="btn btn-info" runat="server" Text="Sign In" type="button" OnClick="signin_Click"></asp:Button>
                <asp:Button ID="signup"  class="btn btn-warning" runat="server" Text="Sign Up" type="button" OnClick="signup_Click"></asp:Button>
            </div>
        </div>
        <div class="container">
            <div class="form-outline mb-4">
                <asp:TextBox ID="search" runat="server" CssClass="form-control" required>Search</asp:TextBox>
                <label class="form-label" for="search">Search</label>
            </div>
        </div>
        <div class="row min-vh-100">
            <div class="col-12">

                <div class="col-12">
                    <!-- Main Content -->
                    <main class="row">

                        <!-- Slider -->
                        <div class="col-12 px-0">
                            <div id="slider" class="carousel slide w-100" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#slider" data-slide-to="0" class="active"></li>
                                    <li data-target="#slider" data-slide-to="1"></li>
                                    <li data-target="#slider" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner" role="listbox">
                                    <div class="carousel-item active">
                                        <img src="images/slider-1.jpg" class="slider-img" />
                                    </div>
                                    <div class="carousel-item">
                                        <img src="images/slider-2.jpg" class="slider-img" />
                                    </div>
                                    <div class="carousel-item">
                                        <img src="images/slider-3.jpg" class="slider-img" />
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#slider" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#slider" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                        <!-- Slider -->

                        <!-- Featured Products -->
                        <div class="col-12">
                            <div class="row">
                                <div class="col-12 py-3">
                                    <div class="row">
                                        <div class="col-12 text-center text-uppercase">
                                            <h2>Featured Products</h2>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-1.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">I-5923 RUNNER PRIDE</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <span class="product-price-old">$500
                                                        </span>
                                                        <br />
                                                        <span class="product-price">$500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-2.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">NMD_R1</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <span class="product-price">$1,500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-3.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">NMD_CS2 PRIMEKNIT</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <div class="product-price-old">
                                                            $2,800
                                                        </div>
                                                        <span class="product-price">$2,500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-4.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">POD-S3.1</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <span class="product-price">$4,500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Featured Products -->

                        <div class="col-12">
                            <hr />
                        </div>

                        <!-- Latest Product -->
                        <div class="col-12">
                            <div class="row">
                                <div class="col-12 py-3">
                                    <div class="row">
                                        <div class="col-12 text-center text-uppercase">
                                            <h2>Latest Products</h2>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <span class="new">New</span>
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-1.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">I-5923 RUNNER PRIDE</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <span class="product-price-old">$500
                                                        </span>
                                                        <br />
                                                        <span class="product-price">$500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <span class="new">New</span>
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-2.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">NMD_R1</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <span class="product-price">$1,500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <span class="new">New</span>
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-3.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">NMD_CS2 PRIMEKNIT</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <div class="product-price-old">
                                                            $2,800
                                                        </div>
                                                        <span class="product-price">$2,500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <span class="new">New</span>
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-4.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">POD-S3.1</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <span class="product-price">$4,500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Latest Products -->

                        <div class="col-12">
                            <hr />
                        </div>

                        <!-- Top Selling Products -->
                        <div class="col-12">
                            <div class="row">
                                <div class="col-12 py-3">
                                    <div class="row">
                                        <div class="col-12 text-center text-uppercase">
                                            <h2>Top Selling Products</h2>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-1.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">I-5923 RUNNER PRIDE</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <span class="product-price-old">$500
                                                        </span>
                                                        <br />
                                                        <span class="product-price">$500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-2.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">NMD_R1</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <span class="product-price">$1,500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-3.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">NMD_CS2 PRIMEKNIT</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <div class="product-price-old">
                                                            $2,800
                                                        </div>
                                                        <span class="product-price">$2,500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                        <!-- Product -->
                                        <div class="col-lg-3 col-sm-6 my-3">
                                            <div class="col-12 bg-white text-center h-100 product-item">
                                                <div class="row h-100">
                                                    <div class="col-12 p-0 mb-3">
                                                        <a href="product.html">
                                                            <img src="images/image-4.jpg" class="img-fluid" />
                                                        </a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <a href="product.html" class="product-name">POD-S3.1</a>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <span class="product-price">$4,500
                                                        </span>
                                                    </div>
                                                    <div class="col-12 mb-3 align-self-end">
                                                        <button class="btn btn-outline-dark" type="button"><i class="fas fa-cart-plus mr-2"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product -->

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Top Selling Products -->

                        <div class="col-12 py-3 bg-light d-sm-block d-none">
                            <div class="row">
                                <div class="col-lg-3 col ml-auto large-holder">
                                    <div class="row">
                                        <div class="col-auto ml-auto large-icon">
                                            <i class="fas fa-money-bill"></i>
                                        </div>
                                        <div class="col-auto mr-auto large-text">
                                            Best Price
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col large-holder">
                                    <div class="row">
                                        <div class="col-auto ml-auto large-icon">
                                            <i class="fas fa-truck-moving"></i>
                                        </div>
                                        <div class="col-auto mr-auto large-text">
                                            Fast Delivery
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col mr-auto large-holder">
                                    <div class="row">
                                        <div class="col-auto ml-auto large-icon">
                                            <i class="fas fa-check"></i>
                                        </div>
                                        <div class="col-auto mr-auto large-text">
                                            Genuine Products
                                        </div>
                                    </div>
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
                                                22B Model Town<br />
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
                               
                            </div>
                        </div>
                    </footer>
                    <!-- Footer -->
                </div>
            </div>

        </div>

        </div>
    </form>
</asp:Content>
