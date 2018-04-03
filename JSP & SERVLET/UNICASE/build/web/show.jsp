<%-- 
    Document   : show
    Created on : Oct 30, 2017, 12:38:34 AM
    Author     : Huy
--%>

<%@page import="entity.Categories"%>
<%@page import="dao.CategoriesDao"%>
<%@page import="entity.Orders"%>
<%@page import="dao.ProductsDao"%>
<%@page import="java.util.List"%>
<%@page import="entity.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show</title>
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Customizable CSS -->
        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" href="assets/css/green.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.css">
        <link rel="stylesheet" href="assets/css/owl.transitions.css">
        <!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
        <link href="assets/css/lightbox.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/rateit.css">
        <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

        <!-- Demo Purpose Only. Should be removed in production -->
        <link rel="stylesheet" href="assets/css/config.css">

        <link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
        <link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
        <link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
        <link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
        <link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
        <!-- Demo Purpose Only. Should be removed in production : END -->


        <!-- Icons/Glyphs -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Fonts --> 
        <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>

        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- JavaScripts placed at the end of the document so the pages load faster -->
        <script src="/cdn-cgi/scripts/78d64697/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-1.11.1.min.js"></script>

        <script src="assets/js/bootstrap.min.js"></script>

        <script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>

        <script src="assets/js/echo.min.js"></script>
        <script src="assets/js/jquery.easing-1.3.min.js"></script>
        <script src="assets/js/bootstrap-slider.min.js"></script>
        <script src="assets/js/jquery.rateit.min.js"></script>
        <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/scripts.js"></script>

        <!-- For demo purposes – can be removed on production -->

        <script src="switchstylesheet/switchstylesheet.js"></script>

        <script>
            $(document).ready(function () {
                $(".changecolor").switchstylesheet({seperator: "color"});
                $('.show-theme-options').click(function () {
                    $(this).parent().toggleClass('open');
                    return false;
                });
            });

            $(window).bind("load", function () {
                $('.show-theme-options').delay(2000).trigger('click');
            });
        </script>
    </head>
    <body>
        <h1>Show List Products</h1>
        <%
            ProductsDao products = new ProductsDao();
            List<Products> list = products.showProduct();
        %>

        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>UnitBrief</th>
                    <th>UnitPrice</th>
                    <th>Image</th>
                    <th>ProductDate</th>
                    <th>Available</th>
                    <th>Description</th>
                    <th>CategoryId</th>
                    <th>SupplierId</th>
                    <th>Quantity</th>
                    <th>Discount</th>
                    <th>Views</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Products p : list) {
                %>
                <tr>
                    <td><%= p.getId()%></td>
                    <td><%= p.getName()%></td>
                    <td><%= p.getUnitBrief()%></td>
                    <td><%= p.getUnitPrice()%></td>
                    <td><img src="assets/images/products/<%= p.getImage()%>" height="50" width="50"/></td>
                    <td><%= p.getProductDate()%></td>
                    <td><%= p.isAvailable()%></td>
                    <td><%= p.getDescription()%></td>
                    <td><%= p.getCategories().getId()%></td>
                    <td><%= p.getSuppliers().getId()%></td>
                    <td><%= p.getQuantity()%></td>
                    <td><%= p.getDiscount()%></td>
                    <td><%= p.getViews()%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

    </body>

    <%
        for (Products p : list) {
    %>
    <div class="products">
        <div class="product">		
            <div class="product-image">
                <div class="image">
                    <a href="index.php?page=detail"><img  src="assets/images/blank.gif" data-echo="assets/images/products/<%= p.getImage()%>" alt=""></a>
                </div><!-- /.image -->			
                <div class="tag sale"><span>sale</span></div>            		   
            </div><!-- /.product-image -->
            <div class="product-info text-left">
                <h3 class="name"><a href="index.php?page=detail"><%= p.getName()%></a></h3>
                <div class="rating rateit-small"></div>
                <div class="description"></div>
                <div class="product-price">	
                    <span class="price">
                        <%= p.getUnitPrice()%>				</span>
                    <span class="price-before-discount">$ 800</span>
                </div><!-- /.product-price -->
            </div><!-- /.product-info -->
            <div class="cart clearfix animate-effect">
                <div class="action">
                    <ul class="list-unstyled">
                        <li class="add-cart-button btn-group">
                            <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                <i class="fa fa-shopping-cart"></i>													
                            </button>
                            <button class="btn btn-primary" type="button">Add to cart</button>
                        </li>
                        <li class="lnk wishlist">
                            <a class="add-to-cart" href="index.php?page=detail" title="Wishlist">
                                <i class="icon fa fa-heart"></i>
                            </a>
                        </li>
                        <li class="lnk">
                            <a class="add-to-cart" href="index.php?page=detail" title="Compare">
                                <i class="fa fa-retweet"></i>
                            </a>
                        </li>
                    </ul>
                </div><!-- /.action -->
            </div><!-- /.cart -->
        </div><!-- /.product -->

    </div><!-- /.products -->
    <%
        }
    %>
    
    <div class="sidebar-widget outer-bottom-xs wow fadeInUp">
            <h3 class="section-title">Category</h3>
            <div class="sidebar-widget-body m-t-10">
                <div class="accordion">

                    <%
                        CategoriesDao categories = new CategoriesDao();
                        List<Categories> list2 = categories.showCategory();
                    %>

                    <%
                        for (Categories c : list2) {
                    %>

                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#collapseOne" data-toggle="collapse" class="accordion-toggle collapsed">
                                <%= c.getName()%>
                            </a>
                        </div><!-- /.accordion-heading -->

                        <div class="accordion-body collapse" id="collapseOne" style="height: 0px;">
                            <div class="accordion-inner">

                                <ul>
                                    <%
                                        ProductsDao products2 = new ProductsDao();
                                        List<Products> list3 = products2.showProductbyCate(c.getId());
                                    %>
                                    <%
                                        for (Products p : list3) {
                                    %>
                                    <li><a href="#"><%= p.getName()%></a></li>

                                    <%
                                        }
                                    %>
                                </ul>

                            </div><!-- /.accordion-inner -->
                        </div><!-- /.accordion-body -->
                    </div><!-- /.accordion-group -->
                    <%
                        }
                    %>

                </div><!-- /.accordion -->
            </div><!-- /.sidebar-widget-body -->
        </div><!-- /.sidebar-widget -->
</html>
