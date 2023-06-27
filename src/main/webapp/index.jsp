<%@page import="com.emergentes.dao.DAO"%>
<%@page import="com.emergentes.dao.DAOimpl"%>
<%@page import="com.emergentes.models.CursoA"%>
<%@page import="java.util.List"%>
<%
    DAO dao = new DAOimpl();
    List<CursoA> cursos = null;
    cursos = dao.getAll();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

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
                                    <a data-barba href="index.jsp">
                                        <img src="assets/img/Sistemas.png" width="70" alt="logo" />
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
                                                href="login.jsp"
                                                class="button -md -purple-1 text-white"
                                                >Iniciar sesion</a
                                            >
                                        </div>
                                        <div class="col-12 col-sm-auto">
                                            <a
                                                data-barba
                                                href="#cursos"
                                                class="button -md -outline-green-1 text-green-1"
                                                >Ver todos los cursos</a
                                            >
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div data-anim-child="slide-up delay-5" class="col-xl-6 col-lg-6">
                                <div class="masthead-image">
                                    <div class="masthead-image__el2">
                                        <div
                                            data-move="60"
                                            class="lg:d-none img-el -w-260 px-20 py-20 d-flex items-center bg-white rounded-8 js-mouse-move"
                                            >
                                            <img src="assets/img/Sistemas.png" alt="icon" />
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

                <section class="layout-pt-md layout-pb-lg" id="cursos">
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

                                        <%
                                            if (cursos.isEmpty()) {
                                        %>
                                        <h2>No hay cursos</h2>
                                        <%
                                        } else {
                                            for (CursoA curso : cursos) {
                                        %>
                                        <div class="col-lg-2 col-md-4">
                                            <div data-anim-child="slide-up delay-3">
                                                <a
                                                    href="login.jsp"
                                                    class="coursesCard -type-1"
                                                    >
                                                    <div class="relative">
                                                        <div
                                                            class="coursesCard__image overflow-hidden rounded-8"
                                                            >
                                                            <img
                                                                class="w-1/1"
                                                                src="<%= curso.getImagen()%>"
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
                                                        <div class="text-17 lh-15 fw-500 text-dark-1 mt-10">
                                                            <%= curso.getTitulo()%>
                                                        </div>

                                                        <div class="d-flex x-gap-10 items-center pt-10">
                                                            <div class="d-flex items-center">
                                                                <div class="text-14 lh-1"><%= curso.getDescripcion_cur()%></div>
                                                            </div>

                                                            <div class="d-flex items-center">
                                                                <div class="text-9 lh-1 badge bg-primary"><%= curso.getCategoria()%></div>
                                                            </div>
                                                        </div>
                                                        <div class="coursesCard-footer">
                                                            <div class="coursesCard-footer__author">
                                                                <div><%= curso.getNombre_prof() + " " + curso.getPaterno_prof() + " " + curso.getMaterno_prof()%></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <%
                                                }
                                            }
                                        %>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <footer class="footer -type-1 bg-dark-1 -green-links">
                    <div class="container">
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