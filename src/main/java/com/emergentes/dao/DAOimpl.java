package com.emergentes.dao;

import com.emergentes.utils.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.emergentes.models.Usuario;
import javax.servlet.http.HttpSession;

public class DAOimpl extends ConexionDB implements DAO {

    @Override
    public void insertU(Usuario user) throws Exception {
        try {
            this.conectDB();
            String sql = "INSERT INTO usuario (nombre, paterno, materno, fecha_nac, usuario, contraseña, tipo_user) VALUES(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, user.getNombre());
            ps.setString(2, user.getPaterno());
            ps.setString(3, user.getMaterno());
            ps.setString(4, user.getFecha_nac());
            ps.setString(5, user.getUsuario());
            ps.setString(6, user.getPassword());
            ps.setString(7, user.getTipo_user());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
    }

    @Override
    public Usuario login(String username, String password) throws Exception {
        try {
            this.conectDB();
            String sql = "SELECT * FROM usuario WHERE usuario LIKE ? AND contraseña LIKE ? LIMIT 1";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            Usuario user = new Usuario();

            if (rs.next()) {
                user.setId_usuario(rs.getInt("id_usuario"));
                user.setNombre(rs.getString("nombre"));
                user.setPaterno(rs.getString("paterno"));
                user.setMaterno(rs.getString("materno"));
                user.setFecha_nac(rs.getString("fecha_nac"));
                user.setUsuario(rs.getString("usuario"));
                user.setPassword(rs.getString("contraseña"));
                user.setTipo_user(rs.getString("tipo_user"));
            }
            
            return user;
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
    }
//    @Override
//    public void insertP(Alumno alumno) throws Exception {
//        try {
//            this.conectDB();
//            String sql = "INSERT INTO usuario (nombre, paterno, materno, fecha_nac, usuario, contraseña) VALUES(?, ?, ?, ?, ?, ?)";
//            PreparedStatement ps = this.conn.prepareStatement(sql);
//            ps.setString(1, aviso.getTitulo());
//            ps.setString(2, aviso.getContenido());
//
//            ps.executeUpdate();
//        } catch (Exception e) {
//            throw e;
//        } finally {
//            this.disconnectBD();
//        }
//    }
//
//    @Override
//    public void update(Aviso aviso) throws Exception {
//        try {
//            this.conectDB();
//            String sql = "UPDATE avisos SET titulo = ?, contenido = ? WHERE id = ?";
//            PreparedStatement ps = this.conn.prepareStatement(sql);
//            ps.setString(1, aviso.getTitulo());
//            ps.setString(2, aviso.getContenido());
//            ps.setInt(3, aviso.getId());
//            ps.executeUpdate();
//        } catch (Exception e) {
//            throw e;
//        } finally {
//            this.disconnectBD();
//        }
//    }
//
//    @Override
//    public void delete(int id) throws Exception {
//        try {
//            this.conectDB();
//            String sql = "DELETE FROM avisos WHERE id = ?";
//            PreparedStatement ps = this.conn.prepareStatement(sql);
//            ps.setInt(1, id);
//            ps.executeUpdate();
//        } catch (Exception e) {
//            throw e;
//        } finally {
//            this.disconnectBD();
//        }
//    }
//
//    @Override
//    public Aviso getById(int id) throws Exception {
//        Aviso avi = new Aviso();
//        try {
//            this.conectDB();
//            String sql = "SELECT * FROM avisos WHERE id = ?";
//            PreparedStatement ps = this.conn.prepareStatement(sql);
//            ps.setInt(1, id);
//
//            ResultSet rs = ps.executeQuery();
//
//            if (rs.next()) {
//                avi.setId(rs.getInt("id"));
//                avi.setTitulo(rs.getString("titulo"));
//                avi.setContenido(rs.getString("contenido"));
//            }
//        } catch (SQLException e) {
//            throw e;
//        } finally {
//            this.disconnectBD();
//        }
//        return avi;
//    }
//
//    @Override
//    public List<Aviso> getAll() throws Exception {
//        List<Aviso> lista = null;
//        try {
//            this.conectDB();
//            String sql = "SELECT * FROM avisos";
//            PreparedStatement ps = this.conn.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//
//            lista = new ArrayList<Aviso>();
//            while (rs.next()) {
//                Aviso avi = new Aviso();
//                avi.setId(rs.getInt("id"));
//                avi.setTitulo(rs.getString("titulo"));
//                avi.setContenido(rs.getString("contenido"));
//
//                lista.add(avi);
//            }
//
//            rs.close();
//            ps.close();
//        } catch (Exception e) {
//            throw e;
//        } finally {
//            this.disconnectBD();
//        }
//
//        return lista;
//    }

    @Override
    public void updateU(Usuario user) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void deleteU(int id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Usuario getByIdU(int id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Usuario> getAllU() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
