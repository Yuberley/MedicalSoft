package com.medical.soft.persistence.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

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
