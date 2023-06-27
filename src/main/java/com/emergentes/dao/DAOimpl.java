package com.emergentes.dao;

import com.emergentes.models.Curso;
import com.emergentes.models.CursoA;
import com.emergentes.models.Inscrito;
import com.emergentes.utils.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.emergentes.models.Usuario;
import java.io.ObjectInputStream;
import java.sql.Blob;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
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
    
    @Override
    public void insertC(Curso cur) throws Exception {
        try {
            this.conectDB();
            String sql = "INSERT INTO cursos (id_prof, categoria, titulo, descripcion, fecha_subido, estado, imagen) VALUES(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, cur.getId_prof());
            ps.setString(2, cur.getCategoria());
            ps.setString(3, cur.getTitulo());
            ps.setString(4, cur.getDescripcion_cur());
            ps.setString(5, cur.getFecha_subido());
            ps.setString(6, cur.getEstado_cur());
            ps.setString(7, cur.getImagen());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
    }
    
    @Override
    public void updateC(Curso curso) throws Exception {
        try {
            this.conectDB();
            String sql = "UPDATE cursos SET categoria = ?, titulo = ?, descripcion = ?, imagen = ? WHERE id_curso = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, curso.getCategoria());
            ps.setString(2, curso.getTitulo());
            ps.setString(3, curso.getDescripcion_cur());
            ps.setString(4, curso.getImagen());
            ps.setInt(5, curso.getId_curso());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
    }
    
    @Override
    public void deleteC(int id) throws Exception {
        try {
            this.conectDB();
            String sql = "DELETE FROM cursos WHERE id_curso = ?";
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
    public void estadoC(int id, String estado) throws Exception {
        try {
            this.conectDB();
            if (estado.equals("ACTIVO")) {
                String sql = "UPDATE cursos SET estado = 'INACTIVO' WHERE id_curso = ?";
                PreparedStatement ps = this.conn.prepareStatement(sql);
                ps.setInt(1, id);
                ps.executeUpdate();
            } else {
                String sql = "UPDATE cursos SET estado = 'ACTIVO' WHERE id_curso = ?";
                PreparedStatement ps = this.conn.prepareStatement(sql);
                ps.setInt(1, id);
                ps.executeUpdate();
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
    }
    
    @Override
    public Curso getByIdC(int id) throws Exception {
        Curso cur = new Curso();
        try {
            this.conectDB();
            String sql = "SELECT * FROM cursos WHERE id_curso = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                cur.setId_curso(rs.getInt("id_curso"));
                cur.setId_prof(rs.getInt("id_prof"));
                cur.setCategoria(rs.getString("categoria"));
                cur.setTitulo(rs.getString("titulo"));
                cur.setDescripcion_cur(rs.getString("descripcion"));
                cur.setFecha_subido(rs.getString("fecha_subido"));
                cur.setEstado_cur(rs.getString("estado"));
                cur.setImagen(rs.getString("imagen"));
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
        return cur;
    }
    
    @Override
    public List<CursoA> getAll() throws Exception {
        List<CursoA> cursos = null;
        this.conectDB();
        try {
            String sql = "SELECT c.id_curso, c.id_prof, c.categoria, c.titulo, c.descripcion, c.fecha_subido, c.estado, c.imagen, u.nombre, u.paterno, u.materno "
                    + "FROM cursos c, usuario u WHERE c.id_prof = u.id_usuario AND c.estado = 'ACTIVO'";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            cursos = new ArrayList<CursoA>();
            while (rs.next()) {
                CursoA cur = new CursoA();
                cur.setId_curso(rs.getInt("id_curso"));
                cur.setId_prof(rs.getInt("id_prof"));
                cur.setCategoria(rs.getString("categoria"));
                cur.setTitulo(rs.getString("titulo"));
                cur.setDescripcion_cur(rs.getString("descripcion"));
                cur.setFecha_subido(rs.getString("fecha_subido"));
                cur.setEstado_cur(rs.getString("estado"));
                cur.setImagen(rs.getString("imagen"));
                cur.setNombre_prof(rs.getString("nombre"));
                cur.setPaterno_prof(rs.getString("paterno"));
                cur.setMaterno_prof(rs.getString("materno"));
                
                cursos.add(cur);
            }
            
            rs.close();
            ps.close();
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
        
        return cursos;
    }
    
    @Override
    public List<Curso> getAllC(int id) throws Exception {
        List<Curso> cursos = null;
        this.conectDB();
        try {
            String sql = "SELECT * FROM cursos WHERE id_prof = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            cursos = new ArrayList<Curso>();
            while (rs.next()) {
                Curso cur = new Curso();
                cur.setId_curso(rs.getInt("id_curso"));
                cur.setId_prof(rs.getInt("id_prof"));
                cur.setCategoria(rs.getString("categoria"));
                cur.setTitulo(rs.getString("titulo"));
                cur.setDescripcion_cur(rs.getString("descripcion"));
                cur.setFecha_subido(rs.getString("fecha_subido"));
                cur.setEstado_cur(rs.getString("estado"));
                cur.setImagen(rs.getString("imagen"));
                
                cursos.add(cur);
            }
            
            rs.close();
            ps.close();
        } catch (Exception e) {
            throw e;
        } finally {
            this.disconnectBD();
        }
        
        return cursos;
    }
    
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
                cur.setNombre_prof("nombre");
                cur.setPaterno_prof("paterno");
                cur.setMaterno_prof("materno");
                
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
}
