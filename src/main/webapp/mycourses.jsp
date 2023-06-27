<%@page import="com.emergentes.models.Inscrito"%>
<%@page import="com.emergentes.dao.DAO"%>
<%@page import="com.emergentes.dao.DAOimpl"%>
<%@page import="com.emergentes.dao.insDAO"%>
<%@page import="com.emergentes.dao.insDAOimpl"%>
<%@page import="com.emergentes.models.Curso"%>
<%@page import="com.emergentes.models.CursoA"%>
<%@page import="com.emergentes.models.Usuario"%>
<%@page import="java.util.List"%>
<%
    HttpSession ses = request.getSession();
    Usuario user = new Usuario();
    List<CursoA> cursos = null;
    List<Inscrito> inscrito = null;
    DAO dao = new DAOimpl();
    insDAO insdao = new insDAOimpl();
    if (ses.getAttribute("user") != null) {
        user = (Usuario) ses.getAttribute("user");
        cursos = dao.getAll();
        inscrito = insdao.getAllIns(user.getId_usuario());
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
                                                                <button href="submit" class="d-flex items-center text-17 lh-1 fw-500 ">
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
                                <div class="sidebar__item  -is-active -dark-bg-dark-2">
                                    <a href="mycourses.jsp" class="d-flex items-center text-17 lh-1 fw-500 ">
                                        <i class="text-20 icon-play-button mr-15"></i>
                                        Cursos
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
                                        <h1 class="text-30 lh-12 fw-700">Cursos</h1>
                                        <div class="mt-10">Explore los cursos diponibles.</div>
                                    </div>
                                </div>


                                <div class="row y-gap-30">
                                    <div class="col-12">
                                        <div class="rounded-16 bg-white -dark-bg-dark-1 shadow-4 h-100">
                                            <div class="tabs -active-purple-2 js-tabs">
                                                <div class="tabs__controls d-flex items-center pt-20 px-30 border-bottom-light js-tabs-controls">
                                                    <button class="text-light-1 lh-12 tabs__button js-tabs-button is-active" data-tab-target=".-tab-item-1" type="button">
                                                        Mis cursos
                                                    </button>
                                                    <button class="text-light-1 lh-12 tabs__button js-tabs-button ml-30" data-tab-target=".-tab-item-2" type="button">
                                                        Todos los cursos
                                                    </button>
                                                </div>

                                                <div class="tabs__content py-30 px-30 js-tabs-content">
                                                    <div class="tabs__pane -tab-item-1 is-active">
                                                        <div class="row y-gap-30 pt-30">

                                                            <%
                                                                for (Inscrito ins : inscrito) {
                                                            %>
                                                            <div class="w-1/5 xl:w-1/3 lg:w-1/2 sm:w-1/1">
                                                                <div class="relative">
                                                                    <img class="rounded-8 w-1/1" src="<%= ins.getImagen()%>" alt="image">

                                                                    <button class="absolute-button" data-el-toggle="#js-more-1-toggle_<%= ins.getId_ins()%>">
                                                                        <span class="d-flex items-center justify-center size-35 bg-white shadow-1 rounded-8">
                                                                            <i class="icon-menu-vertical"></i>
                                                                        </span>
                                                                    </button>

                                                                    <div class="toggle-element -dshb-more" id="js-more-1-toggle_<%= ins.getId_ins()%>">
                                                                        <div class="px-25 py-25 bg-white -dark-bg-dark-2 shadow-1 border-light rounded-8">
                                                                            <a href="#" class="d-flex items-center">
                                                                                <div class="icon-share"></div>
                                                                                <div class="text-17 lh-1 fw-500 ml-12">Ver contenido</div>
                                                                            </a>
                                                                            <button  onclick="eliminarI('<%= ins.getId_ins()%>')" class="d-flex items-center mt-20">
                                                                                <div class="icon-drag"></div>
                                                                                <a href="#" class="text-17 lh-1 fw-500 ml-12">Eliminar</a>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="pt-15">
                                                                    <div class="d-flex y-gap-10 justify-between items-center">
                                                                        <div class="text-14 lh-1"><%= ins.getNombre_prof() + " " + ins.getPaterno_prof() + " " + ins.getMaterno_prof()%></div>
                                                                    </div>

                                                                    <h3 class="text-16 fw-500 lh-15 mt-10"><%= ins.getTitulo()%></h3>

                                                                    <div class="d-flex y-gap-10 justify-between items-center mt-10">
                                                                        <div class="text-dark-1"><%= ins.getDescripcion_cur()%></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%
                                                                }
                                                            %>

                                                        </div>
                                                    </div>

                                                    <div class="tabs__pane -tab-item-2">
                                                        <div class="row y-gap-10 justify-between">
                                                            <div class="col-auto">
                                                                <form class="search-field border-light rounded-8 h-50" action="https://creativelayers.net/themes/educrat-html/post">
                                                                    <input class="bg-white -dark-bg-dark-2 pr-50" type="text" placeholder="Search Courses">
                                                                    <button class="" type="submit">
                                                                        <i class="icon-search text-light-1 text-20"></i>
                                                                    </button>
                                                                </form>
                                                            </div>
                                                            <div class="col-auto">
                                                                <div class="d-flex flex-wrap y-gap-10 x-gap-20">
                                                                    <div>
                                                                        <div class="dropdown js-dropdown js-category-active">
                                                                            <div class="dropdown__button d-flex items-center text-14 bg-white -dark-bg-dark-2 border-light rounded-8 px-20 py-10 text-14 lh-12" data-el-toggle=".js-category-toggle" data-el-toggle-active=".js-category-active">
                                                                                <span class="js-dropdown-title">Categories</span>
                                                                                <i class="icon text-9 ml-40 icon-chevron-down"></i>
                                                                            </div>

                                                                            <div class="toggle-element -dropdown -dark-bg-dark-2 -dark-border-white-10 js-click-dropdown js-category-toggle">
                                                                                <div class="text-14 y-gap-15 js-dropdown-list">
                                                                                    <div><a href="#" class="d-block js-dropdown-link">Animation</a></div>
                                                                                    <div><a href="#" class="d-block js-dropdown-link">Design</a></div>
                                                                                    <div><a href="#" class="d-block js-dropdown-link">Illustration</a></div>
                                                                                    <div><a href="#" class="d-block js-dropdown-link">Business</a></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row y-gap-30 pt-30">

                                                            <%
                                                                for (CursoA curso : cursos) {
                                                            %>
                                                            <div class="w-1/4 xl:w-1/3 lg:w-1/2 sm:w-1/1 border">
                                                                <div class="relative">
                                                                    <img class="rounded-8 w-1/1" src="<%= curso.getImagen()%>" alt="image">

                                                                    <button class="absolute-button" data-el-toggle=".js-more-1-toggle">
                                                                        <span class="d-flex items-center justify-center size-35 bg-white shadow-1 rounded-8">
                                                                            <i class="icon-menu-vertical"></i>
                                                                        </span>
                                                                    </button>

                                                                    <div class="toggle-element -dshb-more js-more-1-toggle">
                                                                        <div class="px-25 py-25 bg-white -dark-bg-dark-2 shadow-1 border-light rounded-8">
                                                                            <a href="#" class="d-flex items-center">
                                                                                <div class="icon-share"></div>
                                                                                <div class="text-17 lh-1 fw-500 ml-12">Share</div>
                                                                            </a>

                                                                            <a href="#" class="d-flex items-center mt-20">
                                                                                <div class="icon-bookmark"></div>
                                                                                <div class="text-17 lh-1 fw-500 ml-12">Favorite</div>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="pt-15">
                                                                    <div class="d-flex y-gap-10 justify-between items-center">
                                                                        <div class="text-14 lh-1"><%= curso.getNombre_prof() + " " + curso.getPaterno_prof() + " " + curso.getMaterno_prof()%></div>
                                                                    </div>

                                                                    <h3 class="text-16 fw-500 lh-15 mt-10"><%= curso.getTitulo()%></h3>

                                                                    <div class="d-flex y-gap-10 justify-between items-center mt-10">
                                                                        <div class="text-dark-1"><%= curso.getFecha_subido()%></div>
                                                                        <div><span class="badge bg-primary"><%= curso.getCategoria()%></span></div>
                                                                        <div class="text-dark-1"><%= curso.getDescripcion_cur()%></div>
                                                                    </div>
                                                                    <hr>
                                                                    <div class="d-flex y-gap-10 justify-between items-center mt-10">
                                                                        <button class="btn btn-outline-primary" onclick="inscripcion('<%= curso.getId_curso()%>', '<%= user.getId_usuario()%>')">Inscribirme</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%
                                                                }
                                                            %>
                                                        </div>
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
                                                    <a href="help-center.html" class="text-13 lh-1">Acerca de</a>
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
        <script src="assets/js/jquey.min.js"></script>
        <script src="assets/js/sweetalert2.min.js"></script>
        <script>
                                                                            function eliminarI(id) {
                                                                                Swal.fire({
                                                                                    title: '¿Esta seguro que quiere eliminar el curso?',
                                                                                    text: "Esta accion no puede revertirse",
                                                                                    icon: 'warning',
                                                                                    showCancelButton: true,
                                                                                    confirmButtonColor: '#3085d6',
                                                                                    cancelButtonColor: '#d33',
                                                                                    confirmButtonText: 'Si, eliminar'
                                                                                }).then((result) => {
                                                                                    if (result.isConfirmed) {
                                                                                        $.ajax({
                                                                                            method: 'POST',
                                                                                            url: "CCurso?op=6",
                                                                                            data: {id: id}
                                                                                        })
                                                                                    }
                                                                                })
                                                                            }
                                                                            function inscripcion(id_curso, id_user) {
                                                                                Swal.fire({
                                                                                    title: '¿Esta seguro que quiere inscribirse al curso?',
                                                                                    text: "Esta accion puede revertirse",
                                                                                    icon: 'warning',
                                                                                    showCancelButton: true,
                                                                                    confirmButtonColor: '#3085d6',
                                                                                    cancelButtonColor: '#d33',
                                                                                    confirmButtonText: 'Inscribirme'
                                                                                }).then((result) => {
                                                                                    if (result.isConfirmed) {
                                                                                        $.ajax({
                                                                                            method: 'POST',
                                                                                            url: "CCurso?op=7",
                                                                                            data: {id_curso: id_curso, id_user: id_user}
                                                                                        })
                                                                                    }
                                                                                })
                                                                            }
        </script>
    </body>
</html>