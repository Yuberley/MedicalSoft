package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "historia_clinica")
public class HistoriaClinica {

    @Id
    @Column(name = "cod_hc")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codHC;

    // Forening keys
    @Column(name = "cod_ef")
    private Integer codEF;
    @Column(name = "cod_pm")
    private Integer codPM;
    @Column(name = "cod_paciente")
    private Integer codPaciente;
    @Column(name = "cod_en")
    private Integer codEN;
    @Column(name = "cod_rs")
    private Integer codRS;
    @Column(name = "cod_antecedente")
    private Integer codAntecedente;

    // Attributes
    @Column(name = "motivo_consulta")
    private String motivoConsulta;
    @Column(name = "enfermedad_actual")
    private String enfermedadActual;
    private String analisis;
    private String diagnosticos;
    @Column(name = "fech_hc")
    private LocalDateTime fechHC;

    public Integer getCodHC() {
        return codHC;
    }

    public void setCodHC(Integer codHC) {
        this.codHC = codHC;
    }

    public Integer getCodEF() {
        return codEF;
    }

    public void setCodEF(Integer codEF) {
        this.codEF = codEF;
    }

    public Integer getCodPM() {
        return codPM;
    }

    public void setCodPM(Integer codPM) {
        this.codPM = codPM;
    }

    public Integer getCodPaciente() {
        return codPaciente;
    }

    public void setCodPaciente(Integer codPaciente) {
        this.codPaciente = codPaciente;
    }

    public Integer getCodEN() {
        return codEN;
    }

    public void setCodEN(Integer codEN) {
        this.codEN = codEN;
    }

    public Integer getCodRS() {
        return codRS;
    }

    public void setCodRS(Integer codRS) {
        this.codRS = codRS;
    }

    public Integer getCodAntecedente() {
        return codAntecedente;
    }

    public void setCodAntecedente(Integer codAntecedente) {
        this.codAntecedente = codAntecedente;
    }

    public String getMotivoConsulta() {
        return motivoConsulta;
    }

    public void setMotivoConsulta(String motivoConsulta) {
        this.motivoConsulta = motivoConsulta;
    }

    public String getEnfermedadActual() {
        return enfermedadActual;
    }

    public void setEnfermedadActual(String enfermedadActual) {
        this.enfermedadActual = enfermedadActual;
    }

    public String getAnalisis() {
        return analisis;
    }

    public void setAnalisis(String analisis) {
        this.analisis = analisis;
    }

    public String getDiagnosticos() {
        return diagnosticos;
    }

    public void setDiagnosticos(String diagnosticos) {
        this.diagnosticos = diagnosticos;
    }

    public LocalDateTime getFechHC() {
        return fechHC;
    }

    public void setFechHC(LocalDateTime fechHC) {
        this.fechHC = fechHC;
    }
}
