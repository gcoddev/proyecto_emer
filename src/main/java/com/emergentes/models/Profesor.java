package com.emergentes.models;

public class Profesor {

    private int id_profesor;
    private int id_usuario;
    private String nombre;
    private String paterno;
    private String materno;
    private String fecha_nac;
    private String usuario;
    private String password;
    private String titulo_prof;

    public Profesor() {
    }

    public Profesor(int id_alumno, int id_usuario, String nombre, String paterno, String materno, String fecha_nac, String titulo_prof, String usuario, String password) {
        this.id_profesor = id_alumno;
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.paterno = paterno;
        this.materno = materno;
        this.fecha_nac = fecha_nac;
        this.titulo_prof = titulo_prof;
        this.usuario = usuario;
        this.password = password;
    }

    public int getId_profesor() {
        return id_profesor;
    }

    public void setId_profesor(int id_profesor) {
        this.id_profesor = id_profesor;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPaterno() {
        return paterno;
    }

    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    public String getMaterno() {
        return materno;
    }

    public void setMaterno(String materno) {
        this.materno = materno;
    }

    public String getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(String fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTitulo_prof() {
        return titulo_prof;
    }

    public void setTitulo_prof(String titulo_prof) {
        this.titulo_prof = titulo_prof;
    }
    
}
