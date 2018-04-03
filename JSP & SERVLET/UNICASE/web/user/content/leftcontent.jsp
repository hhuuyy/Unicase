<%-- 
    Document   : leftcontent
    Created on : Nov 2, 2017, 8:35:13 PM
    Author     : Huy
--%>

<%@page import="entity.Products"%>
<%@page import="dao.ProductsDao"%>
<%@page import="entity.Categories"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class='col-md-3 sidebar'>
    <div class="sidebar-module-container">
        <!-- ==============================================CATEGORY============================================== -->
        <div class="side-menu animate-dropdown outer-bottom-xs">
            <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>        
            <nav class="yamm megamenu-horizontal" role="navigation">
                <ul class="nav">

                    <%
                        CategoriesDao categories = new CategoriesDao();
                        List<Categories> list = categories.showCategory();
                    %>

                    <%
                        for (Categories c : list) {
                    %>
                    <li class="dropdown menu-item">
                        <a href="<%= c.getId()%>" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-desktop fa-apple"></i><%= c.getName()%></a>
                        <ul class="dropdown-menu mega-menu">
                            <li class="yamm-content">
                                <div class="row">
                                    <div class="col-sm-12 col-md-3">
                                        <%
                                            ProductsDao products = new ProductsDao();
                                            List<Products> list2 = products.showProductbyCate(c.getId());
                                        %>
                                        <%
                                            for (Products p : list2) {
                                        %>
                                        <ul class="links list-unstyled">  
                                            <li><a href="detail.jsp?id=<%= p.getId()%>"><%= p.getName()%></a></li>  
                                        </ul>
                                        <%
                                            }
                                        %>
                                    </div><!-- /.col -->
                                </div><!-- /.row -->
                            </li><!-- /.yamm-content -->                    
                        </ul><!-- /.dropdown-menu -->            </li><!-- /.menu-item -->

                    <%
                        }
                    %>

                </ul><!-- /.nav -->
            </nav><!-- /.megamenu-horizontal -->
        </div><!-- /.side-menu -->
        <!-- ============================================== CATEGORY : END ============================================== -->					<!-- ============================================== HOT DEALS ============================================== -->
        <div class="sidebar-widget hot-deals wow fadeInUp">
            <h3 class="section-title">hot deals</h3>
            <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-xs">

                <div class="item">
                    <div class="products">
                        <div class="hot-deal-wrapper">
                            <div class="image">
                                <img src="assets/images/hot-deals/1.jpg" alt="">
                            </div>
                            <div class="sale-offer-tag"><span>35%<br>off</span></div>
                            <div class="timing-wrapper">
                                <div class="box-wrapper">
                                    <div class="date box">
                                        <span class="key">120</span>
                                        <span class="value">Days</span>
                                    </div>
                                </div>

                                <div class="box-wrapper">
                                    <div class="hour box">
                                        <span class="key">20</span>
                                        <span class="value">HRS</span>
                                    </div>
                                </div>

                                <div class="box-wrapper">
                                    <div class="minutes box">
                                        <span class="key">36</span>
                                        <span class="value">MINS</span>
                                    </div>
                                </div>

                                <div class="box-wrapper hidden-md">
                                    <div class="seconds box">
                                        <span class="key">60</span>
                                        <span class="value">SEC</span>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.hot-deal-wrapper -->

                        <div class="product-info text-left m-t-20">
                            <h3 class="name"><a href="index.php?page=detail">Apple Iphone 5s 32GB Gold</a></h3>
                            <div class="rating rateit-small"></div>

                            <div class="product-price">	
                                <span class="price">
                                    $600.00
                                </span>

                                <span class="price-before-discount">$800.00</span>					

                            </div><!-- /.product-price -->

                        </div><!-- /.product-info -->

                        <div class="cart clearfix animate-effect">
                            <div class="action">

                                <div class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                        <i class="fa fa-shopping-cart"></i>													
                                    </button>
                                    <button class="btn btn-primary" type="button">Add to cart</button>

                                </div>

                            </div><!-- /.action -->
                        </div><!-- /.cart -->
                    </div>	
                </div>		        
                <div class="item">
                    <div class="products">
                        <div class="hot-deal-wrapper">
                            <div class="image">
                                <img src="assets/images/hot-deals/2.jpg" alt="">
                            </div>
                            <div class="sale-offer-tag"><span>35%<br>off</span></div>
                            <div class="timing-wrapper">
                                <div class="box-wrapper">
                                    <div class="date box">
                                        <span class="key">120</span>
                                        <span class="value">Days</span>
                                    </div>
                                </div>

                                <div class="box-wrapper">
                                    <div class="hour box">
                                        <span class="key">20</span>
                                        <span class="value">HRS</span>
                                    </div>
                                </div>

                                <div class="box-wrapper">
                                    <div class="minutes box">
                                        <span class="key">36</span>
                                        <span class="value">MINS</span>
                                    </div>
                                </div>

                                <div class="box-wrapper hidden-md">
                                    <div class="seconds box">
                                        <span class="key">60</span>
                                        <span class="value">SEC</span>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.hot-deal-wrapper -->

                        <div class="product-info text-left m-t-20">
                            <h3 class="name"><a href="index.php?page=detail">Apple Iphone 5s 32GB Gold</a></h3>
                            <div class="rating rateit-small"></div>

                            <div class="product-price">	
                                <span class="price">
                                    $600.00
                                </span>

                                <span class="price-before-discount">$800.00</span>					

                            </div><!-- /.product-price -->

                        </div><!-- /.product-info -->

                        <div class="cart clearfix animate-effect">
                            <div class="action">

                                <div class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                        <i class="fa fa-shopping-cart"></i>													
                                    </button>
                                    <button class="btn btn-primary" type="button">Add to cart</button>

                                </div>

                            </div><!-- /.action -->
                        </div><!-- /.cart -->
                    </div>	
                </div>		        
                <div class="item">
                    <div class="products">
                        <div class="hot-deal-wrapper">
                            <div class="image">
                                <img src="assets/images/hot-deals/3.jpg" alt="">
                            </div>
                            <div class="sale-offer-tag"><span>35%<br>off</span></div>
                            <div class="timing-wrapper">
                                <div class="box-wrapper">
                                    <div class="date box">
                                        <span class="key">120</span>
                                        <span class="value">Days</span>
                                    </div>
                                </div>

                                <div class="box-wrapper">
                                    <div class="hour box">
                                        <span class="key">20</span>
                                        <span class="value">HRS</span>
                                    </div>
                                </div>

                                <div class="box-wrapper">
                                    <div class="minutes box">
                                        <span class="key">36</span>
                                        <span class="value">MINS</span>
                                    </div>
                                </div>

                                <div class="box-wrapper hidden-md">
                                    <div class="seconds box">
                                        <span class="key">60</span>
                                        <span class="value">SEC</span>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.hot-deal-wrapper -->

                        <div class="product-info text-left m-t-20">
                            <h3 class="name"><a href="index.php?page=detail">Apple Iphone 5s 32GB Gold</a></h3>
                            <div class="rating rateit-small"></div>

                            <div class="product-price">	
                                <span class="price">
                                    $600.00
                                </span>

                                <span class="price-before-discount">$800.00</span>					

                            </div><!-- /.product-price -->

                        </div><!-- /.product-info -->

                        <div class="cart clearfix animate-effect">
                            <div class="action">

                                <div class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                        <i class="fa fa-shopping-cart"></i>													
                                    </button>
                                    <button class="btn btn-primary" type="button">Add to cart</button>

                                </div>

                            </div><!-- /.action -->
                        </div><!-- /.cart -->
                    </div>	
                </div>		        


            </div><!-- /.sidebar-widget -->
        </div>
        <!-- ============================================== HOT DEALS: END ============================================== -->					<!-- ============================================== COLOR============================================== -->
        <div class="sidebar-widget  wow fadeInUp outer-top-vs ">
            <div id="advertisement" class="advertisement">
                <div class="item bg-color">
                    <div class="container-fluid">
                        <div class="caption vertical-top text-left">
                            <div class="big-text">
                                Save<span class="big">50%</span>
                            </div>


                            <div class="excerpt">
                                on selected items
                            </div>
                        </div><!-- /.caption -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.item -->

                <div class="item" style="background-image: url('assets/images/advertisement/1.jpg');">

                </div><!-- /.item -->

                <div class="item bg-color">
                    <div class="container-fluid">
                        <div class="caption vertical-top text-left">
                            <div class="big-text">
                                Save<span class="big">50%</span>
                            </div>


                            <div class="excerpt fadeInDown-2">
                                on selected items
                            </div>
                        </div><!-- /.caption -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.item -->

            </div><!-- /.owl-carousel -->
        </div>

        <!-- ============================================== COLOR: END ============================================== -->
    </div>
</div><!-- /.sidebar -->