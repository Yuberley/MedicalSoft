package com.medical.soft.persistence.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.LocalDateTime;

@Entity
@Table(name = "personas")
public class Persona {

    @Id
    private Integer cc;

    private String nombre;
    private String apellidos;
    private String edad;
    private String sexo;

    @Column(name = "fech_nacimiento")
    private LocalDateTime fechNacimiento;

    public Integer getCc() {
        return cc;
    }

    public void setCc(Integer cc) {
        this.cc = cc;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public LocalDateTime getFechNacimiento() {
        return fechNacimiento;
    }

    public void setFechNacimiento(LocalDateTime fechNacimiento) {
        this.fechNacimiento = fechNacimiento;
    }
}
