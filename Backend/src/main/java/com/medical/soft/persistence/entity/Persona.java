package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

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

    // Relationships
    @OneToMany(mappedBy = "persona")
    private List<Paciente> pacientes;

    // Methods
    public List<Paciente> getPacientes() {
        return pacientes;
    }

    public void setPacientes(List<Paciente> pacientes) {
        this.pacientes = pacientes;
    }

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
