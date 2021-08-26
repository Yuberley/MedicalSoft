package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "estado_civil")
public class EstadoCivil {

    @Id
    @Column(name = "cod_st")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codST;

    @Column(name = "nomb_st")
    private String nombreST;

    // Relationships
    @OneToMany(mappedBy = "estadoCivil")
    private List<Paciente> pacientes;

    // Methods
    public List<Paciente> getPacientes() {
        return pacientes;
    }

    public void setPacientes(List<Paciente> pacientes) {
        this.pacientes = pacientes;
    }

    public Integer getCodST() {
        return codST;
    }

    public void setCodST(Integer codST) {
        this.codST = codST;
    }

    public String getNombreST() {
        return nombreST;
    }

    public void setNombreST(String nombreST) {
        this.nombreST = nombreST;
    }
}
