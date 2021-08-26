package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name  = "escolaridad")
public class Escolaridad {

    @Id
    @Column(name = "cod_escolaridad")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codEscolaridad;

    @Column(name = "nomb_escolaridad")
    private String nombreEscolaridad;

    // Relationships
    @OneToMany(mappedBy = "escolaridad")
    private List<Paciente> pacientes;

    // Methods
    public List<Paciente> getPacientes() {
        return pacientes;
    }

    public void setPacientes(List<Paciente> pacientes) {
        this.pacientes = pacientes;
    }

    public Integer getCodEscolaridad() {
        return codEscolaridad;
    }

    public void setCodEscolaridad(Integer codEscolaridad) {
        this.codEscolaridad = codEscolaridad;
    }

    public String getNombreEscolaridad() {
        return nombreEscolaridad;
    }

    public void setNombreEscolaridad(String nombreEscolaridad) {
        this.nombreEscolaridad = nombreEscolaridad;
    }
}
