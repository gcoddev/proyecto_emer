<%@page import="com.emergentes.models.Usuario"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    HttpSession ses = request.getSession();
    Usuario user = new Usuario();
    if (ses.getAttribute("user") != null) {
        user = (Usuario) ses.getAttribute("user");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="stylesheet" href="assets/css/vendor.css" />
        <link rel="stylesheet" href="assets/css/main.css" />

        <title>Cursos</title>
    </head>

    <body class="preloader-visible" data-barba="wrapper">
        <div class="preloader js-preloader">
            <div class="preloader__bg"></div>
        </div>

        <main class="main-content">
            <header
                data-anim="fade"
                data-add-bg="bg-dark-1"
                class="header -type-1 js-header"
                >
                <div class="header__container">
                    <div class="row justify-between items-center">
                        <div class="col-auto">
                            <div class="header-left">
                                <div class="header__logo">
                                    <a data-barba href="index-2.html">
                                        <img src="assets/img/Sistemas.png" width="50" alt="logo" />
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="header-menu js-mobile-menu-toggle">
                            <div class="header-menu__content">
                                <div class="mobile-bg js-mobile-bg"></div>

                                <div
                                    class="d-none xl:d-flex items-center px-20 py-20 border-bottom-light"
                                    >
                                    <a href="login.html" class="text-dark-1">Log in</a>
                                    <a href="signup.html" class="text-dark-1 ml-30">Sign Up</a>
                                </div>

                                <div class="menu js-navList">
                                    <ul class="menu__nav text-white -is-active">
                                        <li>
                                            <a data-barba href="contact-1.html">Cursos</a>
                                        </li>
                                        <li>
                                            <a data-barba href="contact-1.html">Acerca de</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div
                                class="header-menu-close"
                                data-el-toggle=".js-mobile-menu-toggle"
                                >
                                <div
                                    class="size-40 d-flex items-center justify-center rounded-full bg-white"
                                    >
                                    <div class="icon-close text-dark-1 text-16"></div>
                                </div>
                            </div>

                            <div class="header-menu-bg"></div>
                        </div>

                        <div class="col-auto">
                            <div class="header-right d-flex items-center">
                                <div class="header-right__icons text-white d-flex items-center">
                                    <div class="">
                                        <button
                                            class="d-flex items-center text-white"
                                            data-el-toggle=".js-search-toggle"
                                            >
                                            <i class="text-20 icon icon-search"></i>
                                        </button>
                                    </div>

                                    <div class="d-none xl:d-block ml-20">
                                        <button
                                            class="text-white items-center"
                                            data-el-toggle=".js-mobile-menu-toggle"
                                            >
                                            <i class="text-11 icon icon-mobile-menu"></i>
                                        </button>
                                    </div>
                                </div>

                                <div
                                    class="header-right__buttons d-flex items-center ml-30 md:d-none"
                                    >
                                    <a href="login.html" class="button -underline text-white"
                                       >Log in</a
                                    >
                                    <a
                                        href="signup.html"
                                        class="button -sm -white text-dark-1 ml-30"
                                        >Sign up</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div class="content-wrapper  js-content-wrapper">


                <section data-anim="fade" class="breadcrumbs ">
                    <div class="container">
                        <div class="row">
                            <div class="col-auto">
                                <div class="breadcrumbs__content">

                                    <div class="breadcrumbs__item ">
                                        <a href="index.jsp">Inicio</a>
                                    </div>
                                    <div class="breadcrumbs__item ">
                                        <a href="#">Cursos</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>


                <section class="page-header -type-1">
                    <div class="container">
                        <div class="page-header__content">
                            <div class="row">
                                <div class="col-auto">
                                    <div data-anim="slide-up delay-1">

                                        <h1 class="page-header__title">Cursos</h1>

                                    </div>

                                    <div data-anim="slide-up delay-2">

                                        <p class="page-header__text">Todos los cursos disponibles</p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


                <section class="layout-pt-md layout-pb-lg">
                    <div data-anim-wrap class="container">
                        <div class="row y-gap-50">
                            <div data-anim-child="slide-up delay-3" class="col-xl-9 col-lg-8">
                                <div class="accordion">
                                    <div class="accordion__item">
                                        <div class="row y-gap-20 items-center justify-between pb-30">
                                            <div class="col-auto">
                                                <div class="text-14 lh-12">Listando un total de <span class="text-dark-1 fw-500">250</span> cursos</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row y-gap-30">

                                    <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6">

                                        <a href="courses-single-1.html" class="coursesCard -type-1 ">
                                            <div class="relative">
                                                <div class="coursesCard__image overflow-hidden rounded-8">
                                                    <img class="w-1/1" src="img/coursesCards/2.png" alt="image">
                                                    <div class="coursesCard__image_overlay rounded-8"></div>
                                                </div>
                                                <div class="d-flex justify-between py-10 px-10 absolute-full-center z-3">

                                                    <div>
                                                        <div class="px-15 rounded-200 bg-purple-1">
                                                            <span class="text-11 lh-1 uppercase fw-500 text-white">Popular</span>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <div class="px-15 rounded-200 bg-green-1">
                                                            <span class="text-11 lh-1 uppercase fw-500 text-dark-1">Best sellers</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="h-100 pt-15">
                                                <div class="d-flex items-center">
                                                    <div class="text-14 lh-1 text-yellow-1 mr-10">4.5</div>
                                                    <div class="d-flex x-gap-5 items-center">
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                    </div>
                                                    <div class="text-13 lh-1 ml-10">(1991)</div>
                                                </div>

                                                <div class="text-17 lh-15 fw-500 text-dark-1 mt-10">Complete Python Bootcamp From Zero to Hero in Python</div>

                                                <div class="d-flex x-gap-10 items-center pt-10">

                                                    <div class="d-flex items-center">
                                                        <div class="mr-8">
                                                            <img src="img/coursesCards/icons/1.svg" alt="icon">
                                                        </div>
                                                        <div class="text-14 lh-1">6 lesson</div>
                                                    </div>

                                                    <div class="d-flex items-center">
                                                        <div class="mr-8">
                                                            <img src="img/coursesCards/icons/2.svg" alt="icon">
                                                        </div>
                                                        <div class="text-14 lh-1">3h 56m</div>
                                                    </div>

                                                    <div class="d-flex items-center">
                                                        <div class="mr-8">
                                                            <img src="img/coursesCards/icons/3.svg" alt="icon">
                                                        </div>
                                                        <div class="text-14 lh-1">Beginner</div>
                                                    </div>

                                                </div>

                                                <div class="coursesCard-footer">
                                                    <div class="coursesCard-footer__author">
                                                        <img src="img/general/avatar-1.png" alt="image">
                                                        <div>Ali Tufan</div>
                                                    </div>

                                                    <div class="coursesCard-footer__price">
                                                        <div>$179</div>
                                                        <div>$79</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>

                                    </div>

                                    <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6">

                                        <a href="courses-single-1.html" class="coursesCard -type-1 ">
                                            <div class="relative">
                                                <div class="coursesCard__image overflow-hidden rounded-8">
                                                    <img class="w-1/1" src="img/coursesCards/3.png" alt="image">
                                                    <div class="coursesCard__image_overlay rounded-8"></div>
                                                </div>
                                                <div class="d-flex justify-between py-10 px-10 absolute-full-center z-3">

                                                </div>
                                            </div>

                                            <div class="h-100 pt-15">
                                                <div class="d-flex items-center">
                                                    <div class="text-14 lh-1 text-yellow-1 mr-10">4.5</div>
                                                    <div class="d-flex x-gap-5 items-center">
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                        <div class="icon-star text-9 text-yellow-1"></div>
                                                    </div>
                                                    <div class="text-13 lh-1 ml-10">(1991)</div>
                                                </div>

                                                <div class="text-17 lh-15 fw-500 text-dark-1 mt-10">Angular - The Complete Guide (2022 Edition)</div>

                                                <div class="d-flex x-gap-10 items-center pt-10">

                                                    <div class="d-flex items-center">
                                                        <div class="mr-8">
                                                            <img src="img/coursesCards/icons/1.svg" alt="icon">
                                                        </div>
                                                        <div class="text-14 lh-1">6 lesson</div>
                                                    </div>

                                                    <div class="d-flex items-center">
                                                        <div class="mr-8">
                                                            <img src="img/coursesCards/icons/2.svg" alt="icon">
                                                        </div>
                                                        <div class="text-14 lh-1">3h 56m</div>
                                                    </div>

                                                    <div class="d-flex items-center">
                                                        <div class="mr-8">
                                                            <img src="img/coursesCards/icons/3.svg" alt="icon">
                                                        </div>
                                                        <div class="text-14 lh-1">Beginner</div>
                                                    </div>

                                                </div>

                                                <div class="coursesCard-footer">
                                                    <div class="coursesCard-footer__author">
                                                        <img src="img/general/avatar-1.png" alt="image">
                                                        <div>Ali Tufan</div>
                                                    </div>

                                                    <div class="coursesCard-footer__price">
                                                        <div>$179</div>
                                                        <div>$79</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>

                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-4 lg:d-none">
                                <div class="pl-30 lg:pl-0">

                                    <div data-anim="slide-up delay-2" class="sidebar -courses">
                                        <div class="sidebar__item">
                                            <div class="accordion js-accordion">
                                                <div class="accordion__item js-accordion-item-active">
                                                    <div class="accordion__button items-center">
                                                        <h5 class="sidebar__title">Category</h5>

                                                        <div class="accordion__icon">
                                                            <div class="icon icon-chevron-down"></div>
                                                            <div class="icon icon-chevron-up"></div>
                                                        </div>
                                                    </div>

                                                    <div class="accordion__content">
                                                        <div class="accordion__content__inner">
                                                            <div class="sidebar-checkbox">

                                                                <div class="sidebar-checkbox__item">
                                                                    <div class="form-checkbox">
                                                                        <input type="checkbox">
                                                                        <div class="form-checkbox__mark">
                                                                            <div class="form-checkbox__icon icon-check"></div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="sidebar-checkbox__title">Art</div>
                                                                    <div class="sidebar-checkbox__count">(18)</div>
                                                                </div>

                                                                <div class="sidebar-checkbox__item">
                                                                    <div class="form-checkbox">
                                                                        <input type="checkbox">
                                                                        <div class="form-checkbox__mark">
                                                                            <div class="form-checkbox__icon icon-check"></div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="sidebar-checkbox__title">Exercise</div>
                                                                    <div class="sidebar-checkbox__count">(12)</div>
                                                                </div>

                                                                <div class="sidebar-checkbox__item">
                                                                    <div class="form-checkbox">
                                                                        <input type="checkbox">
                                                                        <div class="form-checkbox__mark">
                                                                            <div class="form-checkbox__icon icon-check"></div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="sidebar-checkbox__title">Software Development</div>
                                                                    <div class="sidebar-checkbox__count">(23)</div>
                                                                </div>

                                                                <div class="sidebar-checkbox__item">
                                                                    <div class="form-checkbox">
                                                                        <input type="checkbox">
                                                                        <div class="form-checkbox__mark">
                                                                            <div class="form-checkbox__icon icon-check"></div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="sidebar-checkbox__title">Music</div>
                                                                    <div class="sidebar-checkbox__count">(67)</div>
                                                                </div>

                                                                <div class="sidebar-checkbox__item">
                                                                    <div class="form-checkbox">
                                                                        <input type="checkbox">
                                                                        <div class="form-checkbox__mark">
                                                                            <div class="form-checkbox__icon icon-check"></div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="sidebar-checkbox__title">Material Design</div>
                                                                    <div class="sidebar-checkbox__count">(34)</div>
                                                                </div>

                                                                <div class="sidebar-checkbox__item">
                                                                    <div class="form-checkbox">
                                                                        <input type="checkbox">
                                                                        <div class="form-checkbox__mark">
                                                                            <div class="form-checkbox__icon icon-check"></div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="sidebar-checkbox__title">Photography</div>
                                                                    <div class="sidebar-checkbox__count">(12)</div>
                                                                </div>

                                                            </div>

                                                            <div class="sidebar__more mt-15">
                                                                <a href="#" class="text-14 fw-500 underline text-purple-1">Show more</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <footer class="footer -type-1 bg-dark-1 -green-links">
                    <div class="container">
                        <div class="footer-header">
                            <div class="row y-gap-20 justify-between items-center">
                                <div class="col-auto">
                                    <div class="footer-header__logo">
                                        <img src="img/footer/footer-logo.svg" alt="logo" />
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <div class="footer-header-socials">
                                        <div class="footer-header-socials__title text-white">
                                            Follow us on social media
                                        </div>
                                        <div class="footer-header-socials__list">
                                            <a href="#"><i class="icon-facebook"></i></a>
                                            <a href="#"><i class="icon-twitter"></i></a>
                                            <a href="#"><i class="icon-instagram"></i></a>
                                            <a href="#"><i class="icon-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="footer-columns">
                            <div class="row y-gap-30">
                                <div class="col-xl-4 col-lg-8">
                                    <div class="text-17 fw-500 text-white uppercase mb-25">
                                        CATEGORIES
                                    </div>
                                    <div class="row justify-between y-gap-20">
                                        <div class="col-md-6">
                                            <div class="d-flex y-gap-10 flex-column">
                                                <a href="courses-single-1.html">Development</a>
                                                <a href="courses-single-2.html">Business</a>
                                                <a href="courses-single-3.html">Finance & Accounting</a>
                                                <a href="courses-single-4.html">IT & Software</a>
                                                <a href="courses-single-5.html">Office Productivity</a>
                                                <a href="courses-single-6.html">Design</a>
                                                <a href="courses-single-1.html">Marketing</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-3 col-lg-4 col-md-6">
                                    <div class="text-17 fw-500 text-white uppercase mb-25">
                                        GET IN TOUCH
                                    </div>
                                    <div class="footer-columns-form">
                                        <div>We don’t send spam so don’t worry.</div>
                                        <form
                                            action="https://creativelayers.net/themes/educrat-html/post"
                                            >
                                            <div class="form-group">
                                                <input type="text" placeholder="Email..." />
                                                <button type="submit">Submit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="py-30 border-top-light-15">
                            <div class="row justify-between items-center y-gap-20">
                                <div class="col-auto">
                                    <div class="d-flex items-center h-100 text-white">
                                        © 2023 Todos los derechos reservados.
                                    </div>
                                </div>

                                <div class="col-auto">
                                    <div class="d-flex x-gap-20 y-gap-20 items-center flex-wrap">
                                        <div>
                                            <div class="d-flex x-gap-15 text-white">
                                                <a href="help-center.html">Acerca de</a>
                                            </div>
                                        </div>

                                        <div>
                                            <a
                                                href="#"
                                                class="button px-30 h-50 -dark-6 rounded-200 text-white"
                                                >
                                                <i class="icon-worldwide text-20 mr-15"></i
                                                ><span class="text-15">Español</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </main>
        <script src="assets/js/vendor.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
