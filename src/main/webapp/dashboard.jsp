<%@page import="com.emergentes.dao.DAO"%>
<%@page import="com.emergentes.dao.DAOimpl"%>
<%@page import="com.emergentes.models.Curso"%>
<%@page import="com.emergentes.models.Usuario"%>
<%@page import="java.util.List"%>
<%
    DAO dao = new DAOimpl();
    Usuario user = new Usuario();
    List<Curso> cursos = null;
    if (session.getAttribute("user") != null) {
        user = (Usuario) session.getAttribute("user");
        if (user.getTipo_user().equals("PROFESOR")) {
            cursos = dao.getAllC(user.getId_usuario());
        } else {
            response.sendRedirect("mycourses.jsp");
        }
    } else {
        response.sendRedirect("login.jsp");
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <div class="sidebar__item -is-active -dark-bg-dark-2">
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
                                    <div class="col-10">
                                        <h1 class="text-30 lh-12 fw-700">Galeria de cursos creados</h1>
                                    </div>
                                    <div class="col-2">
                                        <a href="User?op=1" class="btn btn-info text-dark">Crear nuevo curso</a>
                                    </div>
                                </div>


                                <div class="row y-gap-30">
                                    <div class="col-12">
                                        <div class="rounded-16 bg-white -dark-bg-dark-1 shadow-4 h-100">
                                            <div class="d-flex items-center py-20 px-30 border-bottom-light">
                                                <h2 class="text-17 lh-1 fw-500">Mis cursos</h2>
                                            </div>

                                            <div class="py-30 px-30">
                                                <div class="row y-gap-30">

                                                    <%
                                                        if (cursos == null) {
                                                    %>
                                                    <h2>No hay cursos</h2>
                                                    <%
                                                    } else {
                                                        for (Curso curso : cursos) {
                                                    %>
                                                    <div class="col-xl-6 h border rounded-3 gx-3">
                                                        <div class="relative d-block rounded-8 px-10 py-10 border-light">
                                                            <div class="row x-gap-20 y-gap-20 items-center">
                                                                <div class="col-md-auto">
                                                                    <div class="shrink-0">
                                                                        <img style="width:200px;"  src="<%= curso.getImagen()%>" alt="imagen">
                                                                    </div>
                                                                </div>

                                                                <div class="col-md">
                                                                    <div class="absolute-bookmark -dark-bg-dark-2 shadow-5">
                                                                        <%
                                                                            if (curso.getEstado_cur().equals("ACTIVO")) {
                                                                        %>
                                                                        <button class="badge bg-success" onclick="estadoC('<%= curso.getId_curso()%>', '<%= curso.getEstado_cur()%>')"><%= curso.getEstado_cur()%></button>
                                                                        <%
                                                                        } else {
                                                                        %>
                                                                        <button class="badge bg-danger"  onclick="estadoC('<%= curso.getId_curso()%>', '<%= curso.getEstado_cur()%>')"><%= curso.getEstado_cur()%></button>
                                                                        <%
                                                                            }
                                                                        %>
                                                                    </div>
                                                                    <h3 class="text-17 lh-16 fw-500 mt-10 pr-40 xl:pr-0"><%= curso.getTitulo()%></h3>
                                                                    <div class="d-flex y-gap-10 justify-between items-center flex-wrap border-top-light pt-10 mt-10">
                                                                        <div class="d-flex items-center">
                                                                            <p><%= curso.getDescripcion_cur()%></p>
                                                                        </div>
                                                                        <div class="d-flex items-center">
                                                                            <span class="badge bg-primary"><%= curso.getCategoria()%></span>
                                                                        </div>
                                                                        <hr>
                                                                    </div>
                                                                    <div class="d-flex items-center">
                                                                        <p><%= curso.getFecha_subido()%></p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row x-gap-20 y-gap-20 items-center">
                                                                <a href="course.jsp?id=<%= curso.getId_curso()%>" class="btn btn-warning col-3 ms-1 text-dark"><i class="fa fa-edit"></i>&nbsp; Editar</a>
                                                                <button class="btn btn-danger col-3 ms-1 text-light" onclick="msgEliminar('<%= curso.getId_curso()%>')"><i class="fa fa-remove"></i>&nbsp; Eliminar</button>
                                                            </div>
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

                            </div>

                            <footer class="footer -dashboard py-30">
                                <div class="row items-center justify-between">
                                    <div class="col-auto">
                                        <div class="text-13 lh-1">© 2023 GCodDev.</div>
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
        </div>
    </main>
</div>

<script src="assets/js/vendor.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/jquey.min.js"></script>
<script src="assets/js/sweetalert2.min.js"></script>
<script>
                                                                    function msgEliminar(id) {
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
                                                                                    url: "CCurso?op=4",
                                                                                    data: {id: id}
                                                                                })
                                                                            }
                                                                        })
                                                                    }
                                                                    function estadoC(id, estado) {
                                                                        $.ajax({
                                                                            method: 'POST',
                                                                            url: "CCurso?op=5",
                                                                            data: {idC: id, estado: estado}
                                                                        })
                                                                    }
</script>
</body>
</html>