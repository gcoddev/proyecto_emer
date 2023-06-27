package com.emergentes.models;

public class CursoA {

    private int id_curso;
    private int id_prof;
    private String categoria;
    private String titulo;
    private String descripcion_cur;
    private String fecha_subido;
    private String estado_cur;
    private String imagen;
    private String nombre_prof;
    private String paterno_prof;
    private String materno_prof;

    public CursoA() {
    }

    public CursoA(int id_curso, int id_prof, String categoria, String titulo, String descripcion_cur, String fecha_subido, String estado_cur, String imagen, String nombre_prof, String paterno_prof, String materno_prof) {
        this.id_curso = id_curso;
        this.id_prof = id_prof;
        this.categoria = categoria;
        this.titulo = titulo;
        this.descripcion_cur = descripcion_cur;
        this.fecha_subido = fecha_subido;
        this.estado_cur = estado_cur;
        this.imagen = imagen;
        this.nombre_prof = nombre_prof;
        this.paterno_prof = paterno_prof;
        this.materno_prof = materno_prof;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public int getId_prof() {
        return id_prof;
    }

    public void setId_prof(int id_prof) {
        this.id_prof = id_prof;
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

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getNombre_prof() {
        return nombre_prof;
    }

    public void setNombre_prof(String nombre_prof) {
        this.nombre_prof = nombre_prof;
    }

    public String getPaterno_prof() {
        return paterno_prof;
    }

    public void setPaterno_prof(String paterno_prof) {
        this.paterno_prof = paterno_prof;
    }

    public String getMaterno_prof() {
        return materno_prof;
    }

    public void setMaterno_prof(String materno_prof) {
        this.materno_prof = materno_prof;
    }

    public CursoA(int id_prof, String categoria, String titulo, String descripcion_cur, String fecha_subido, String estado_cur, String imagen, String nombre_prof, String paterno_prof, String materno_prof) {
        this.id_prof = id_prof;
        this.categoria = categoria;
        this.titulo = titulo;
        this.descripcion_cur = descripcion_cur;
        this.fecha_subido = fecha_subido;
        this.estado_cur = estado_cur;
        this.imagen = imagen;
        this.nombre_prof = nombre_prof;
        this.paterno_prof = paterno_prof;
        this.materno_prof = materno_prof;
    }

}
