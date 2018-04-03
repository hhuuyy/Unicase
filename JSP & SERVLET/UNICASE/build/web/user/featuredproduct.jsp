<%@page import="entity.Products"%>
<%@page import="dao.ProductsDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="section featured-product wow fadeInUp">
    <h3 class="section-title">Featured products</h3>
    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">

        <%
            ProductsDao p = new ProductsDao();
            List<Products> l = p.showProduct();
        %>
        <%
            for (Products p2 : l) {
        %>
        <div class="item item-carousel" >
            <div class="products">
                <div class="product">		
                    <div class="product-image">
                        <div class="image">
                            <a href="detail.jsp?id=<%= p2.getId() %>"><img  src="assets/images/products/<%= p2.getImage()%>" alt="" height="243" width="195"></a>
                        </div><!-- /.image -->			

                        <div class="tag sale"><span>sale</span></div>            		   
                    </div><!-- /.product-image -->

                    <div class="product-info text-left">
                        <h3 class="name"><a href="detail.jsp?id=<%= p2.getId() %>"><%= p2.getName()%></a></h3>
                        <div class="rating rateit-small"></div>
                        <div class="description"></div>

                        <div class="product-price">	
                            <span class="price">
                                $<%= p2.getUnitPrice()%>	</span>
                            <span class="price-before-discount"></span>

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
                                    <a class="add-to-cart" href="#" title="Wishlist">
                                        <i class="icon fa fa-heart"></i>
                                    </a>
                                </li>

                                <li class="lnk">
                                    <a class="add-to-cart" href="#" title="Compare">
                                        <i class="fa fa-retweet"></i>
                                    </a>
                                </li>
                            </ul>
                        </div><!-- /.action -->
                    </div><!-- /.cart -->
                </div><!-- /.product -->

            </div><!-- /.products -->
        </div><!-- /.item -->

        <%
            }
        %>

    </div><!-- /.home-owl-carousel -->
</section><!-- /.section -->