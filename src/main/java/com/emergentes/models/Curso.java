package com.emergentes.models;

import java.sql.Blob;

public class Curso {

    private int id_curso;
    private int id_prof;
    private String categoria;
    private String titulo;
    private String descripcion_cur;
    private String fecha_subido;
    private String estado_cur;
    private String imagen;

    public Curso() {
        this.id_curso = 0;
        this.id_prof = 0;
        this.categoria = "";
        this.titulo = "";
        this.descripcion_cur = "";
        this.fecha_subido = "";
        this.estado_cur = "";
        this.imagen = "";
    }

    public Curso(int id_curso, String categoria, String titulo, String descripcion_cur, String imagen) {
        this.id_curso = id_curso;
        this.categoria = categoria;
        this.titulo = titulo;
        this.descripcion_cur = descripcion_cur;
        this.imagen = imagen;
    }

    public Curso(int id_curso, int id_prof, String categoria, String titulo, String descripcion_cur, String fecha_subido, String estado_cur, String imagen) {
        this.id_curso = id_curso;
        this.id_prof = id_prof;
        this.categoria = categoria;
        this.titulo = titulo;
        this.descripcion_cur = descripcion_cur;
        this.fecha_subido = fecha_subido;
        this.estado_cur = estado_cur;
        this.imagen = imagen;
    }

    public Curso(int id_prof, String categoria, String titulo, String descripcion_cur, String fecha_subido, String estado_cur, String imagen) {
        this.id_prof = id_prof;
        this.categoria = categoria;
        this.titulo = titulo;
        this.descripcion_cur = descripcion_cur;
        this.fecha_subido = fecha_subido;
        this.estado_cur = estado_cur;
        this.imagen = imagen;
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

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

}
