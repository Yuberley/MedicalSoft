package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "eps")
public class Eps {

    @Id
    @Column(name = "cod_eps")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codEPS;

    @Column(name = "nomb_eps")
    private String nombreEPS;

    // Relationships
    @OneToMany(mappedBy = "eps")
    private List<Paciente> pacientes;

    // Methods
    public List<Paciente> getPacientes() {
        return pacientes;
    }

    public void setPacientes(List<Paciente> pacientes) {
        this.pacientes = pacientes;
    }

    public Integer getCodEPS() {
        return codEPS;
    }

    public void setCodEPS(Integer codEPS) {
        this.codEPS = codEPS;
    }

    public String getNombreEPS() {
        return nombreEPS;
    }

    public void setNombreEPS(String nombreEPS) {
        this.nombreEPS = nombreEPS;
    }
}
