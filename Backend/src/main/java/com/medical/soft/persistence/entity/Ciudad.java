package com.medical.soft.persistence.entity;

import javax.persistence.Column;
import javax.persistence.Id;

public class Ciudad {

    @Id
    @Column(name = "cod_lugar")
    private Integer codLugar;

    // Attributes
    @Column(name = "nomb_ciudad")
    private String nombreCiudad;

    public Integer getCodLugar() {
        return codLugar;
    }

    public void setCodLugar(Integer codLugar) {
        this.codLugar = codLugar;
    }

    public String getNombreCiudad() {
        return nombreCiudad;
    }

    public void setNombreCiudad(String nombreCiudad) {
        this.nombreCiudad = nombreCiudad;
    }
}
