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
    String msg = "";
    if (session.getAttribute("msg") != null) {
        msg = (String) session.getAttribute("msg");
    }
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/vendors.css">
        <link rel="stylesheet" href="assets/css/main.css">
        <title>Iniciar sesion | Cursos</title>
    </head>

    <body class="preloader-visible" data-barba="wrapper">
        <!-- preloader start -->
        <div class="preloader js-preloader">
            <div class="preloader__bg"></div>
        </div>
        <!-- preloader end -->


        <main class="main-content bg-beige-1">

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
                                    <a href="signup.jsp" class="button -sm -rounded -dark-1 text-white">Registrate</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </header>



            <div class="content-wrapper  js-content-wrapper">

                <section class="form-page js-mouse-move-container">
                    <div class="form-page__img bg-dark-1">
                        <div class="form-page-composition">
                            <div class="-el-1"><img data-move="20" class="js-mouse-move" src="assets/img/upealogo.png" alt="image"></div>
                        </div>
                    </div>

                    <div class="form-page__content lg:py-50">
                        <div class="container">
                            <div class="row justify-center items-center">
                                <div class="col-xl-6 col-lg-8">
                                    <div class="px-50 py-50 md:px-25 md:py-25 bg-white shadow-1 rounded-16">
                                        <h3 class="text-30 lh-13">Iniciar sesion</h3>
                                        <p class="mt-10">¿No tiene una cuenta? <a href="signup.jsp" class="text-purple-1">Registrarse</a></p>

                                        <form class="contact-form respondForm__form row y-gap-20 pt-30" action="User?op=1" method="POST">
                                            <div class="col-12">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Nombre de usuario</label>
                                                <input type="text" name="username" placeholder="Username" required="">
                                            </div>
                                            <div class="col-12">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Contraseña</label>
                                                <input type="password" name="password" placeholder="Password" required="">
                                            </div>
                                            <div class="col-12">
                                                <button type="submit" name="submit" id="submit" class="button -md -green-1 text-dark-1 fw-500 w-1/1">
                                                    Iniciar sesion
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
                                            if (!msg.equals("")) {
                                        %>
                                        <div class="alert alert-success">
                                            <%= msg%>
                                        </div>
                                        <%
                                            }
                                            HttpSession ses = request.getSession();
                                            ses.setAttribute("error", null);
                                            ses.setAttribute("msg", null);
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
    </body>
</html>