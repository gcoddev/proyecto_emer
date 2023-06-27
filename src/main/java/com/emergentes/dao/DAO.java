package com.emergentes.dao;

import com.emergentes.models.Curso;
import com.emergentes.models.CursoA;
import com.emergentes.models.Usuario;
import com.emergentes.models.Inscrito;
import java.util.List;

public interface DAO {

    // Usuario
    public void insertU(Usuario user) throws Exception;
    public Usuario login(String username, String password) throws Exception;
    public List<Inscrito> getAllIns(int id) throws Exception;
    
    // Cursos
    public void insertC(Curso cur) throws Exception;
    public void deleteC(int id) throws Exception;
    public void estadoC(int id, String estado) throws Exception;
    public void updateC(Curso curso) throws Exception;
    public Curso getByIdC(int id) throws Exception;
    
    // Todos cursos
    public List<CursoA> getAll() throws Exception;
    public List<Curso> getAllC(int id) throws Exception;
}
