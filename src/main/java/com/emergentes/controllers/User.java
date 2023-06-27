package com.emergentes.controllers;

import com.emergentes.dao.DAO;
import com.emergentes.dao.DAOimpl;
import com.emergentes.models.Curso;
import com.emergentes.models.Usuario;
import com.mysql.cj.Session;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
        HttpSession ses = request.getSession();
        ses = request.getSession();
        int op = Integer.parseInt(request.getParameter("op"));
        switch (op) {
            case 1:
                response.sendRedirect("course.jsp");
                break;
            case 2:
                System.out.println("Editar curso");
                int id = Integer.parseInt(request.getParameter("id"));
                response.sendRedirect("course.jsp?id=" + id);
                break;
            default:
                System.out.println("Sin opcion");
        }
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
                        if (user.getTipo_user().equals("PROFESOR")) {
                            response.sendRedirect("dashboard.jsp");
                        } else if (user.getTipo_user().equals("ALUMNO")) {
                            response.sendRedirect("mycourses.jsp");
                        }
                    } else {
                        ses.setAttribute("error", "Las credenciales de acceso son incorrectas");
                        response.sendRedirect("login.jsp");
                    }
                } catch (Exception e) {
                    ses.setAttribute("error", "Error al iniciar sesion");
                    System.out.println("Error al iniciar sesion... " + e.getMessage());
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
                        ses.setAttribute("msg", "Cuentra creada existosamente.");
                        response.sendRedirect("login.jsp");
                    } catch (Exception e) {
                        System.out.println("Error al guardar datos... " + e.getMessage());
                        ses.setAttribute("error", "Error al crear la cuenta, porfavor vuelva a intentarlo. Asegurese de haber llenado todos los campos.");
                        response.sendRedirect("signup.jsp");
                    }
                    
                }
                break;
            case 3:
                ses.setAttribute("user", null);
                ses.setAttribute("msg", "Sesion cerrada exitosamente.");
                response.sendRedirect("login.jsp");
                break;
            default:
                throw new AssertionError();
        }
    }
}
