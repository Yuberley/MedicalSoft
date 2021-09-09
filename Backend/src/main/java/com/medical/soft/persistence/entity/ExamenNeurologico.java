package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "examen_neurologico")
public class ExamenNeurologico {

    @Id
    @Column(name = "cod_en")
    private Integer codEN;

    // Attributes
    private String mental;
    @Column(name = "pares_craneales")
    private String paresCraneales;
    @Column(name = "motor_raquideo")
    private String motorRaquideo;
    @Column(name = "sensitivo_raquideo")
    private String sensitivoRaquideo;
    private String reflejos;
    private String coordinacion;
    private String marcha;

    // Relationships
    @OneToMany(mappedBy = "examenNeurologico")
    private List<HistoriaClinica> historiasClinicas;

    // Methods
    public List<HistoriaClinica> getHistoriasClinicas() {
        return historiasClinicas;
    }

    public void setHistoriasClinicas(List<HistoriaClinica> historiasClinicas) {
        this.historiasClinicas = historiasClinicas;
    }

    public Integer getCodEN() {
        return codEN;
    }

    public void setCodEN(Integer codEN) {
        this.codEN = codEN;
    }

    public String getMental() {
        return mental;
    }

    public void setMental(String mental) {
        this.mental = mental;
    }

    public String getParesCraneales() {
        return paresCraneales;
    }

    public void setParesCraneales(String paresCraneales) {
        this.paresCraneales = paresCraneales;
    }

    public String getMotorRaquideo() {
        return motorRaquideo;
    }

    public void setMotorRaquideo(String motorRaquideo) {
        this.motorRaquideo = motorRaquideo;
    }

    public String getSensitivoRaquideo() {
        return sensitivoRaquideo;
    }

    public void setSensitivoRaquideo(String sensitivoRaquideo) {
        this.sensitivoRaquideo = sensitivoRaquideo;
    }

    public String getReflejos() {
        return reflejos;
    }

    public void setReflejos(String reflejos) {
        this.reflejos = reflejos;
    }

    public String getCoordinacion() {
        return coordinacion;
    }

    public void setCoordinacion(String coordinacion) {
        this.coordinacion = coordinacion;
    }

    public String getMarcha() {
        return marcha;
    }

    public void setMarcha(String marcha) {
        this.marcha = marcha;
    }
}
