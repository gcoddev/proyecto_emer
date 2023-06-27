package com.emergentes.dao;

import com.emergentes.models.Inscrito;
import com.emergentes.utils.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class insDAOimpl extends ConexionDB implements insDAO {

    @Override
    public List<Inscrito> getAllIns(int id) throws Exception {
        List<Inscrito> inscrito = null;
        this.conectDB();
        try {
            String sql = "SELECT i.id_ins, i.id_alumno, i.id_curso, i.fecha_ins, c.id_prof, c.categoria, c.titulo, c.descripcion, c.fecha_subido, c.imagen, u.nombre, u.paterno, u.materno "
                    + "FROM inscrito i, cursos c, usuario u "
                    + "WHERE i.id_curso = c.id_curso "
                    + "AND c.id_prof = u.id_usuario "
                    + "AND i.id_alumno  = ?;";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            inscrito = new ArrayList<Inscrito>();
            while (rs.next()) {
                Inscrito cur = new Inscrito();

                cur.setId_ins(rs.getInt("id_ins"));
                cur.setId_alumno(rs.getInt("id_alumno"));
                cur.setId_curso(rs.getInt("id_curso"));
                cur.setFecha_ins("fecha_ins");
                cur.setId_prof(rs.getInt("id_prof"));
                cur.setCategoria(rs.getString("categoria"));
                cur.setTitulo(rs.getString("titulo"));
                cur.setDescripcion_cur(rs.getString("descripcion"));
                cur.setFecha(rs.getString("fecha_subido"));
                cur.setImagen(rs.getString("imagen"));
                cur.setNombre_prof(rs.getString("nombre"));
                cur.setPaterno_prof(rs.getString("paterno"));
                cur.setMaterno_prof(rs.getString("materno"));

                inscrito.add(cur);
            }

            rs.close();
            ps.close();
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }

        return inscrito;
    }

    @Override
    public void deleteI(int id) throws Exception {
        try {
            this.conectDB();
            String sql = "DELETE FROM inscrito WHERE id_ins = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
    }

    @Override
    public void inscribir(int id_curso, int id_user, String fecha) throws Exception {
        try {
            this.conectDB();
            String sql = "INSERT INTO inscrito(id_alumno, id_curso, fecha_ins) VALUES(?, ?, ?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id_user);
            ps.setInt(2, id_curso);
            ps.setString(3, fecha);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
    }
}
