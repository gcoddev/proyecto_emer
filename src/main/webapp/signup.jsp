<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="assets/css/vendor.css">
        <link rel="stylesheet" href="assets/css/main.css">

        <title>Educrat</title>
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
                                    <a data-barba href="index-2.html">
                                        <img src="img/general/logo.svg" alt="logo">
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
                            <div class="-bg"><img data-move="30" class="js-mouse-move" src="img/login/bg.png" alt="bg"></div>
                            <div class="-el-1"><img data-move="20" class="js-mouse-move" src="img/home-9/hero/bg.png" alt="image"></div>
                            <div class="-el-2"><img data-move="40" class="js-mouse-move" src="img/home-9/hero/1.png" alt="icon"></div>
                            <div class="-el-3"><img data-move="40" class="js-mouse-move" src="img/home-9/hero/2.png" alt="icon"></div>
                            <div class="-el-4"><img data-move="40" class="js-mouse-move" src="img/home-9/hero/3.png" alt="icon"></div>
                        </div>
                    </div>

                    <div class="form-page__content lg:py-50">
                        <div class="container">
                            <div class="row justify-center items-center">
                                <div class="col-xl-8 col-lg-9">
                                    <div class="px-50 py-50 md:px-25 md:py-25 bg-white shadow-1 rounded-16">
                                        <h3 class="text-30 lh-13">Registrarse</h3>
                                        <p class="mt-10">¿Ya tienes una cuenta? <a href="login.html" class="text-purple-1">Iniciar sesion</a></p>

                                        <form class="contact-form respondForm__form row y-gap-20 pt-30" action="" method="">
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Nombres</label>
                                                <input type="text" name="title" placeholder="Name">
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Fecha nacimiento</label>
                                                <input type="date" name="title" placeholder="Name">
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Apellido paterno</label>
                                                <input type="text" name="title" placeholder="Name">
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Apellido materno</label>
                                                <input type="text" name="title" placeholder="Name">
                                            </div>
                                            <div class="col-lg-12">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Nombre de usuario *</label>
                                                <input type="text" name="title" placeholder="Name">
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Password *</label>
                                                <input type="text" name="title" placeholder="Name">
                                            </div>
                                            <div class="col-lg-6">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Confirm Password *</label>
                                                <input type="text" name="title" placeholder="Name">
                                            </div>
                                            <div class="col-lg-12">
                                                <label class="text-16 lh-1 fw-500 text-dark-1 mb-10">Registrarse como</label>
                                                <select name="tipo_user">
                                                    <option>-- Seleccione opcion</option>
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