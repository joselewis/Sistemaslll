<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="Tienda.PaginaPrincipal1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
  
    <%--  --%>
      <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0" name="viewport">

      <title>ZenBlog Bootstrap Template - Index</title>
      <meta content="" name="description">
      <meta content="" name="keywords">

      <!-- Favicons -->
      <link href="assets/img/favicon.png" rel="icon">
      <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

      <!-- Google Fonts -->
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

      <!-- Vendor CSS Files -->
      <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
      <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
      <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
      <link href="assets/vendor/aos/aos.css" rel="stylesheet">

      <!-- Template Main CSS Files -->
      <link href="assets/css/variables.css" rel="stylesheet">
      <link href="assets/css/main.css" rel="stylesheet">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/carousel-rtl/">
    <!-- Bootstrap core CSS -->
    <link href="PaginaPrincipal/carousel.rtl.css" rel="stylesheet" />
    <link href="PaginaPrincipal/carousel.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- ======= Header ======= -->

    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
      <div class="position-relative">
        <a  class="mx-2 js-search-open"></a>
        <i class="bi bi-list mobile-nav-toggle"></i>

        <!-- ======= Search Form ======= -->
        <div class="search-form-wrap js-search-form-wrap">
          <form action="search-result.html" class="search-form">
            <span class="icon bi-search"></span>
            <input type="text" placeholder="Search" class="form-control">
            <button class="btn js-search-close"><span class="bi-x"></span></button>
          </form>
        </div><!-- End Search Form -->
      </div>
    </div>

  <main id="main">
    <!-- ======= Hero Slider Section ======= -->
    <section id="hero-slider" class="hero-slider">
      <div class="container-md" data-aos="fade-in">
        <div class="row">
          <div class="col-12">
            <div class="swiper sliderFeaturedPosts">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <a class="img-bg d-flex align-items-end" style="background-image: url('assets/img/4538906.jpg');">
                    <div class="img-bg-inner">
                      <h2>Marvel Comics</h2>
                      <p>Marvel Comics (or simply Marvel) is an American comic book publisher and primary imprint of Marvel Worldwide Inc.</p>
                    </div>
                  </a>
                </div>

                <div class="swiper-slide">
                  <a class="img-bg d-flex align-items-end" style="background-image: url('assets/img/dc-comics-layoffs-reportedly-affect-a-third-of-editorial-sta_g9ap.jpg');">
                    <div class="img-bg-inner">
                      <h2>DC Comics</h2>
                      <p>DC Comics, Inc. (or simply DC) is an American comic book publisher and the flagship unit of DC Entertainment,[4][5] a subsidiary of Warner Bros. Discovery</p>
                    </div>
                  </a>
                </div>

                <div class="swiper-slide">
                  <a class="img-bg d-flex align-items-end" style="background-image: url('assets/img/NbkvkgfMP6du7nre4qUH6K.jpg');">
                    <div class="img-bg-inner">
                      <h2></h2>
                      <p></p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="custom-swiper-button-next">
                <span class="bi-chevron-right"></span>
              </div>
              <div class="custom-swiper-button-prev">
                <span class="bi-chevron-left"></span>
              </div>

              <div class="swiper-pagination"></div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Hero Slider Section -->

    <!-- ======= Post Grid Section ======= -->
        <section id="posts" class="posts">
          <div class="container" data-aos="fade-up">
            <div class="row g-5">
              <div class="col-lg-4">
                <div class="post-entry-1 lg">
                  <a><img src="assets/img/NeilGaiman.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">DC Comics</span> <span class="mx-1">&bullet;</span> <span>Aug 18th '22</span></div>
                  <h2><p>The Sandman creators on adapting one of the darkest storylines from the comics</p></h2>
                  <p class="mb-4 d-block">"It was a challenge but then, also really rewarding because it freed me up as a writer to think outside of the comics in a way, and really dig into telling the same story through a different lens. It liberated me, I think, for the rest of the series, too, to make it as full-bodied an adaptation as possible. That it really lived on the screen as its own entity, even as it’s indebted to the source material."</p>
                  <div class="d-flex align-items-center author">
                    <div class="photo"><img src="assets/img/Gato.jpg" alt="" class="img-fluid"></div>
                    <div class="name">
                      <h3 class="m-0 p-0">José Lewis</h3>
                    </div>
                  </div>
                </div>

              </div>

              <div class="col-lg-8">
                <div class="row g-5">
                  <!-- Trending Section -->

                </div>
              </div>

            </div> <!-- End .row -->
          </div>
        </section> <!-- End Post Grid Section -->

    <!-- ======= Culture Category Section ======= -->
    <section class="category-section">
      <div class="container" data-aos="fade-up">

        <div class="section-header d-flex justify-content-between align-items-center mb-5">
          <h2>Marvel</h2>
        </div>

        <div class="row">
          <div class="col-md-9">

            <div class="d-lg-flex post-entry-2">
              <a class="me-4 thumbnail mb-4 mb-lg-0 d-inline-block">
                <img src="assets/img/Marvel-Comics-Logo.svg.png" alt="" class="img-fluid">
              </a>
              <div>
                <div class="post-meta"><span class="date">Marvel Comics</span> <span class="mx-1">&bullet;</span> <span>Aug 10th '22</span></div>
                <h3><a >Marvel Comics</a></h3>
                <p>Marvel was started in 1939 by Martin Goodman as Timely Comics, and by 1951 had generally become known as Atlas Comics. The Marvel era began in 1961, the year that the company launched The Fantastic Four and other superhero titles created by Stan Lee, Jack Kirby, Steve Ditko and many others.</p>
                <div class="d-flex align-items-center author">
                  <div class="photo"><img src="assets/img/Gato.jpg" alt="" class="img-fluid"></div>
                  <div class="name">
                    <h3 class="m-0 p-0">Kevin Brenes</h3>
                  </div>
                </div>
              </div>
            </div>

            
          </div>

          
        </div>
      </div>
    </section><!-- End Culture Category Section -->

    <!-- ======= Business Category Section ======= -->
    <section class="category-section">
      <div class="container" data-aos="fade-up">
        <div class="section-header d-flex justify-content-between align-items-center mb-5">
          <h2>Dc Comics</h2>
        </div>
        <div class="row">
          <div class="col-md-9 order-md-2">
            <div class="d-lg-flex post-entry-2">
              <a class="me-4 thumbnail d-inline-block mb-4 mb-lg-0">
                <img src="assets/img/DC_Comics_logo.svg.png" alt="" class="img-fluid">
              </a>
              <div>
                <div class="post-meta"><span class="date">DC Comics</span> <span class="mx-1">&bullet;</span> <span>Aug 11th '22</span></div>
                <h3><a>DC Comics</a></h3>
                <p>DC Comics is known as the king of all 
                    comic books. It has been the leader in 
                    the industry since its launch in 1934. They 
                    paved their way with their styles and strategies 
                    and many other comics book industries in 
                    America followed them such as their rival 
                    Marvel Comics. The history of DC Comics has 
                    gone on to be a huge part of American culture.
                </p>
                <div class="d-flex align-items-center author">
                  <div class="photo"><img src="assets/img/Gato.jpg" alt="" class="img-fluid"></div>
                  <div class="name">
                    <h3 class="m-0 p-0">Renan Vargas</h3>
                  </div>
                </div>
              </div>
            </div>
          </div> 
        </div>
      </div>
    </section><!-- End Business Category Section -->

  </main><!-- End #main -->
  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</asp:Content>  