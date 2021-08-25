package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "lugar")
public class Lugar {
    @Id
    @Column(name = "cod_lugar")
    private Integer codLugar;

    // Attributes
    private String nacimiento;
    private String recidencia;
    private String procedencia;

    // Relationships
    @OneToMany(mappedBy = "lugar")
    private List<Paciente> pacientes;

    // Methods
    public Integer getCodLugar() {
        return codLugar;
    }

    public void setCodLugar(Integer codLugar) {
        this.codLugar = codLugar;
    }

    public String getNacimiento() {
        return nacimiento;
    }

    public void setNacimiento(String nacimiento) {
        this.nacimiento = nacimiento;
    }

    public String getRecidencia() {
        return recidencia;
    }

    public void setRecidencia(String recidencia) {
        this.recidencia = recidencia;
    }

    public String getProcedencia() {
        return procedencia;
    }

    public void setProcedencia(String procedencia) {
        this.procedencia = procedencia;
    }

    public List<Paciente> getPacientes() {
        return pacientes;
    }

    public void setPacientes(List<Paciente> pacientes) {
        this.pacientes = pacientes;
    }
}
