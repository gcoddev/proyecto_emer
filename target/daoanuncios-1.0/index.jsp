<%@page import="java.util.List"%>
<%@page import="com.emergentes.models.Aviso"%>
<%
    List<Aviso> avisos = (List<Aviso>) request.getAttribute("avisos");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Stylesheets -->
        <link rel="stylesheet" href="assets/css/vendors.css" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="stylesheet" href="assets/css/bootstrap.css"/>
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
                                        <img src="img/general/logo.svg" alt="logo" />
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
                                    <a href="login.jsp" class="button -underline text-white"
                                       >Iniciar sesion</a
                                    >
                                    <a
                                        href="signup.jsp"
                                        class="button -sm -white text-dark-1 ml-30"
                                        >Registrate</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div class="content-wrapper js-content-wrapper">
                <section class="masthead -type-1 js-mouse-move-container">
                    <div class="masthead__bg">
                        <img src="img/home-1/hero/bg.png" alt="image" />
                    </div>

                    <div class="container">
                        <div data-anim-wrap class="row y-gap-30 justify-between items-end">
                            <div class="col-xl-6 col-lg-6 col-sm-10">
                                <div class="masthead__content">
                                    <h1 data-anim-child="slide-up" class="masthead__title">
                                        Aprende en linea con
                                        <span class="text-green-1 underline">Cursos Online</span>
                                    </h1>
                                    <div
                                        data-anim-child="slide-up delay-2"
                                        class="masthead__buttons row x-gap-10 y-gap-10"
                                        >
                                        <div class="col-12 col-sm-auto">
                                            <a
                                                data-barba
                                                href="signup.html"
                                                class="button -md -purple-1 text-white"
                                                >Iniciar sesion</a
                                            >
                                        </div>
                                        <div class="col-12 col-sm-auto">
                                            <a
                                                data-barba
                                                href="courses-list-1.html"
                                                class="button -md -outline-green-1 text-green-1"
                                                >Ver todos los cursos</a
                                            >
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div data-anim-child="slide-up delay-5" class="col-xl-6 col-lg-6">
                                <div class="masthead-image">
                                    <div class="masthead-image__el1">
                                        <img
                                            class="js-mouse-move"
                                            data-move="40"
                                            src="img/masthead/1.png"
                                            alt="image"
                                            />

                                        <div
                                            data-move="30"
                                            class="lg:d-none img-el -w-250 px-20 py-20 d-flex items-center bg-white rounded-8 js-mouse-move"
                                            >
                                            <div
                                                class="size-50 d-flex justify-center items-center bg-red-2 rounded-full"
                                                >
                                                <img src="img/masthead/1.svg" alt="icon" />
                                            </div>
                                            <div class="ml-20">
                                                <div class="text-orange-1 text-16 fw-500 lh-1">
                                                    3.000 +
                                                </div>
                                                <div class="mt-3">Free Courses</div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="masthead-image__el2">
                                        <img
                                            class="js-mouse-move"
                                            data-move="70"
                                            src="img/masthead/2.png"
                                            alt="image"
                                            />

                                        <div
                                            data-move="60"
                                            class="lg:d-none img-el -w-260 px-20 py-20 d-flex items-center bg-white rounded-8 js-mouse-move"
                                            >
                                            <img src="img/masthead/4.png" alt="icon" />
                                            <div class="ml-20">
                                                <div class="text-dark-1 text-16 fw-500 lh-1">
                                                    Ali Tufan
                                                </div>
                                                <div class="mt-3">UX/UI Designer</div>
                                                <div class="d-flex x-gap-5 mt-3">
                                                    <div>
                                                        <div class="icon-star text-yellow-1 text-11"></div>
                                                    </div>
                                                    <div>
                                                        <div class="icon-star text-yellow-1 text-11"></div>
                                                    </div>
                                                    <div>
                                                        <div class="icon-star text-yellow-1 text-11"></div>
                                                    </div>
                                                    <div>
                                                        <div class="icon-star text-yellow-1 text-11"></div>
                                                    </div>
                                                    <div>
                                                        <div class="icon-star text-yellow-1 text-11"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="masthead-image__el3">
                                        <img
                                            class="js-mouse-move"
                                            data-move="40"
                                            src="img/masthead/3.png"
                                            alt="image"
                                            />

                                        <div
                                            data-move="30"
                                            class="shadow-4 img-el -w-260 px-30 py-20 d-flex items-center bg-white rounded-8 js-mouse-move"
                                            >
                                            <div class="img-el__side">
                                                <div
                                                    class="size-50 d-flex justify-center items-center bg-purple-1 rounded-full"
                                                    >
                                                    <img src="img/masthead/2.svg" alt="icon" />
                                                </div>
                                            </div>
                                            <div class="">
                                                <div class="text-purple-1 text-16 fw-500 lh-1">
                                                    Congrats!
                                                </div>
                                                <div class="mt-3">Your Admission Completed</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <svg
                        class="svg-waves"
                        xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink"
                        viewBox="0 24 150 28"
                        preserveAspectRatio="none"
                        shape-rendering="auto"
                        >
                    <defs>
                    <path
                        id="gentle-wave"
                        d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"
                        />
                    </defs>
                    <g class="svg-waves__parallax">
                    <use xlink:href="#gentle-wave" x="48" y="0" />
                    <use xlink:href="#gentle-wave" x="48" y="3" />
                    <use xlink:href="#gentle-wave" x="48" y="5" />
                    <use xlink:href="#gentle-wave" x="48" y="7" />
                    </g>
                    </svg>
                </section>

                <section class="layout-pt-md layout-pb-lg">
                    <div data-anim-wrap class="container">
                        <div class="row justify-center text-center">
                            <div class="col-auto">
                                <div class="sectionTitle">
                                    <h2 class="sectionTitle__title">Ultimos cursos</h2>
                                    <p class="sectionTitle__text">
                                        Explore los cursos mas recientes
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="tabs -pills pt-50 js-tabs">
                            <div class="tabs__content pt-60 js-tabs-content">
                                <div class="tabs__pane -tab-item-1 is-active">
                                    <div class="row y-gap-30 justify-center">
                                        <div class="col-lg-3 col-md-6">
                                            <div data-anim-child="slide-up delay-3">
                                                <a
                                                    href="courses-single-1.html"
                                                    class="coursesCard -type-1"
                                                    >
                                                    <div class="relative">
                                                        <div
                                                            class="coursesCard__image overflow-hidden rounded-8"
                                                            >
                                                            <img
                                                                class="w-1/1"
                                                                src="img/coursesCards/3.png"
                                                                alt="image"
                                                                />
                                                            <div
                                                                class="coursesCard__image_overlay rounded-8"
                                                                ></div>
                                                        </div>
                                                        <div
                                                            class="d-flex justify-between py-10 px-10 absolute-full-center z-3"
                                                            ></div>
                                                    </div>

                                                    <div class="h-100 pt-15">
                                                        <div class="d-flex items-center">
                                                            <div class="text-14 lh-1 text-yellow-1 mr-10">
                                                                4.5
                                                            </div>
                                                            <div class="d-flex x-gap-5 items-center">
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                            </div>
                                                            <div class="text-13 lh-1 ml-10">(1991)</div>
                                                        </div>

                                                        <div class="text-17 lh-15 fw-500 text-dark-1 mt-10">
                                                            Angular - The Complete Guide (2022 Edition)
                                                        </div>

                                                        <div class="d-flex x-gap-10 items-center pt-10">
                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/1.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">6 lesson</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/2.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">3h 56m</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/3.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">Beginner</div>
                                                            </div>
                                                        </div>

                                                        <div class="coursesCard-footer">
                                                            <div class="coursesCard-footer__author">
                                                                <img
                                                                    src="img/general/avatar-1.png"
                                                                    alt="image"
                                                                    />
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

                                        <div class="col-lg-3 col-md-6">
                                            <div data-anim-child="slide-up delay-4">
                                                <a
                                                    href="courses-single-1.html"
                                                    class="coursesCard -type-1"
                                                    >
                                                    <div class="relative">
                                                        <div
                                                            class="coursesCard__image overflow-hidden rounded-8"
                                                            >
                                                            <img
                                                                class="w-1/1"
                                                                src="img/coursesCards/4.png"
                                                                alt="image"
                                                                />
                                                            <div
                                                                class="coursesCard__image_overlay rounded-8"
                                                                ></div>
                                                        </div>
                                                        <div
                                                            class="d-flex justify-between py-10 px-10 absolute-full-center z-3"
                                                            ></div>
                                                    </div>

                                                    <div class="h-100 pt-15">
                                                        <div class="d-flex items-center">
                                                            <div class="text-14 lh-1 text-yellow-1 mr-10">
                                                                4.5
                                                            </div>
                                                            <div class="d-flex x-gap-5 items-center">
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                            </div>
                                                            <div class="text-13 lh-1 ml-10">(1991)</div>
                                                        </div>

                                                        <div class="text-17 lh-15 fw-500 text-dark-1 mt-10">
                                                            The Ultimate Drawing Course Beginner to Advanced
                                                        </div>

                                                        <div class="d-flex x-gap-10 items-center pt-10">
                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/1.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">6 lesson</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/2.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">3h 56m</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/3.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">Beginner</div>
                                                            </div>
                                                        </div>

                                                        <div class="coursesCard-footer">
                                                            <div class="coursesCard-footer__author">
                                                                <img
                                                                    src="img/general/avatar-1.png"
                                                                    alt="image"
                                                                    />
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

                                        <div class="col-lg-3 col-md-6">
                                            <div data-anim-child="slide-up delay-5">
                                                <a
                                                    href="courses-single-1.html"
                                                    class="coursesCard -type-1"
                                                    >
                                                    <div class="relative">
                                                        <div
                                                            class="coursesCard__image overflow-hidden rounded-8"
                                                            >
                                                            <img
                                                                class="w-1/1"
                                                                src="img/coursesCards/5.png"
                                                                alt="image"
                                                                />
                                                            <div
                                                                class="coursesCard__image_overlay rounded-8"
                                                                ></div>
                                                        </div>
                                                        <div
                                                            class="d-flex justify-between py-10 px-10 absolute-full-center z-3"
                                                            ></div>
                                                    </div>

                                                    <div class="h-100 pt-15">
                                                        <div class="d-flex items-center">
                                                            <div class="text-14 lh-1 text-yellow-1 mr-10">
                                                                4.5
                                                            </div>
                                                            <div class="d-flex x-gap-5 items-center">
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                            </div>
                                                            <div class="text-13 lh-1 ml-10">(1991)</div>
                                                        </div>

                                                        <div class="text-17 lh-15 fw-500 text-dark-1 mt-10">
                                                            Photography Masterclass: A Complete Guide to
                                                            Photography
                                                        </div>

                                                        <div class="d-flex x-gap-10 items-center pt-10">
                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/1.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">6 lesson</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/2.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">3h 56m</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/3.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">Beginner</div>
                                                            </div>
                                                        </div>

                                                        <div class="coursesCard-footer">
                                                            <div class="coursesCard-footer__author">
                                                                <img
                                                                    src="img/general/avatar-1.png"
                                                                    alt="image"
                                                                    />
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

                                        <div class="col-lg-3 col-md-6">
                                            <div data-anim-child="slide-up delay-6">
                                                <a
                                                    href="courses-single-1.html"
                                                    class="coursesCard -type-1"
                                                    >
                                                    <div class="relative">
                                                        <div
                                                            class="coursesCard__image overflow-hidden rounded-8"
                                                            >
                                                            <img
                                                                class="w-1/1"
                                                                src="img/coursesCards/6.png"
                                                                alt="image"
                                                                />
                                                            <div
                                                                class="coursesCard__image_overlay rounded-8"
                                                                ></div>
                                                        </div>
                                                        <div
                                                            class="d-flex justify-between py-10 px-10 absolute-full-center z-3"
                                                            ></div>
                                                    </div>

                                                    <div class="h-100 pt-15">
                                                        <div class="d-flex items-center">
                                                            <div class="text-14 lh-1 text-yellow-1 mr-10">
                                                                4.5
                                                            </div>
                                                            <div class="d-flex x-gap-5 items-center">
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                            </div>
                                                            <div class="text-13 lh-1 ml-10">(1991)</div>
                                                        </div>

                                                        <div class="text-17 lh-15 fw-500 text-dark-1 mt-10">
                                                            Instagram Marketing 2021: Complete Guide To
                                                            Instagram Growth
                                                        </div>

                                                        <div class="d-flex x-gap-10 items-center pt-10">
                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/1.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">6 lesson</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/2.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">3h 56m</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/3.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">Beginner</div>
                                                            </div>
                                                        </div>

                                                        <div class="coursesCard-footer">
                                                            <div class="coursesCard-footer__author">
                                                                <img
                                                                    src="img/general/avatar-1.png"
                                                                    alt="image"
                                                                    />
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

                                        <div class="col-lg-3 col-md-6">
                                            <div data-anim-child="slide-up delay-7">
                                                <a
                                                    href="courses-single-1.html"
                                                    class="coursesCard -type-1"
                                                    >
                                                    <div class="relative">
                                                        <div
                                                            class="coursesCard__image overflow-hidden rounded-8"
                                                            >
                                                            <img
                                                                class="w-1/1"
                                                                src="img/coursesCards/7.png"
                                                                alt="image"
                                                                />
                                                            <div
                                                                class="coursesCard__image_overlay rounded-8"
                                                                ></div>
                                                        </div>
                                                        <div
                                                            class="d-flex justify-between py-10 px-10 absolute-full-center z-3"
                                                            ></div>
                                                    </div>

                                                    <div class="h-100 pt-15">
                                                        <div class="d-flex items-center">
                                                            <div class="text-14 lh-1 text-yellow-1 mr-10">
                                                                4.5
                                                            </div>
                                                            <div class="d-flex x-gap-5 items-center">
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                                <div
                                                                    class="icon-star text-9 text-yellow-1"
                                                                    ></div>
                                                            </div>
                                                            <div class="text-13 lh-1 ml-10">(1991)</div>
                                                        </div>

                                                        <div class="text-17 lh-15 fw-500 text-dark-1 mt-10">
                                                            Complete Blender Creator: Learn 3D Modelling for
                                                            Beginners
                                                        </div>

                                                        <div class="d-flex x-gap-10 items-center pt-10">
                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/1.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">6 lesson</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/2.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">3h 56m</div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="mr-8">
                                                                    <img
                                                                        src="img/coursesCards/icons/3.svg"
                                                                        alt="icon"
                                                                        />
                                                                </div>
                                                                <div class="text-14 lh-1">Beginner</div>
                                                            </div>
                                                        </div>

                                                        <div class="coursesCard-footer">
                                                            <div class="coursesCard-footer__author">
                                                                <img
                                                                    src="img/general/avatar-1.png"
                                                                    alt="image"
                                                                    />
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
        <div class="container my-3">
            <h1 class="text-center">Avisos clasificados</h1>
            <a href="Inicio?action=add" class="btn btn-primary">Nuevo registro</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Titulo</th>
                    <th>Contenido</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${avisos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.contenido}</td>
                        <td><a href="Inicio?action=edit&id=${item.id}" class="btn btn-sm btn-warning">Editar</a></td>
                        <td><button class="btn btn-sm btn-danger" onclick="confirmDelete(${item.id})">Eliminar</button></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <script src="assets/js/sweetalert2.js"></script>
        <script>
                            function confirmDelete(id) {
                                Swal.fire({
                                    title: 'Eliminar registro',
                                    text: "¿Esta seguro de eliminar el registro?",
                                    icon: 'warning',
                                    showCancelButton: true,
                                    confirmButtonColor: '#3085d6',
                                    cancelButtonColor: '#d33',
                                    confirmButtonText: 'Si, eliminar',
                                    cancelButtonText: 'Cancelar'
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        Swal.fire({
                                            title: 'Eliminado',
                                            text: 'El registro a sido eliminado correctamente.',
                                            icon: 'success',
                                            showConfirmButton: true,
                                            confirmButtonText: 'Aceptar'
                                        }).then((result) => {
                                            if (result.isConfirmed) {
                                                location.href = "Inicio?action=delete&id=" + id;
                                            }
                                        });
                                    }
                                });
                            }
        </script>
        <script src="assets/js/vendor.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>