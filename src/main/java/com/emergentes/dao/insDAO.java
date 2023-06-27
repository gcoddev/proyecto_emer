package com.emergentes.dao;

import com.emergentes.models.Usuario;
import com.emergentes.models.Inscrito;
import java.util.List;

public interface insDAO {
    public List<Inscrito> getAllIns(int id) throws Exception;
    public void deleteI(int id) throws Exception;
    public void inscribir(int id_curso, int id_user, String fecha) throws Exception;
}
