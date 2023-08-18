<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../resources/css/project_nsa/user/UserPage.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/e402926c7b.js" crossorigin="anonymous"></script>
    <title>Welcome to PrimeCube</title>
</head>
<body>
    <%@include file="../index/include/header.jsp" %>
       	<!-- Hero Section -->

        <section class="hero" id="hero">

            <div class="row">
                
                <div class="content">
                    <h1>Get books up to 50% Off!</h1>
                    <p>Embark on an extraordinary literary journey from the comfort of your own home. Our online bookstore is your gateway to a vast universe of stories, knowledge, and imagination.</p>
                    <a href="shop.html" class="hero-btn">Shop Now</a>
                </div>

                <div class="swiper books-slider">
                    <div class="swiper-wrapper">
                        <a href="#" class="swiper-slide"><img src="../../../resources/images/project_nsa/usr_page/book-31.jpg" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="../../../resources/images/project_nsa/usr_page/book-32.jpg" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="../../../resources/images/project_nsa/usr_page/book-33.jpg" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="../../../resources/images/project_nsa/usr_page/book-34.jpg" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="../../../resources/images/project_nsa/usr_page/book-35.jpg" alt=""></a>
                        <a href="#" class="swiper-slide"><img src="../../../resources/images/project_nsa/usr_page/book-36.jpg" alt=""></a>
                    </div>
                </div>
            </div>
            
        </section>

        <section class="support"> 
 
            <div class="support-icons">
                <i class="fas fa-plane"></i>
                    <div class="support-content">
                        <h3>무료 배송</h3>
                        <p>대한민국 전국 어디서나!</p>
                    </div>
            </div>

            <div class="support-icons">
                <i class="fas fa-headset"></i>
                    <div class="support-content">
                        <h3>월 ~ 금 근무</h3>
                        <p>오전 9시 ~ 오후 6시에 연락이 가능합니다.</p>
                    </div>
            </div>

            <div class="support-icons">
                <i class="fas fa-lock"></i>
                    <div class="support-content">
                        <h3>안전 결제</h3>
                        <p>100% 안전한 결제를 보장합니다.</p>
                    </div>
            </div>
            
            <div class="support-icons">
                <i class="fas fa-arrow-rotate-left"></i>
                    <div class="support-content">
                        <h3>Easy Return</h3>
                        <p>10 days return</p>
                    <div>
            </div>
        </section>

        <section class="featured" id="featured">
            <h1 class="heading"><span>Featured Books</span></h1>
            <p>Check out our selection of books on sale</p>
            <div class="swiper featured-slider">
                <div class="swiper-wrapper">
                    
                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-1.jpg">
                    </div>
                    <div class="content">
                        <h3>The Hunger Games</h3>
                        <div class="price">&#8369;410.94<span>&#8369;821.88</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>

                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-2.jpg">
                    </div>
                    <div class="content">
                        <h3>Catching Fire</h3>
                        <div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>

                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-3.jpg">
                    </div>
                    <div class="content">
                        <h3>Mockingjay</h3>
                        <div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>

                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-4.jpg">
                    </div>
                    <div class="content">
                        <h3>The Raven Boys</h3>
                        <div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>

                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-5.jpg">
                    </div>
                    <div class="content">
                        <h3>The Raven Boys</h3>
                        <div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>

                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-6.jpg">
                    </div>
                    <div class="content">
                        <h3>The Dream Thieves</h3>
                        <div class="price">&#8369;666.66<span>&#8369;999.99</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>

                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-7.jpg">
                    </div>
                    <div class="content">
                        <h3>Blue Lily, Lily Blue</h3>
                        <div class="price">&#8369;333.59 <span>&#8369;667.18</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>

                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-8.jpg">
                    </div>
                    <div class="content">
                        <h3>The Raven King</h3>
                        <div class="price">&#8369;666.66 <span>&#8369;999.99</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>


                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-9.jpg">
                    </div>
                    <div class="content">
                        <h3>Six of Crows</h3>
                        <div class="price">&#8369;666.66 <span>&#8369;999.99</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>

                    <div class="swiper-slide box">
                        <div class="featured-icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        </div>
                    <div class="images">
                        <img src="../../../resources/images/project_nsa/usr_page/book-10.jpg">
                    </div>
                    <div class="content">
                        <h3>Crooked Kingdom</h3>
                        <div class="price">&#8369;666.66 <span>&#8369;999.99</span></div>
                        <a href="#" class="featured-btn">Add to Cart</a>
                    </div>
                    </div>
                
                </div>

                <div class="swiper-button-next swiper-button-black"></div>
                <div class="swiper-button-prev"></div>

            </div>
        </section>

        <section class="arrivals" id="arrivals">
            
            <h1 class="heading"><span>New Arrivals</span></h1>
            <p>New books are here! Find the perfect book for you.</p>

            <div class="swiper arrivals-slider">

                <div class="swiper-wrapper">
                    
                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="../../../resources/images/project_nsa/usr_page/book-11.jpg" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>A History of Burning</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="../../../resources/images/project_nsa/usr_page/book-12.jpg" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>Yellowface</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="../../../resources/images/project_nsa/usr_page/book-13.jpg" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>Deep As The Sky, Red As The Sea</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="../../../resources/images/project_nsa/usr_page/book-14.jpg" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>Alone With You In The Ether</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="img/book-15.jpg" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>Daisy Jones & The Six</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="../../../resources/images/project_nsa/usr_page/book-16.jpg" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>If We Were Villains</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="../../../resources/images/project_nsa/usr_page/book-17.jpg" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>The Secret History</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="../../../resources/images/project_nsa/usr_page/book-18.jpg" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>Normal People</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="../../../resources/images/project_nsa/usr_page/book-19.jpg" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>The Picture of Dorian Gray</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                    <a href="#" class="swiper-slide box">
                        <div class="arrivals-image">
                            <img src="../../../resources/images/project_nsa/usr_page/book-20.png" alt="">
                        </div>
                        <div class="arrivals-content">
                          <h3>The Master & Margarita</h3>
                          <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                          <div class="arrivals-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                          </div>
                        </div>
                    </a>

                </div>

                <div class="swiper arrivals-slider">
                    <div class="swiper-wrapper">
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="../../../resources/images/project_nsa/usr_page/book-21.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>The Poppy War</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
    
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="../../../resources/images/project_nsa/usr_page/book-22.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>The Dragon Republic</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
    
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="../../../resources/images/project_nsa/usr_page/book-23.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>The Burning God</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
    
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="img/book-24.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>Throne of Glass</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
    
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="../../../resources/images/project_nsa/usr_page/book-25.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>Crown of Midnight</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
    
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="img/book-26.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>Heir of Fire</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
    
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="../../../resources/images/project_nsa/usr_page/book-27.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>Queen of Shadows</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
    
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="../../../resources/images/project_nsa/usr_page/book-28.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>Empire of Storms</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
    
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="img/book-29.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>Tower of Dawn</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
    
                        <a href="#" class="swiper-slide box">
                            <div class="arrivals-image">
                                <img src="../../../resources/images/project_nsa/usr_page/book-30.jpg" alt="">
                            </div>
                            <div class="arrivals-content">
                              <h3>Kingdom of Ash</h3>
                              <div class="arrivals-price">&#8369;666.66<span>&#8369;999.99</span></div>
                              <div class="arrivals-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                              </div>
                            </div>
                        </a>
                    </div>
            </div>
        </section>

        <section class="deal">
            <div class="content">
                <h3>Deal of the Day</h3>
                <h1>Enjoy Exclusive Discounts on Books Today!</h1>
                <p>Indulge your passion for reading while saving big with our exclusive selection of discounted books. Explore a treasure trove of literary gems at unbeatable prices, where quality meets affordability. </p>
                <a href="shop.html" class="deal-btn">Shop Now</a>
            </div>

            <div class="image">
                <img src="img/deal.jpg" alt="">
            </div>
        </section>
		<%@include file="../index/include/reviews.jsp" %>


       	
        <%-- <%@include file="../index/include/side_remote.jsp" %> --%>
   <%@include file="../index/include/footer.jsp" %>
    
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="../../../resources/js/project_nsa/user/script.js"></script>

    <!--Custom JS file link-->
    <script type="text/javascript">
    
	$("#search_books").on("click", function(){
		location.href = "/projectNSA/search";
	});
    
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true
			, chche : false
			, type : "post"
			, url : "/logOutP"
			,data : { }
			, success : function(respone){
				alert("로그아웃 되셨습니다.");
				location.href = "/projectNSA/main_page";
			}
			, error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	});


	validation = function() {
//		 if(!checkNull($("#userID"), $.trim($("#userID").val()), "아이디를 입력해 주세요!")) return false;
//		 if(!checkNull($("#userPW"), $.trim($("#userPW").val()), "비밀번호를 입력해 주세요!")) return false;
	}

	</script>
</body>
</html>