<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="main-header">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
                <!-- ============================================================= LOGO ============================================================= -->
                <div class="logo">
                    <a href="index.jsp">
                        <img src="assets/images/logo.png" alt="">
                    </a>
                </div><!-- /.logo -->
                <!-- ============================================================= LOGO : END ============================================================= -->				</div><!-- /.logo-holder -->

            <div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
                <div class="contact-row">
                    <div class="phone inline">
                        <i class="icon fa fa-phone"></i> 0868263717
                    </div>
                    <div class="contact inline">
                        <i class="icon fa fa-envelope"></i> <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f083919c9582b0859e9993918395de939f9d">[info@quochuyit.com]</a>
                    </div>
                </div><!-- /.contact-row -->
                <!-- ============================================================= SEARCH AREA ============================================================= -->
                <div class="search-area">
                    <form>
                        <div class="control-group">

                            <ul class="categories-filter animate-dropdown">
                                <li class="dropdown">

                                    <a class="dropdown-toggle"  data-toggle="dropdown" href="index.php?page=category">Categories <b class="caret"></b></a>

                                    <ul class="dropdown-menu" role="menu" >
                                        <li class="menu-header">Computer</li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="index.php?page=category">- Laptops</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="index.php?page=category">- Tv & audio</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="index.php?page=category">- Gadgets</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="index.php?page=category">- Cameras</a></li>

                                    </ul>
                                </li>
                            </ul>

                            <input class="search-field" placeholder="Search here..." />

                            <a class="search-button" href="#" ></a>    

                        </div>
                    </form>
                </div><!-- /.search-area -->
                <!-- ============================================================= SEARCH AREA : END ============================================================= -->				</div><!-- /.top-search-holder -->

            <div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
                <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

                <div class="dropdown dropdown-cart">
                    <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
                        <div class="items-cart-inner">
                            <div class="total-price-basket">
                                <span class="lbl">cart -</span>
                                <span class="total-price">
                                    <span class="sign">$</span>
                                    <span class="value">600.00</span>
                                </span>
                            </div>
                            <div class="basket">
                                <i class="glyphicon glyphicon-shopping-cart"></i>
                            </div>
                            <div class="basket-item-count"><span class="count">2</span></div>

                        </div>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="cart-item product-summary">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <div class="image">
                                            <a href="index.php?page=detail"><img src="assets/images/cart.jpg" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">

                                        <h3 class="name"><a href="index.php?page-detail">Simple Product</a></h3>
                                        <div class="price">$600.00</div>
                                    </div>
                                    <div class="col-xs-1 action">
                                        <a href="#"><i class="fa fa-trash"></i></a>
                                    </div>
                                </div>
                            </div><!-- /.cart-item -->
                            <div class="clearfix"></div>
                            <hr>

                            <div class="clearfix cart-total">
                                <div class="pull-right">

                                    <span class="text">Sub Total :</span><span class='price'>$600.00</span>

                                </div>
                                <div class="clearfix"></div>

                                <a href="index.php?page=checkout" class="btn btn-upper btn-primary btn-block m-t-20">Checkout</a>	
                            </div><!-- /.cart-total-->


                        </li>
                    </ul><!-- /.dropdown-menu-->
                </div><!-- /.dropdown-cart -->

                <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->				</div><!-- /.top-cart-row -->
        </div><!-- /.row -->

    </div><!-- /.container -->

</div><!-- /.main-header -->
