package com.emergentes.controllers;

import com.emergentes.dao.DAO;
import com.emergentes.dao.DAOimpl;
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int op = Integer.parseInt(request.getParameter("op"));
        String usuario = "";
        HttpSession ses = request.getSession();
        ses = request.getSession();
        ses.setAttribute("error", null);

        switch (op) {
            case 1:
                usuario = request.getParameter("username");
                String password = request.getParameter("password");
                if (false) {
                    response.sendRedirect("signup.jsp");
                } else {
                    ses.setAttribute("error", "El usuario o la contraseña no es valido");
                    response.sendRedirect("login.jsp");
                }
                break;
            case 2:
                String nombre = request.getParameter("nombre");
                String paterno = request.getParameter("paterno");
                String materno = request.getParameter("materno");
                String fecha_nac = request.getParameter("fecha_nac");
                usuario = request.getParameter("usuario");
                String password1 = request.getParameter("password1");
                String password2 = request.getParameter("password2");

                if (!password1.equals(password2)) {
                    ses.setAttribute("error", "Las contraseñas no coinciden");
                    response.sendRedirect("signup.jsp");
                } else {
                    try {
                        System.out.println("hola");
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
