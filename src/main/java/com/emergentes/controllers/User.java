package com.emergentes.controllers;

import com.emergentes.dao.DAO;
import com.emergentes.dao.DAOimpl;
import com.emergentes.models.Usuario;
import com.mysql.cj.Session;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "User", urlPatterns = {"/User"})
public class User extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int op = Integer.parseInt(request.getParameter("op"));
        String usuario = "";
        HttpSession ses = request.getSession();
        ses = request.getSession();
        ses.setAttribute("error", null);
        DAO dao = new DAOimpl();

        switch (op) {
            case 1:
                usuario = request.getParameter("username");
                String password = request.getParameter("password");
                Usuario user = new Usuario();
                try {
                    user = dao.login(usuario, password);
                    if (user.getId_usuario() != 0) {
                        ses.setAttribute("user", user);
                        ses.setAttribute("msg", "Inicio de sesion correcto");
                        response.sendRedirect("index.jsp");
                    } else {
                        ses.setAttribute("error", "El usuario o la contraseña no es valido");
                        response.sendRedirect("login.jsp");
                    }
                } catch (Exception e) {
                    System.out.println("Error al guardar datos... " + e.getMessage());
                }

                break;
            case 2:
                String nombre = request.getParameter("nombre");
                String paterno = request.getParameter("paterno");
                String materno = request.getParameter("materno");
                String fecha_nac = request.getParameter("fecha_nac");
                usuario = request.getParameter("username");
                String password1 = request.getParameter("password1");
                String password2 = request.getParameter("password2");
                String tipo_user = request.getParameter("tipo_user");

                if (!password1.equals(password2)) {
                    ses.setAttribute("error", "Las contraseñas no coinciden");
                    response.sendRedirect("signup.jsp");
                } else {
                    try {
                        Usuario al = new Usuario(nombre, paterno, materno, fecha_nac, usuario, password1, tipo_user);
                        dao.insertU(al);
                        ses.setAttribute("msg", "Usuario agregado correctamente");
                    } catch (Exception e) {
                        System.out.println("Error al guardar datos... " + e.getMessage());
                    }
                    response.sendRedirect("login.jsp");
                }
                break;
            default:
                throw new AssertionError();
        }
    }
}
