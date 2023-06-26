package com.emergentes.controllers;

import com.emergentes.dao.DAOimpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.emergentes.dao.DAO;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Inicio", urlPatterns = {"/Inicio"})
public class Inicio extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        if (ses.getAttribute("user")  != null) {
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAOimpl();

        int id = Integer.parseInt(request.getParameter("id"));

        try {
            if (id == 0) {
            } else {
            }
        } catch (Exception e) {
            System.out.println("Error al guardar datos... " + e.getMessage());
        }
        response.sendRedirect("Inicio");
    }
}
