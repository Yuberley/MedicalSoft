package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "lugar")
public class Lugar {
    @Id
    @Column(name = "cod_paciente")
    private Integer codPaciente;

    // Attributes
    private String nacimiento;
    private String recidencia;
    private String procedencia;

    // Relationships
    @ManyToOne
    @JoinColumn(name = "cod_paciente", insertable = false, updatable = false)
    private Paciente paciente;

    // Methods
    public Integer getCodPaciente() {
        return codPaciente;
    }

    public void setCodPaciente(Integer codPaciente) {
        this.codPaciente = codPaciente;
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

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }
}
