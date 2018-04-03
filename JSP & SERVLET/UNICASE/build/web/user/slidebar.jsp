<%@page import="entity.Products"%>
<%@page import="dao.ProductsDao"%>
<%@page import="entity.Categories"%>
<%@page import="dao.CategoriesDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-xs-12 col-sm-12 col-md-3 sidebar">

    <!-- ================================== TOP NAVIGATION ================================== -->
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
                    <a href="<%= c.getId() %>" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-desktop fa-apple"></i><%= c.getName()%></a>
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
                                        <li><a href="detail.jsp?id=<%= p.getId() %>"><%= p.getName()%></a></li>  
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
    <!-- ================================== TOP NAVIGATION : END ================================== -->
    <!-- ============================================== SPECIAL OFFER ============================================== -->

    <div class="sidebar-widget outer-bottom-small wow fadeInUp">
        <h3 class="section-title">Special Offer</h3>
        <div class="sidebar-widget-body outer-top-xs">
            <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                <div class="item">
                    <div class="products special-product">
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm1.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm1.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->
                                            <div class="tag tag-micro hot">
                                                <span>hot</span>
                                            </div>


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Simple Product</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm2.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm2.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Canon EOS 60D</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm3.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm3.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->

                                            <div class="tag tag-micro new">
                                                <span>new</span>
                                            </div>

                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Camera X30</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="products special-product">
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm1.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm1.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Simple Product</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm2.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm2.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                            <div class="tag tag-micro sale">
                                                <span>sale</span>
                                            </div>
                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Canon EOS 60D</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm3.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm3.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Camera X30</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="products special-product">
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm1.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm1.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->

                                            <div class="tag tag-micro new">
                                                <span>new</span>
                                            </div>

                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Simple Product</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm2.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm2.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->
                                            <div class="tag tag-micro hot">
                                                <span>hot</span>
                                            </div>


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Canon EOS 60D</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm3.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm3.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Camera X30</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.sidebar-widget-body -->
    </div><!-- /.sidebar-widget -->
    <!-- ============================================== SPECIAL OFFER : END ============================================== -->
    <!-- ============================================== PRODUCT TAGS ============================================== -->
    <div class="sidebar-widget product-tag wow fadeInUp">
        <h3 class="section-title">Product tags</h3>
        <div class="sidebar-widget-body outer-top-xs">
            <div class="tag-list">					
                <a class="item" title="Phone" href="index.php?page=category">Phone</a>
                <a class="item active" title="Vest" href="index.php?page=category">Vest</a>
                <a class="item" title="Smartphone" href="index.php?page=category">Smartphone</a>
                <a class="item" title="Furniture" href="index.php?page=category">Furniture</a>
                <a class="item" title="T-shirt" href="index.php?page=category">T-shirt</a>
                <a class="item" title="Sweatpants" href="index.php?page=category">Sweatpants</a>
                <a class="item" title="Sneaker" href="index.php?page=category">Sneaker</a>
                <a class="item" title="Toys" href="index.php?page=category">Toys</a>
                <a class="item" title="Rose" href="index.php?page=category">Rose</a>
            </div><!-- /.tag-list -->
        </div><!-- /.sidebar-widget-body -->
    </div><!-- /.sidebar-widget -->
    <!-- ============================================== PRODUCT TAGS : END ============================================== -->
    <!-- ============================================== SPECIAL DEALS ============================================== -->

    <div class="sidebar-widget outer-bottom-small wow fadeInUp">
        <h3 class="section-title">Special Deals</h3>
        <div class="sidebar-widget-body outer-top-xs">
            <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                <div class="item">
                    <div class="products special-product">
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm4.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm4.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->
                                            <div class="tag tag-micro hot">
                                                <span>hot</span>
                                            </div>


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Simple Product</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm5.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm5.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Simple Product</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm6.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm6.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->

                                            <div class="tag tag-micro new">
                                                <span>new</span>
                                            </div>

                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Camera X30</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="products special-product">
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm1.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm1.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Ericson Vaga</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm2.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm2.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                            <div class="tag tag-micro sale">
                                                <span>sale</span>
                                            </div>
                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Ericson Vaga</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm3.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm3.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Ericson Vaga</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="products special-product">
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm5.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm5.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->

                                            <div class="tag tag-micro new">
                                                <span>new</span>
                                            </div>

                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Ericson Vaga</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm2.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm2.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->
                                            <div class="tag tag-micro hot">
                                                <span>hot</span>
                                            </div>


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Ericson Vaga</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                        <div class="product">
                            <div class="product-micro">
                                <div class="row product-micro-row">
                                    <div class="col col-xs-5">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="assets/images/products/sm1.jpg" data-lightbox="image-1" data-title="Nunc ullamcors">
                                                    <img data-echo="assets/images/products/sm1.jpg" src="assets/images/blank.gif" alt="">
                                                    <div class="zoom-overlay"></div>
                                                </a>					
                                            </div><!-- /.image -->


                                        </div><!-- /.product-image -->
                                    </div><!-- /.col -->
                                    <div class="col col-xs-7">
                                        <div class="product-info">
                                            <h3 class="name"><a href="#">Sony Ericson Vaga</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="product-price">	
                                                <span class="price">
                                                    $650.99				</span>

                                            </div><!-- /.product-price -->
                                            <div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
                                        </div>
                                    </div><!-- /.col -->
                                </div><!-- /.product-micro-row -->
                            </div><!-- /.product-micro -->

                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.sidebar-widget-body -->
    </div><!-- /.sidebar-widget -->
    <!-- ============================================== SPECIAL DEALS : END ============================================== -->
    <!-- ============================================== NEWSLETTER ============================================== -->
    <div class="sidebar-widget newsletter wow fadeInUp outer-bottom-small">
        <h3 class="section-title">Newsletters</h3>
        <div class="sidebar-widget-body outer-top-xs">
            <p>Sign Up for Our Newsletter!</p>
            <form role="form">
                <div class="form-group">
                    <label class="sr-only" for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Subscribe to our newsletter">
                </div>
                <button class="btn btn-primary">Subscribe</button>
            </form>
        </div><!-- /.sidebar-widget-body -->
    </div><!-- /.sidebar-widget -->
    <!-- ============================================== NEWSLETTER: END ============================================== -->
</div><!-- /.sidemenu-holder -->