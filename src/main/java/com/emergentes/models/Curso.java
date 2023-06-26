package com.emergentes.models;

public class Curso {
    private int id_curso;
    private String categoria;
    private String titulo;
    private String descripcion_cur;
    private String fecha_subido;
    private String estado_cur;
    private int id_prof;

    public Curso() {
    }

    public Curso(int id_curso, String categoria, String titulo, String descripcion_cur, String fecha_subido, String estado_cur, int id_prof) {
        this.id_curso = id_curso;
        this.categoria = categoria;
        this.titulo = titulo;
        this.descripcion_cur = descripcion_cur;
        this.fecha_subido = fecha_subido;
        this.estado_cur = estado_cur;
        this.id_prof = id_prof;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion_cur() {
        return descripcion_cur;
    }

    public void setDescripcion_cur(String descripcion_cur) {
        this.descripcion_cur = descripcion_cur;
    }

    public String getFecha_subido() {
        return fecha_subido;
    }

    public void setFecha_subido(String fecha_subido) {
        this.fecha_subido = fecha_subido;
    }

    public String getEstado_cur() {
        return estado_cur;
    }

    public void setEstado_cur(String estado_cur) {
        this.estado_cur = estado_cur;
    }

    public int getId_prof() {
        return id_prof;
    }

    public void setId_prof(int id_prof) {
        this.id_prof = id_prof;
    }

    
}
