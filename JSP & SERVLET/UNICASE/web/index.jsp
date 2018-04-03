<%-- 
    Document   : index
    Created on : Oct 30, 2017, 12:01:44 AM
    Author     : Huy
--%>

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
        <base href="${pageContext.request.contextPath}/">
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
        <div class="body-content outer-top-xs" id="top-banner-and-menu">
            <div class="container">
                <div class="row">
                    <!-- ============================================== SIDEBAR ============================================== -->	
                    <jsp:include page="user/slidebar.jsp"/>
                    <!-- ============================================== SIDEBAR : END ============================================== -->

                    <!-- ============================================== CONTENT ============================================== -->
                    <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
                        
                        <!-- ========================================== SECTION – HERO ========================================= -->
                        <jsp:include page="user/slideshow.jsp"/>
                        <!-- ============================================== SECTION - HERO : END ============================================== -->
                        
                        <!-- ============================================== SCROLL TABS ============================================== -->
                        <jsp:include page="user/newproduct.jsp"/>
                        <!-- ============================================== SCROLL TABS : END ============================================== -->
                        
                        <!-- ============================================== WIDE PRODUCTS ============================================== -->
                        <div class="wide-banners wow fadeInUp outer-bottom-vs">
                            <div class="row">

                                <div class="col-md-7">
                                    <div class="wide-banner cnt-strip">
                                        <div class="image">
                                            <img class="img-responsive" data-echo="assets/images/banners/1.jpg" src="assets/images/blank.gif" alt="">
                                        </div>	
                                        <div class="strip">
                                            <div class="strip-inner">
                                                <h3 class="hidden-xs">samsung</h3>
                                                <h2>galaxy</h2>
                                            </div>	
                                        </div>
                                    </div><!-- /.wide-banner -->
                                </div><!-- /.col -->

                                <div class="col-md-5">
                                    <div class="wide-banner cnt-strip">
                                        <div class="image">
                                            <img class="img-responsive" data-echo="assets/images/banners/2.jpg" src="assets/images/blank.gif" alt="">
                                        </div>	
                                        <div class="strip">
                                            <div class="strip-inner">
                                                <h3 class="hidden-xs">new trend</h3>
                                                <h2>watch phone</h2>
                                            </div>	
                                        </div>
                                    </div><!-- /.wide-banner -->
                                </div><!-- /.col -->

                            </div><!-- /.row -->
                        </div><!-- /.wide-banners -->

                        <!-- ============================================== WIDE PRODUCTS : END ============================================== -->
                        
                        <!-- ============================================== FEATURED PRODUCTS ============================================== -->
                        <jsp:include page="user/featuredproduct.jsp" />
                        <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
                        
                        <!-- ============================================== WIDE PRODUCTS ============================================== -->
                        <div class="wide-banners wow fadeInUp outer-bottom-vs">
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="wide-banner cnt-strip">
                                        <div class="image">
                                            <img class="img-responsive" data-echo="assets/images/banners/3.jpg" src="assets/images/blank.gif" alt="">
                                        </div>	
                                        <div class="strip strip-text">
                                            <div class="strip-inner">
                                                <h2 class="text-right">one stop place for<br>
                                                    <span class="shopping-needs">all your shopping needs</span></h2>
                                            </div>	
                                        </div>
                                        <div class="new-label">
                                            <div class="text">NEW</div>
                                        </div><!-- /.new-label -->
                                    </div><!-- /.wide-banner -->
                                </div><!-- /.col -->

                            </div><!-- /.row -->
                        </div><!-- /.wide-banners -->
                        <!-- ============================================== WIDE PRODUCTS : END ============================================== -->
                        
                        <!-- ============================================== BEST SELLER ============================================== -->
                        <jsp:include page="user/bestseller.jsp" />
                        <!-- ============================================== BEST SELLER : END ============================================== -->	
                    </div><!-- /.homebanner-holder -->
                    <!-- ============================================== CONTENT : END ============================================== -->
                
                </div><!-- /.row -->
                
                <!-- ============================================== BRANDS CAROUSEL ============================================== -->
                <jsp:include page="user/brands.jsp"/>
                <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
            
            </div><!-- /.container -->
        </div><!-- /#top-banner-and-menu -->

        <!-- ============================================================= FOOTER ============================================================= -->
        <jsp:include page="user/footer.jsp"/>
        <!-- ============================================================= FOOTER : END============================================================= -->

        <!-- ============================================================= SETTING THEME ============================================================= -->
        <jsp:include page="user/settingtheme.jsp"/>
        <!-- ============================================================= SETTING THEME : END============================================================= -->

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
