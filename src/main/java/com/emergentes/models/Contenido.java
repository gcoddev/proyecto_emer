package com.emergentes.models;

public class Contenido {

    private int id_contenido;
    private String tipo;
    private String estado_cont;
    private String contenido;
    private int id_curso;

    public Contenido() {
    }

    public Contenido(int id_contenido, String tipo, String estado_cont, String contenido, int id_curso) {
        this.id_contenido = id_contenido;
        this.tipo = tipo;
        this.estado_cont = estado_cont;
        this.contenido = contenido;
        this.id_curso = id_curso;
    }

    public int getId_contenido() {
        return id_contenido;
    }

    public void setId_contenido(int id_contenido) {
        this.id_contenido = id_contenido;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getEstado_cont() {
        return estado_cont;
    }

    public void setEstado_cont(String estado_cont) {
        this.estado_cont = estado_cont;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }
}
