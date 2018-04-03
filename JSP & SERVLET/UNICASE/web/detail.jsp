<%-- 
    Document   : index
    Created on : Oct 30, 2017, 12:01:44 AM
    Author     : Huy
--%>

<%@page import="entity.Products"%>
<%@page import="dao.ProductsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="MediaCenter, Template, eCommerce">
        <meta name="robots" content="all">

        <title>Unicase</title>

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

        <!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
        <!--[if lt IE 9]>
                <script src="assets/js/html5shiv.js"></script>
                <script src="assets/js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body class="cnt-home">



        <!-- ============================================== HEADER ============================================== -->
        <header class="header-style-1">

            <!-- ============================================== TOP MENU ============================================== -->
            <jsp:include page="user/topmenu.jsp"/>
            <!-- ============================================== TOP MENU : END ============================================== -->

            <!-- ============================================== HEADER MAIN ============================================== -->
            <jsp:include page="user/headermain.jsp"/>
            <!-- ============================================== HEADER MAIN : END ============================================== -->


            <!-- ============================================== NAVBAR ============================================== -->
            <jsp:include page="user/navbar.jsp"/>
            <!-- ============================================== NAVBAR : END ============================================== -->

        </header>

        <!-- ============================================== HEADER : END ============================================== -->
        <div class="breadcrumb">
            <div class="container">
                <div class="breadcrumb-inner">
                    <ul class="list-inline list-unstyled">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Woman</a></li>
                        <li class='active'>Samsung Galaxy S4 32GB White</li>
                    </ul>
                </div><!-- /.breadcrumb-inner -->
            </div><!-- /.container -->
        </div><!-- /.breadcrumb -->
        <div class="body-content outer-top-xs">
            <div class='container'>
                <div class='row single-product outer-bottom-sm '>
                    
                    <!-- CONTENT -->
                    <jsp:include page="user/content/detailproduct.jsp"/>
                    <!-- CONTENT: END -->
                    
                    <!-- /.col -->
                    <div class="clearfix"></div>
                </div><!-- /.row -->
                <!-- ============================================== BRANDS CAROUSEL ============================================== -->
                <jsp:include page="user/brands.jsp"/>
                <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
        </div><!-- /.body-content -->

        <!-- ============================================================= FOOTER ============================================================= -->
        <jsp:include page="user/footer.jsp"/>
        <!-- ============================================================= FOOTER : END============================================================= -->

        <!-- ============================================================= SETTING THEME ============================================================= -->
        <jsp:include page="user/settingtheme.jsp"/>
        <!-- ============================================================= SETTING THEME : END============================================================= -->


        <!-- For demo purposes – can be removed on production -->

        <div class="config open">
            <div class="config-options">
                <h4>Pages</h4>
                <ul class="list-unstyled animate-dropdown">
                    <li class="dropdown">
                        <button class="dropdown-toggle btn btn-primary btn-block" data-toggle="dropdown">View Pages</button>
                        <ul class="dropdown-menu" role="menu">
                            <li role="presentation" class="dropdown-header">Home Pages</li>
                            <li><a href="index.php?page=home">Home</a></li>
                            <li><a href="index.php?page=home2">Home II</a></li>
                            <li><a href="index.php?page=home-furniture">Home Furniture</a></li>
                            <li><a href="index.php?page=homepage1">Home Page I</a></li>
                            <li><a href="index.php?page=homepage2">Home Page II</a></li>
                            <li class="divider"></li>
                            <li role="presentation" class="dropdown-header">Other Pages</li>
                            <li><a href="index.php?page=blog">Blog</a></li>
                            <li><a href="index.php?page=blog-details">Blog Details</a></li>
                            <li><a href="index.php?page=category">Category</a></li>
                            <li><a href="index.php?page=category-2">Category II</a></li>
                            <li><a href="index.php?page=checkout">Checkout</a></li>
                            <li><a href="index.php?page=contact">Contact</a></li>
                            <li><a href="index.php?page=detail">Detail</a></li>
                            <li><a href="index.php?page=detail2">Detail II</a></li>
                            <li><a href="index.php?page=shopping-cart">Shopping Cart Summary</a></li>						

                        </ul>
                    </li>
                </ul>
                <h4>Header Styles</h4>
                <ul class="list-unstyled">
                    <li><a href="index.php?page=home">Header 1</a></li>
                    <li><a href="index.php?page=homepage1">Header 2</a></li>
                    <li><a href="index.php?page=home-furniture">Header 3</a></li>
                </ul>
                <h4>Layouts</h4>
                <ul class="list-unstyled">
                    <li><a href="index.php?page=homepage1">Full Width</a></li>
                    <li><a href="index.php?page=homepage2">Boxed</a></li>
                </ul>
                <h4>Colors</h4>
                <ul>
                    <li><a class="changecolor green-text" href="#" title="Green color">Green</a></li>
                    <li><a class="changecolor blue-text" href="#" title="Blue color">Blue</a></li>
                    <li><a class="changecolor red-text" href="#" title="Red color">Red</a></li>
                    <li><a class="changecolor orange-text" href="#" title="Orange color">Orange</a></li>
                    <li><a class="changecolor dark-green-text" href="#" title="Darkgreen color">Dark Green</a></li>
                </ul>
            </div>
            <a class="show-theme-options" href="#"><i class="fa fa-wrench"></i></a>
        </div>
        <!-- For demo purposes – can be removed on production : End -->

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
        <!-- For demo purposes – can be removed on production : End -->



    </body>
</html>