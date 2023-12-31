<%@page import="com.emergentes.models.Usuario"%>
<%
    Usuario user = null;
    if (session.getAttribute("user") != null) {
        user = (Usuario) session.getAttribute("user");
        if (user.getTipo_user().equals("PROFESOR")) {
            response.sendRedirect("dashboard.jsp");
        } else if (user.getTipo_user().equals("ALUMNO")) {
            response.sendRedirect("mycourses.jsp");
        }
    }
    String error = "";
    if (session.getAttribute("error") != null) {
        error = (String) session.getAttribute("error");
    }
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/vendor.css">
        <link rel="stylesheet" href="assets/css/main.css">

        <title>Registrarse | Cursos</title>
    </head>

    <body class="preloader-visible" data-barba="wrapper">
        <div class="preloader js-preloader">
            <div class="preloader__bg"></div>
        </div>


        <main class="main-content
              bg-beige-1
              ">

            <header data-anim="fade" data-add-bg="" class="header -base js-header">


                <div class="header__container py-10">
                    <div class="row justify-between items-center">

                        <div class="col-auto">
                            <div class="header-left">

                                <div class="header__logo ">
                                    <a data-barba href="index.jsp">
                                        <img src="assets/img/Sistemas.png" width="100" alt="logo">
                                    </a>
                                </div>

                            </div>
                        </div>


                        <div class="col-auto">
                            <div class="header-right d-flex items-center">
                                <div class="header-right__buttons md:d-none">
                                    <a href="login.jsp" class="button -sm -rounded -dark-1 text-white">Iniciar sesion</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </header>


            <div class="content-wrapper  js-content-wrapper">

                <section class="form-page">
                    <div class="form-page__img bg-dark-1">
                        <div class="form-page-composition">
                            <div class="-el-1"><img data-move="20" class="js-mouse-move" src="assets/img/upealogo.png" alt="image"></div>
                        </div>
                    </div>

                    <div class="form-page__content lg:py-50">
                        <div class="container">
                            <div class="row justify-center items-center">
                                <div class="col-xl-8 col-lg-9">
                                    <div class="px-50 py-50 md:px-25 md:py-25 bg-white shadow-1 rounded-16">
                                        <h3 class="text-30 lh-13">Registrarse</h3>
                                        <p class="mt-10">�Ya tienes una cuenta? <a href="login.html" class="text-purple-1">Iniciar sesion</a></p>

                                        <form class="contact-form respondForm__form row y-gap-20 pt-30" action="User?op=2" method="POST">
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Nombres *</label>
                                                <input type="text" name="nombre" placeholder="Nombres" required onkeyup="mayus(this);">
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Fecha nacimiento</label>
                                                <input type="date" name="fecha_nac" placeholder="Fecha">
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Apellido paterno</label>
                                                <input type="text" name="paterno" placeholder="Apellido paterno" onkeyup="mayus(this);">
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Apellido materno</label>
                                                <input type="text" name="materno" placeholder="Apellido materno" onkeyup="mayus(this);">
                                            </div>
                                            <div class="col-lg-12">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Nombre de usuario *</label>
                                                <input type="text" name="username" placeholder="Nombre de usuario" required>
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Contrase�a *</label>
                                                <input type="password" name="password1" placeholder="Contrase�a" required>
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Confirmar Contrase�a *</label>
                                                <input type="password" name="password2" placeholder="Confirmar contrase�a" required>
                                            </div>
                                            <div class="col-lg-12">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Registrarse como</label>
                                                <select name="tipo_user" required>
                                                    <option value="">-- Seleccione opcion</option>
                                                    <option value="ALUMNO">ALUMNO</option>
                                                    <option value="PROFESOR">PROFESOR</option>
                                                </select>
                                            </div>
                                            <div class="col-12">
                                                <button type="submit" name="submit" id="submit" class="button -md -green-1 text-dark-1 fw-500 w-1/1">
                                                    Registrarse
                                                </button>
                                            </div>
                                        </form>
                                        <br>
                                        <%
                                            if (!error.equals("")) {
                                        %>
                                        <div class="alert alert-danger">
                                            <%= error%>
                                        </div>
                                        <%
                                            }
                                            session.setAttribute("error", null);
                                        %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main>
        <script src="assets/js/vendor.js"></script>
        <script src="assets/js/main.js"></script>
        <script>
                                                    function mayus(e) {
                                                        e.value = e.value.toUpperCase();
                                                    }
        </script>
    </body>

</html>