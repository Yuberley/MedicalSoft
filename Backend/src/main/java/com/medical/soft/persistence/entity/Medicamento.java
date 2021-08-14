package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "medicamentos")
public class Medicamento {

    @Id
    @Column(name = "cod_medicamentos")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codMedicamento;

    // Attributes
    @Column(name = "nomb_medicamento")
    private String nombreMedicamento;
    private String dosis;
    private String concentracion;
    @Column(name = "tiempo_administracion")
    private String tiempoAdministracion;

    // Methods
    public Integer getCodMedicamento() {
        return codMedicamento;
    }

    public void setCodMedicamento(Integer codMedicamento) {
        this.codMedicamento = codMedicamento;
    }

    public String getNombreMedicamento() {
        return nombreMedicamento;
    }

    public void setNombreMedicamento(String nombreMedicamento) {
        this.nombreMedicamento = nombreMedicamento;
    }

    public String getDosis() {
        return dosis;
    }

    public void setDosis(String dosis) {
        this.dosis = dosis;
    }

    public String getConcentracion() {
        return concentracion;
    }

    public void setConcentracion(String concentracion) {
        this.concentracion = concentracion;
    }

    public String getTiempoAdministracion() {
        return tiempoAdministracion;
    }

    public void setTiempoAdministracion(String tiempoAdministracion) {
        this.tiempoAdministracion = tiempoAdministracion;
    }
}
