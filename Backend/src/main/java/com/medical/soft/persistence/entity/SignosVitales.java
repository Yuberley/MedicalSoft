package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "signos_vitales")
public class SignosVitales {

    @Id
    @Column(name = "cod_sv")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codSV;

    // Foreign keys
    @Column(name = "cod_paciente")
    private Integer codPaciente;

    // Attributes
    @Column(name = "presion_arterial")
    private String presionArterial;
    @Column(name = "frecuencia_cardiaca")
    private String frecuenciaCardiaca;
    @Column(name = "frecuencia_respiratoria")
    private String frecuenciaRespiratoria;
    @Column(name = "saturacion_oxigeno")
    private String saturacionOxigeno;
    private String glusemia;
    @Column(name = "fech_sv")
    private LocalDateTime fechSV;

    public Integer getCodSV() {
        return codSV;
    }

    public void setCodSV(Integer codSV) {
        this.codSV = codSV;
    }

    public Integer getCodPaciente() {
        return codPaciente;
    }

    public void setCodPaciente(Integer codPaciente) {
        this.codPaciente = codPaciente;
    }

    public String getPresionArterial() {
        return presionArterial;
    }

    public void setPresionArterial(String presionArterial) {
        this.presionArterial = presionArterial;
    }

    public String getFrecuenciaCardiaca() {
        return frecuenciaCardiaca;
    }

    public void setFrecuenciaCardiaca(String frecuenciaCardiaca) {
        this.frecuenciaCardiaca = frecuenciaCardiaca;
    }

    public String getFrecuenciaRespiratoria() {
        return frecuenciaRespiratoria;
    }

    public void setFrecuenciaRespiratoria(String frecuenciaRespiratoria) {
        this.frecuenciaRespiratoria = frecuenciaRespiratoria;
    }

    public String getSaturacionOxigeno() {
        return saturacionOxigeno;
    }

    public void setSaturacionOxigeno(String saturacionOxigeno) {
        this.saturacionOxigeno = saturacionOxigeno;
    }

    public String getGlusemia() {
        return glusemia;
    }

    public void setGlusemia(String glusemia) {
        this.glusemia = glusemia;
    }

    public LocalDateTime getFechSV() {
        return fechSV;
    }

    public void setFechSV(LocalDateTime fechSV) {
        this.fechSV = fechSV;
    }
}
