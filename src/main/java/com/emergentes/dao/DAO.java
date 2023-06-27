package com.emergentes.dao;

import com.emergentes.models.Curso;
import com.emergentes.models.CursoA;
import com.emergentes.models.Usuario;
import com.emergentes.models.Inscrito;
import java.util.List;

public interface DAO {

    public void insertU(Usuario user) throws Exception;
    public Usuario login(String username, String password) throws Exception;

    public Usuario getByIdU(int id) throws Exception;

    public List<Inscrito> getAllIns(int id) throws Exception;
    public void insertC(Curso cur) throws Exception;
    public void updateC(Usuario user) throws Exception;
    public void deleteC(int id) throws Exception;
    public void estadoC(int id, String estado) throws Exception;
    public Usuario getByIdC(int id) throws Exception;
    
    public List<CursoA> getAll() throws Exception;
    public List<Curso> getAllC(int id) throws Exception;
}
