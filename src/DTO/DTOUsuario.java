package DTO;

import javax.swing.*;

public class DTOUsuario {
    private int id;
    private String nombre;
    private String apellido;
    private String matricula;
    private String correo;
    private String telefono;
    private int id_grupo;
    private int id_puesto;
    private int id_area_puesto;

    public DTOUsuario(int id, String nombre, String apellido, String matricula, String correo, String telefono, int id_grupo, int id_puesto, int id_area_puesto) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.matricula = matricula;
        this.correo = correo;
        this.telefono = telefono;
        this.id_grupo = id_grupo;
        this.id_puesto = id_puesto;
        this.id_area_puesto = id_area_puesto;
    }

    public DTOUsuario(String nombre, String apellido, String matricula, String correo, String telefono, int id_grupo) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.matricula = matricula;
        this.correo = correo;
        this.telefono = telefono;
        this.id_grupo = id_grupo;
    }
    public DTOUsuario(String nombre, String apellido, String matricula, String correo, String telefono) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.matricula = matricula;
        this.correo = correo;
        this.telefono = telefono;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getMatricula() {
        return matricula;
    }

    public String getCorreo() {
        return correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public int getId_grupo() {
        return id_grupo;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public int getId_area_puesto() {
        return id_area_puesto;
    }

    @Override
    public String toString() {
        return "DTOUsuario{" +
                "id=" + id +
                ", nombre='" + nombre + '\'' +
                ", apellido='" + apellido + '\'' +
                ", matricula='" + matricula + '\'' +
                ", correo='" + correo + '\'' +
                ", telefono='" + telefono + '\'' +
                ", id_grupo=" + id_grupo +
                ", id_puesto=" + id_puesto +
                ", id_area_puesto=" + id_area_puesto +
                '}';
    }
}
