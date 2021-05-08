package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "estado_civil")
public class EstadoCivil {

    @Id
    @Column(name = "cod_st")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codST;

    @Column(name = "nomb_st")
    private String nombreST;

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
