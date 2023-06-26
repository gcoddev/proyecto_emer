package com.emergentes.models;

public class Alumno {

    private int id_alumno;
    private int id_usuario;
    private String nombre;
    private String paterno;
    private String materno;
    private String fecha_nac;
    private String usuario;
    private String password;

    public Alumno() {
    }

    public Alumno(int id_alumno, int id_usuario, String nombre, String paterno, String materno, String fecha_nac, String usuario, String password) {
        this.id_alumno = id_alumno;
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.paterno = paterno;
        this.materno = materno;
        this.fecha_nac = fecha_nac;
        this.usuario = usuario;
        this.password = password;
    }

    public int getId_alumno() {
        return id_alumno;
    }

    public void setId_alumno(int id_alumno) {
        this.id_alumno = id_alumno;
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
}
