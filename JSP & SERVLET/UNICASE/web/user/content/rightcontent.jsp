<%-- 
    Document   : rightcontent
    Created on : Nov 2, 2017, 8:35:23 PM
    Author     : Huy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@page import="entity.Products"%>
<%@page import="dao.ProductsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ProductsDao pD = new ProductsDao();
    String idd = request.getParameter("id");
    int id;
    Products prod = null;
    
    if (request.getParameter("id") != null) {
        id = Integer.parseInt(idd);
        prod = pD.showDetailbyProduct(id);
    } else {
        String path = request.getContextPath();
        String url = path + "/index.jsp";
        response.sendRedirect(url);
    }
    
%>
<div class='col-md-9'>
    <div class="row  wow fadeInUp">
        <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
            <div class="product-item-holder size-big single-product-gallery small-gallery">

                <div id="owl-single-product">
                    <div class="single-product-gallery-item" id="slide1">
                        <a data-lightbox="image-1" data-title="Gallery" href="assets/images/products/<%= prod.getImage()%>">
                            <center><img class="img-responsive" alt="" src="assets/images/products/<%= prod.getImage()%>" /></center>
                        </a>
                    </div><!-- /.single-product-gallery-item -->
                </div><!-- /.single-product-slider -->

            </div><!-- /.single-product-gallery -->
        </div><!-- /.gallery-holder -->        			
        <div class='col-sm-6 col-md-7 product-info-block'>
            <div class="product-info">
                <h1 class="name"><%= prod.getName()%></h1>

                <div class="rating-reviews m-t-20">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="rating rateit-small"></div>
                        </div>
                        <div class="col-sm-8">
                            <div class="reviews">
                                <a class="lnk"><span class="glyphicon glyphicon-eye-open"> <%= prod.getViews()%></span> views</a>
                            </div>
                        </div>
                    </div><!-- /.row -->		
                </div><!-- /.rating-reviews -->

                <div class="stock-container info-container m-t-10">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="stock-box">
                                <span class="label">Availability :<%= prod.isAvailable()%></span>
                            </div>	
                        </div>
                        <div class="col-sm-9">
                            <div class="stock-box">
                                <span class="value">In Stock</span>
                            </div>	
                        </div>
                    </div><!-- /.row -->	
                </div><!-- /.stock-container -->

                <div class="description-container m-t-20">
                    <%= prod.getDescription()%>
                </div><!-- /.description-container -->

                <div class="price-container info-container m-t-20">
                    <div class="row">


                        <div class="col-sm-6">
                            <div class="price-box">
                                <span class="price">$<%= prod.getUnitPrice()%></span>
                                <span class="price-before-discount">
                                    <f:formatNumber value="<%= prod.getDiscount()%>" type="percent" />
                                </span>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="favorite-button m-t-10">
                                <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Wishlist" href="#">
                                    <i class="fa fa-heart"></i>
                                </a>
                                <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Add to Compare" href="#">
                                    <i class="fa fa-retweet"></i>
                                </a>
                                <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="E-mail" href="#">
                                    <i class="fa fa-envelope"></i>
                                </a>
                            </div>
                        </div>

                    </div><!-- /.row -->
                </div><!-- /.price-container -->

                <div class="quantity-container info-container">
                    <div class="row">

                        <div class="col-sm-2">
                            <span class="label">Qty :</span>
                        </div>

                        <div class="col-sm-2">
                            <div class="cart-quantity">
                                <div class="quant-input">
                                    <div class="arrows">
                                        <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
                                        <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
                                    </div>
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-7">
                            <a href="#" class="btn btn-primary"><i class="fa fa-shopping-cart inner-right-vs"></i> ADD TO CART</a>
                        </div>


                    </div><!-- /.row -->
                </div><!-- /.quantity-container -->

                <div class="product-social-link m-t-20 text-right">
                    <span class="social-label">Share :</span>
                    <div class="social-icons">
                        <ul class="list-inline">
                            <li><a class="fa fa-facebook" href="http://facebook.com/transvelo"></a></li>
                            <li><a class="fa fa-twitter" href="#"></a></li>
                            <li><a class="fa fa-linkedin" href="#"></a></li>
                            <li><a class="fa fa-rss" href="#"></a></li>
                            <li><a class="fa fa-pinterest" href="#"></a></li>
                        </ul><!-- /.social-icons -->
                    </div>
                </div>




            </div><!-- /.product-info -->
        </div><!-- /.col-sm-7 -->
    </div><!-- /.row -->


    <div class="product-tabs inner-bottom-xs  wow fadeInUp">
        <div class="row">
            <div class="col-sm-3">
                <ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
                    <li class="active"><a data-toggle="tab" href="#description">DESCRIPTION</a></li>
                    <li><a data-toggle="tab" href="#review">REVIEW</a></li>
                    <li><a data-toggle="tab" href="#tags">TAGS</a></li>
                </ul><!-- /.nav-tabs #product-tabs -->
            </div>
            <div class="col-sm-9">

                <div class="tab-content">

                    <div id="description" class="tab-pane in active">
                        <div class="product-tab">
                            <p class="text">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Susp endisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibe ndum gravida eget, lacinia id purus. Susp endisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus.<p><p class="text"> Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Susp endisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibe ndum gravida eget, lacinia id purus. Susp endisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus.</p>
                        </div>	
                    </div><!-- /.tab-pane -->

                    <div id="review" class="tab-pane">
                        <div class="product-tab">

                            <div class="product-reviews">
                                <h4 class="title">Customer Reviews</h4>

                                <div class="reviews">
                                    <div class="review">
                                        <div class="review-title"><span class="summary">Best Product For me :)</span><span class="date"><i class="fa fa-calendar"></i><span>20 minutes ago</span></span></div>
                                        <div class="text">"Lorem ipsum dolor sit amet, consectetur adipiscing elit.Aliquam suscipit nisl in adipiscin"</div>
                                        <div class="author m-t-15"><i class="fa fa-pencil-square-o"></i> <span class="name">Michael Lee</span></div>													</div>

                                </div><!-- /.reviews -->
                            </div><!-- /.product-reviews -->



                            <div class="product-add-review">
                                <h4 class="title">Write your own review</h4>
                                <div class="review-table">
                                    <div class="table-responsive">
                                        <table class="table table-bordered">	
                                            <thead>
                                                <tr>
                                                    <th class="cell-label">&nbsp;</th>
                                                    <th>1 star</th>
                                                    <th>2 stars</th>
                                                    <th>3 stars</th>
                                                    <th>4 stars</th>
                                                    <th>5 stars</th>
                                                </tr>
                                            </thead>	
                                            <tbody>
                                                <tr>
                                                    <td class="cell-label">Quality</td>
                                                    <td><input type="radio" name="quality" class="radio" value="1"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="2"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="3"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="4"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="5"></td>
                                                </tr>
                                                <tr>
                                                    <td class="cell-label">Price</td>
                                                    <td><input type="radio" name="quality" class="radio" value="1"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="2"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="3"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="4"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="5"></td>
                                                </tr>
                                                <tr>
                                                    <td class="cell-label">Value</td>
                                                    <td><input type="radio" name="quality" class="radio" value="1"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="2"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="3"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="4"></td>
                                                    <td><input type="radio" name="quality" class="radio" value="5"></td>
                                                </tr>
                                            </tbody>
                                        </table><!-- /.table .table-bordered -->
                                    </div><!-- /.table-responsive -->
                                </div><!-- /.review-table -->

                                <div class="review-form">
                                    <div class="form-container">
                                        <form role="form" class="cnt-form">

                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label for="exampleInputName">Your Name <span class="astk">*</span></label>
                                                        <input type="text" class="form-control txt" id="exampleInputName" placeholder="">
                                                    </div><!-- /.form-group -->
                                                    <div class="form-group">
                                                        <label for="exampleInputSummary">Summary <span class="astk">*</span></label>
                                                        <input type="text" class="form-control txt" id="exampleInputSummary" placeholder="">
                                                    </div><!-- /.form-group -->
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="exampleInputReview">Review <span class="astk">*</span></label>
                                                        <textarea class="form-control txt txt-review" id="exampleInputReview" rows="4" placeholder=""></textarea>
                                                    </div><!-- /.form-group -->
                                                </div>
                                            </div><!-- /.row -->

                                            <div class="action text-right">
                                                <button class="btn btn-primary btn-upper">SUBMIT REVIEW</button>
                                            </div><!-- /.action -->

                                        </form><!-- /.cnt-form -->
                                    </div><!-- /.form-container -->
                                </div><!-- /.review-form -->

                            </div><!-- /.product-add-review -->										

                        </div><!-- /.product-tab -->
                    </div><!-- /.tab-pane -->

                    <div id="tags" class="tab-pane">
                        <div class="product-tag">

                            <h4 class="title">Product Tags</h4>
                            <form role="form" class="form-inline form-cnt">
                                <div class="form-container">

                                    <div class="form-group">
                                        <label for="exampleInputTag">Add Your Tags: </label>
                                        <input type="email" id="exampleInputTag" class="form-control txt">


                                    </div>

                                    <button class="btn btn-upper btn-primary" type="submit">ADD TAGS</button>
                                </div><!-- /.form-container -->
                            </form><!-- /.form-cnt -->

                            <form role="form" class="form-inline form-cnt">
                                <div class="form-group">
                                    <label>&nbsp;</label>
                                    <span class="text col-md-offset-3">Use spaces to separate tags. Use single quotes (') for phrases.</span>
                                </div>
                            </form><!-- /.form-cnt -->

                        </div><!-- /.product-tab -->
                    </div><!-- /.tab-pane -->

                </div><!-- /.tab-content -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.product-tabs -->

    <!-- ============================================== UPSELL PRODUCTS ============================================== -->
    <section class="section featured-product wow fadeInUp">
        <h3 class="section-title">upsell products</h3>
        <div class="owl-carousel home-owl-carousel upsell-product custom-carousel owl-theme outer-top-xs">

            <div class="item item-carousel">
                <div class="products">

                    <div class="product">		
                        <div class="product-image">
                            <div class="image">
                                <a href="index.php?page=detail"><img  src="assets/images/blank.gif" data-echo="assets/images/products/2.jpg" alt=""></a>
                            </div><!-- /.image -->			

                            <div class="tag new"><span>new</span></div>                        		   
                        </div><!-- /.product-image -->


                        <div class="product-info text-left">
                            <h3 class="name"><a href="index.php?page=detail">Samsung Galaxy S4</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="description"></div>

                            <div class="product-price">	
                                <span class="price">
                                    $650.99				</span>
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
            </div><!-- /.item -->

            <div class="item item-carousel">
                <div class="products">

                    <div class="product">		
                        <div class="product-image">
                            <div class="image">
                                <a href="index.php?page=detail"><img  src="assets/images/blank.gif" data-echo="assets/images/products/3.jpg" alt=""></a>
                            </div><!-- /.image -->			

                            <div class="tag sale"><span>sale</span></div>            		   
                        </div><!-- /.product-image -->


                        <div class="product-info text-left">
                            <h3 class="name"><a href="index.php?page=detail">Apple Iphone 5s 32GB</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="description"></div>

                            <div class="product-price">	
                                <span class="price">
                                    $650.99				</span>
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
            </div><!-- /.item -->

            <div class="item item-carousel">
                <div class="products">

                    <div class="product">		
                        <div class="product-image">
                            <div class="image">
                                <a href="index.php?page=detail"><img  src="assets/images/blank.gif" data-echo="assets/images/products/2.jpg" alt=""></a>
                            </div><!-- /.image -->			

                            <div class="tag hot"><span>hot</span></div>		   
                        </div><!-- /.product-image -->


                        <div class="product-info text-left">
                            <h3 class="name"><a href="index.php?page=detail">Samsung Galaxy S4</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="description"></div>

                            <div class="product-price">	
                                <span class="price">
                                    $650.99				</span>
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
            </div><!-- /.item -->

            <div class="item item-carousel">
                <div class="products">

                    <div class="product">		
                        <div class="product-image">
                            <div class="image">
                                <a href="index.php?page=detail"><img  src="assets/images/blank.gif" data-echo="assets/images/products/6.jpg" alt=""></a>
                            </div><!-- /.image -->			

                            <div class="tag new"><span>new</span></div>                        		   
                        </div><!-- /.product-image -->


                        <div class="product-info text-left">
                            <h3 class="name"><a href="index.php?page=detail">Nokia Lumia 520</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="description"></div>

                            <div class="product-price">	
                                <span class="price">
                                    $650.99				</span>
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
            </div><!-- /.item -->

            <div class="item item-carousel">
                <div class="products">

                    <div class="product">		
                        <div class="product-image">
                            <div class="image">
                                <a href="index.php?page=detail"><img  src="assets/images/blank.gif" data-echo="assets/images/products/1.jpg" alt=""></a>
                            </div><!-- /.image -->			

                            <div class="tag hot"><span>hot</span></div>		   
                        </div><!-- /.product-image -->


                        <div class="product-info text-left">
                            <h3 class="name"><a href="index.php?page=detail">Sony Ericson Vaga</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="description"></div>

                            <div class="product-price">	
                                <span class="price">
                                    $650.99				</span>
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
            </div><!-- /.item -->

            <div class="item item-carousel">
                <div class="products">

                    <div class="product">		
                        <div class="product-image">
                            <div class="image">
                                <a href="index.php?page=detail"><img  src="assets/images/blank.gif" data-echo="assets/images/products/4.jpg" alt=""></a>
                            </div><!-- /.image -->			

                            <div class="tag sale"><span>sale</span></div>            		   
                        </div><!-- /.product-image -->


                        <div class="product-info text-left">
                            <h3 class="name"><a href="index.php?page=detail">LG Smart Phone LP68</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="description"></div>

                            <div class="product-price">	
                                <span class="price">
                                    $650.99				</span>
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
            </div><!-- /.item -->
        </div><!-- /.home-owl-carousel -->
    </section><!-- /.section -->
    <!-- ============================================== UPSELL PRODUCTS : END ============================================== -->

</div>