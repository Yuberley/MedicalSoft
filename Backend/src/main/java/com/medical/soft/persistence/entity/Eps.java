package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "eps")
public class Eps {

    @Id
    @Column(name = "cod_eps")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codEPS;

    @Column(name = "nomb_eps")
    private String nombreEPS;

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
