package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "lugar")
public class Lugar {
    @Id
    @Column(name = "cod_paciente")
    private Integer codPaciente;

    // Attributes
    private Integer nacimiento;
    private Integer recidencia;
    private Integer procedencia;

    // Relationships
    @ManyToOne
    @JoinColumn(name = "cod_paciente", insertable = false, updatable = false)
    private Paciente paciente;


    // Methods

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public Integer getCodPaciente() {
        return codPaciente;
    }

    public void setCodPaciente(Integer codPaciente) {
        this.codPaciente = codPaciente;
    }

    public Integer getNacimiento() {
        return nacimiento;
    }

    public void setNacimiento(Integer nacimiento) {
        this.nacimiento = nacimiento;
    }

    public Integer getRecidencia() {
        return recidencia;
    }

    public void setRecidencia(Integer recidencia) {
        this.recidencia = recidencia;
    }

    public Integer getProcedencia() {
        return procedencia;
    }

    public void setProcedencia(Integer procedencia) {
        this.procedencia = procedencia;
    }
}
