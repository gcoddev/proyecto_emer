<%@page import="com.emergentes.models.Curso"%>
<%@page import="com.emergentes.models.Usuario"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    HttpSession ses = request.getSession();
    Usuario user = new Usuario();
    if (ses.getAttribute("user") != null) {
        user = (Usuario) ses.getAttribute("user");
        if (request.getParameter("id") != null) {
            Curso cur = new Curso();

        }
    } else {
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/vendor.css">
        <link rel="stylesheet" href="assets/css/main.css">

        <title>Educrat</title>
    </head>

    <body class="preloader-visible" data-barba="wrapper">
        <div class="preloader js-preloader">
            <div class="preloader__bg"></div>
        </div>

        <div class="barba-container" data-barba="container">
            <main class="main-content">
                <header class="header -dashboard -dark-bg-dark-1 js-header">
                    <div class="header__container py-20 px-30">
                        <div class="row justify-between items-center">
                            <div class="col-auto">
                                <div class="d-flex items-center">
                                    <div class="header__explore text-dark-1">
                                        <button class="d-flex items-center js-dashboard-home-9-sidebar-toggle">
                                            <i class="icon -dark-text-white icon-explore"></i>
                                        </button>
                                    </div>

                                    <div class="header__logo ml-30 md:ml-20">
                                        <a data-barba href="index.jsp">
                                            <img class="-light-d-none" src="assets/img/Sistemas.png" width="50" alt="logo">
                                            <img class="-dark-d-none" src="assets/img/Sistemas.png" width="50" alt="logo">
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-auto">
                                <div class="d-flex items-center">
                                    <div class="d-flex items-center sm:d-none">
                                        <div class="relative">
                                            <button class="js-darkmode-toggle text-light-1 d-flex items-center justify-center size-50 rounded-16 -hover-dshb-header-light">
                                                <i class="text-24 icon icon-night"></i>
                                            </button>
                                        </div>

                                        <div class="relative">
                                            <button data-maximize class="d-flex text-light-1 items-center justify-center size-50 rounded-16 -hover-dshb-header-light">
                                                <i class="text-24 icon icon-maximize"></i>
                                            </button>
                                        </div>
                                        <div class="relative">
                                            <%= user.getNombre() + " " + user.getPaterno() + " " + user.getMaterno() + " ( " + user.getTipo_user() + " )"%>
                                        </div>
                                    </div>

                                    <div class="relative d-flex items-center ml-10">
                                        <a href="#" data-el-toggle=".js-profile-toggle">
                                            <img class="size-50" src="assets/img/user.png" alt="image">
                                        </a>
                                        <div class="toggle-element js-profile-toggle">
                                            <div class="toggle-bottom -profile bg-white -dark-bg-dark-1 shadow-4 border-light rounded-8 mt-10">
                                                <div class="px-30 py-30">
                                                    <div class="sidebar -dashboard">
                                                        <div class="sidebar__item ">
                                                            <form action="User?op=3" method="POST">
                                                                <button href="submit" class="d-flex items-center text-17 lh-1 fw-500 text-dark">
                                                                    <i class="text-20 icon-power mr-15"></i>
                                                                    Cerrar sesion
                                                                </button>
                                                            </form>
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
                </header>


                <div class="content-wrapper js-content-wrapper">
                    <div class="dashboard -home-9 js-dashboard-home-9">
                        <div class="dashboard__sidebar scroll-bar-1">


                            <div class="sidebar -dashboard">
                                <%
                                    if (user.getTipo_user().equals("ALUMNO")) {
                                %>
                                <div class="sidebar__item ">
                                    <a href="mycourses.jsp" class="d-flex items-center text-17 lh-1 fw-500 ">
                                        <i class="text-20 icon-play-button mr-15"></i>
                                        Mis cursos
                                    </a>
                                </div>
                                <%
                                    }
                                    if (user.getTipo_user().equals("PROFESOR")) {
                                %>
                                <div class="sidebar__item">
                                    <a href="dashboard.jsp" class="d-flex items-center text-17 lh-1 fw-500 -dark-text-white">
                                        <i class="text-20 icon-bookmark mr-15"></i>
                                        Mis cursos
                                    </a>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>

                        <div class="dashboard__main">
                            <div class="dashboard__content bg-light-4">
                                <div class="row pb-50 mb-10">
                                    <div class="col-auto">
                                        <h1 class="text-30 lh-12 fw-700">Nuevo curso</h1>
                                    </div>
                                </div>


                                <div class="row y-gap-30">
                                    <div class="col-12">
                                        <div class="rounded-16 bg-white -dark-bg-dark-1 shadow-4 h-100">
                                            <div class=" js-tabs pt-0">
                                                <div class="tabs__content py-30 px-30 js-tabs-content">
                                                    <div class="">
                                                        <form  action="CCurso?op=1" method="POST" enctype="multipart/form-data" class="contact-form row y-gap-30">
                                                            <div class="col-md-12">
                                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Titulo del curso</label>
                                                                <input type="text" placeholder="Titulo" name="titulo" id="titulo" required>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10" for="categoria">Categoria</label>
                                                                <select name="categoria" id="categoria" required>
                                                                    <option value="">-- Seleccione categoria</option>
                                                                    <option value="DESARROLLO">DESARROLLO</option>
                                                                    <option value="NEGOCIOS">NEGOCIOS</option>
                                                                    <option value="FINANZAS">FINANZAS</option>
                                                                    <option value="INFORMATICA">INFORMATICA</option>
                                                                    <option value="OFICINA">OFICINA</option>
                                                                    <option value="DESARROLLO">DESARROLLO</option>
                                                                    <option value="PERSONAL">PERSONAL</option>
                                                                    <option value="DISEÑO">DISEÑO</option>
                                                                    <option value="MARKETING">MARKETING</option>
                                                                    <option value="ESTILO DE VIDA">ESTILO DE VIDA</option>
                                                                    <option value="FOTOGRAFIA">FOTOGRAFIA</option>
                                                                    <option value="SALUD">SALUD</option>
                                                                    <option value="MUSICA">MUSICA</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-12">
                                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Descripcion</label>
                                                                <textarea placeholder="Descripcion..." rows="2" name="descripcion" required maxlength="200"></textarea>
                                                            </div>
                                                            <div class="col-12">
                                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Imagen de portada</label>
                                                                <input type="file" name="imagen" required>
                                                            </div>
                                                            <div class="col-3">
                                                                <button type="submit" class="button -md -purple-1 text-white">Crear curso</button>
                                                            </div>
                                                            <div class="col-3">
                                                                <a href="dashboard.jsp" class="button -md -black text-white">Volver</a>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <footer class="footer -dashboard py-30">
                                <div class="row items-center justify-between">
                                    <div class="col-auto">
                                        <div class="text-13 lh-1">© 2023 GCodDev</div>
                                    </div>

                                    <div class="col-auto">
                                        <div class="d-flex items-center">
                                            <div class="d-flex items-center flex-wrap x-gap-20">
                                                <div>
                                                    <a href="terms.html" class="text-13 lh-1">Acerca de</a>
                                                </div>
                                            </div>

                                            <button class="button -md -rounded bg-light-4 text-light-1 ml-30">English</button>
                                        </div>
                                    </div>
                                </div>
                            </footer>
                        </div>
                    </div>
                </div>
            </main>
        </div>

        <script src="assets/js/vendor.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>