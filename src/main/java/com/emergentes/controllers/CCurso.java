package com.emergentes.controllers;

import com.emergentes.dao.DAO;
import com.emergentes.dao.DAOimpl;
import com.emergentes.dao.insDAO;
import com.emergentes.dao.insDAOimpl;
import com.emergentes.models.Usuario;
import com.emergentes.models.Curso;
import com.mysql.cj.Session;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet(name = "CCurso", urlPatterns = {"/CCurso"})
public class CCurso extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int op = Integer.parseInt(request.getParameter("op"));
        HttpSession ses = request.getSession();
        Usuario user = (Usuario) ses.getAttribute("user");
        DAO dao = new DAOimpl();
        insDAO insdao = new insDAOimpl();
        PrintWriter out = response.getWriter();

        switch (op) {
            // Create course
            case 1:
                String categoria = "";
                String titulo = "";
                String descripcion = "";

                Date date = new Date();
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                String fecha = dateFormat.format(date);

                String imagen = "";
                String imagenName = "";
                ArrayList<String> lista = new ArrayList<>();
                try {
                    FileItemFactory file = new DiskFileItemFactory();
                    ServletFileUpload fileUpload = new ServletFileUpload(file);
                    List items = fileUpload.parseRequest(request);
                    for (int i = 0; i < items.size(); i++) {
                        FileItem fileItem = (FileItem) items.get(i);
                        if (!fileItem.isFormField()) {
                            if (!fileItem.getName().equals("")) {
                                String ruta = getServletContext().getRealPath("/");
                                File f = new File(ruta + "images/" + fileItem.getName());
                                imagenName = f.getName();
                                fileItem.write(f);
                                imagen = f.getAbsolutePath();
                            }
                        } else {
                            lista.add(fileItem.getString());
                        }
                    }
                } catch (Exception e) {
                    System.out.println("File error: " + e.getMessage());
                }

                titulo = lista.get(0);
                categoria = lista.get(1);
                descripcion = lista.get(2);
                int idEdit = Integer.parseInt(lista.get(4));

                if (idEdit == 0) {
                    try {
                        Curso cur = new Curso(user.getId_usuario(), categoria, titulo, descripcion, fecha, "ACTIVO", "images/" + imagenName);
                        dao.insertC(cur);
                    } catch (Exception e) {
                        System.out.println("Error al guardar datos: " + e.getMessage());
                    }
                } else {
                    try {
                        if (imagenName.equals("")) {
                            imagenName = lista.get(3);
                        } else {
                            imagenName = "images/" + imagenName;
                        }
                        Curso cur = new Curso(idEdit, categoria, titulo, descripcion, imagenName);
                        dao.updateC(cur);
                    } catch (Exception e) {
                        System.out.println("Error al guardar datos: " + e.getMessage());
                    }
                }
                response.sendRedirect("dashboard.jsp");
                break;

            // Edit course 2
            case 2:
                break;
            // 3
            // Delete course
            case 4:
                int id = Integer.parseInt(request.getParameter("id"));
                 {
                    try {
                        dao.deleteC(id);
                        response.setContentType("text/javascript");
                        out.println("location.reload();");
                    } catch (Exception ex) {
                        System.out.println("Error: " + ex.getMessage());
                    }
                }
                break;
            // Change status course
            case 5:
                int idE = Integer.parseInt(request.getParameter("idC"));
                String estado = request.getParameter("estado");
                 {
                    try {
                        dao.estadoC(idE, estado);
                        response.setContentType("text/javascript");
                        out.println("location.reload();");
                    } catch (Exception ex) {
                        System.out.println("Error: " + ex.getMessage());
                    }
                }
                break;
            // Delete inscripcion
            case 6:
                int idI = Integer.parseInt(request.getParameter("id"));
                 {
                    try {
                        insdao.deleteI(idI);
                        response.setContentType("text/javascript");
                        out.println("location.reload();");
                    } catch (Exception ex) {
                        System.out.println("Error: " + ex.getMessage());
                    }
                }
                break;
            case 7:
                int id_curso = Integer.parseInt(request.getParameter("id_curso"));
                int id_alumno = Integer.parseInt(request.getParameter("id_user"));
                Date dateI = new Date();
                DateFormat dateFormatI = new SimpleDateFormat("yyyy-MM-dd");
                String fechaI = dateFormatI.format(dateI);
                try {
                    insdao.inscribir(id_curso, id_alumno, fechaI);
                    response.setContentType("text/javascript");
                    out.println("location.reload();");
                } catch (Exception e) {
                    System.out.println("Error al inscribir: " + e.getMessage());
                }
                break;
            default:
                System.out.println("Default");
                break;
        }
    }
}
