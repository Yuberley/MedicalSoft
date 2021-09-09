package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "examen_fisico")
public class ExamenFisico {

    @Id
    @Column(name = "cod_ef")
    private Integer codEF;

    // Attributes
    private String torax;
    private String abdomen;
    private String extremidades;
    private String columna;

    // Relationships
    @OneToMany(mappedBy = "examenFisico")
    private List<HistoriaClinica> historiasClinicas;

    @OneToMany(mappedBy = "examenFisico")
    private List<SignosVitales> signosVitales;

    // Methods
    public List<SignosVitales> getSignosVitales() {
        return signosVitales;
    }

    public void setSignosVitales(List<SignosVitales> signosVitales) {
        this.signosVitales = signosVitales;
    }

    public List<HistoriaClinica> getHistoriasClinicas() {
        return historiasClinicas;
    }

    public void setHistoriasClinicas(List<HistoriaClinica> historiasClinicas) {
        this.historiasClinicas = historiasClinicas;
    }

    public Integer getCodEF() {
        return codEF;
    }

    public void setCodEF(Integer codEF) {
        this.codEF = codEF;
    }


    public String getTorax() {
        return torax;
    }

    public void setTorax(String torax) {
        this.torax = torax;
    }

    public String getAbdomen() {
        return abdomen;
    }

    public void setAbdomen(String abdomen) {
        this.abdomen = abdomen;
    }

    public String getExtremidades() {
        return extremidades;
    }

    public void setExtremidades(String extremidades) {
        this.extremidades = extremidades;
    }

    public String getColumna() {
        return columna;
    }

    public void setColumna(String columna) {
        this.columna = columna;
    }
}
