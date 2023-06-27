package com.emergentes.models;

public class Inscrito {

    private int id_ins;
    private int id_alumno;
    private int id_curso;
    private String fecha_ins;
    private int id_prof;
    private String categoria;
    private String titulo;
    private String descripcion_cur;
    private String fecha;
    private String imagen;
    private String nombre_prof;
    private String paterno_prof;
    private String materno_prof;

    public Inscrito() {
    }

    public Inscrito(int id_ins, int id_alumno, int id_curso, String fecha_ins, int id_prof, String categoria, String titulo, String descripcion_cur, String fecha, String imagen, String nombre_prof, String paterno_prof, String materno_prof) {
        this.id_ins = id_ins;
        this.id_alumno = id_alumno;
        this.id_curso = id_curso;
        this.fecha_ins = fecha_ins;
        this.id_prof = id_prof;
        this.categoria = categoria;
        this.titulo = titulo;
        this.descripcion_cur = descripcion_cur;
        this.fecha = fecha;
        this.imagen = imagen;
        this.nombre_prof = nombre_prof;
        this.paterno_prof = paterno_prof;
        this.materno_prof = materno_prof;
    }

    public int getId_ins() {
        return id_ins;
    }

    public void setId_ins(int id_ins) {
        this.id_ins = id_ins;
    }

    public int getId_alumno() {
        return id_alumno;
    }

    public void setId_alumno(int id_alumno) {
        this.id_alumno = id_alumno;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public String getFecha_ins() {
        return fecha_ins;
    }

    public void setFecha_ins(String fecha_ins) {
        this.fecha_ins = fecha_ins;
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

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
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

}
