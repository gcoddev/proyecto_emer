package com.emergentes.dao;

import com.emergentes.models.Usuario;
import java.util.List;

public interface DAO {
    public void insertU(Usuario user) throws Exception;
    public Usuario login(String username, String password) throws Exception;
    public void updateU(Usuario user) throws Exception;
    public void deleteU(int id) throws Exception;
    public Usuario getByIdU(int id) throws Exception;
    public List<Usuario> getAllU() throws Exception;
}
