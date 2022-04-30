package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
public class Evolucion {

    @Id
    @Column(name = "cod_evolucion")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codEvolucion;

    // Foraign keys
    private Integer cc;
    @Column(name = "cod_pm")
    private Integer codPM;

    // Attributes
    private String subjetivo;
    private String objetivo;
    private String analisis;

    // LocalDate is data type for date, not time
    @Column(name = "fech_evolucion")
    private LocalDateTime fechEvolucion;

    // Relationships
    @ManyToOne
    @JoinColumn(name = "cc", insertable = false, updatable = false)
    private Paciente paciente;

    @ManyToOne
    @JoinColumn(name = "cod_pm", insertable = false, updatable = false)
    private PlanManejo planManejo;

    // Methods
    public Integer getCc() {
        return cc;
    }

    public void setCc(Integer cc) {
        this.cc = cc;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public PlanManejo getPlanManejo() {
        return planManejo;
    }

    public void setPlanManejo(PlanManejo planManejo) {
        this.planManejo = planManejo;
    }

    public Integer getCodEvolucion() {
        return codEvolucion;
    }

    public void setCodEvolucion(Integer codEvolucion) {
        this.codEvolucion = codEvolucion;
    }

    public Integer getCodPM() {
        return codPM;
    }

    public void setCodPM(Integer codPM) {
        this.codPM = codPM;
    }

    public String getSubjetivo() {
        return subjetivo;
    }

    public void setSubjetivo(String subjetivo) {
        this.subjetivo = subjetivo;
    }

    public String getObjetivo() {
        return objetivo;
    }

    public void setObjetivo(String objetivo) {
        this.objetivo = objetivo;
    }

    public String getAnalisis() {
        return analisis;
    }

    public void setAnalisis(String analisis) {
        this.analisis = analisis;
    }

    public LocalDateTime getFechEvolucion() {
        return fechEvolucion;
    }

    public void setFechEvolucion(LocalDateTime fechEvolucion) {
        this.fechEvolucion = fechEvolucion;
    }
}
