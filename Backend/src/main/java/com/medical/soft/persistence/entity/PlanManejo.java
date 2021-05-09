package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "plan_manejo")
public class PlanManejo {

    @Id
    @Column(name = "cod_pm")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codPM;

    // Attibutes
    private String descripcion;
    @Column(name = "cod_evolucion")
    private Integer codEvolucion;

    public Integer getCodPM() {
        return codPM;
    }

    public void setCodPM(Integer codPM) {
        this.codPM = codPM;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getCodEvolucion() {
        return codEvolucion;
    }

    public void setCodEvolucion(Integer codEvolucion) {
        this.codEvolucion = codEvolucion;
    }
}
