package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name  = "escolaridad")
public class Escolaridad {

    @Id
    @Column(name = "cod_escolaridad")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codEscolaridad;

    @Column(name = "nomb_escolaridad")
    private String nombreEscolaridad;

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
