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
    private Integer cc;

    // Attributes
    private String habitacion;
    @Column(name = "motivo_consulta")
    private String motivoConsulta;
    @Column(name = "enfermedad_actual")
    private String enfermedadActual;
    private String analisis;
    private String diagnosticos;
    @Column(name = "fech_hc")
    private LocalDateTime fechHC;

    // Relationships
    @ManyToOne
    @JoinColumn(name = "cod_hc", insertable = false, updatable = false)
    private PlanManejo planManejo;

    @ManyToOne
    @JoinColumn(name = "cc", insertable = false, updatable = false)
    private Paciente paciente;

    @ManyToOne
    @JoinColumn(name = "cod_hc", insertable = false, updatable = false)
    private ExamenFisico examenFisico;

    @ManyToOne
    @JoinColumn(name = "cod_hc", insertable = false, updatable = false)
    private Antecedente antecedente;

    @ManyToOne
    @JoinColumn(name = "cod_hc", insertable = false, updatable = false)
    private RevisionSistema revisionSistema;

    @ManyToOne
    @JoinColumn(name = "cod_hc", insertable = false, updatable = false)
    private ExamenNeurologico examenNeurologico;

    // Methods
    public Integer getCc() {
        return cc;
    }

    public void setCc(Integer cc) {
        this.cc = cc;
    }

    public String getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(String habitacion) {
        this.habitacion = habitacion;
    }

    public PlanManejo getPlanManejo() {
        return planManejo;
    }

    public void setPlanManejo(PlanManejo planManejo) {
        this.planManejo = planManejo;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public ExamenFisico getExamenFisico() {
        return examenFisico;
    }

    public void setExamenFisico(ExamenFisico examenFisico) {
        this.examenFisico = examenFisico;
    }

    public Antecedente getAntecedente() {
        return antecedente;
    }

    public void setAntecedente(Antecedente antecedente) {
        this.antecedente = antecedente;
    }

    public RevisionSistema getRevisionSistema() {
        return revisionSistema;
    }

    public void setRevisionSistema(RevisionSistema revisionSistema) {
        this.revisionSistema = revisionSistema;
    }

    public ExamenNeurologico getExamenNeurologico() {
        return examenNeurologico;
    }

    public void setExamenNeurologico(ExamenNeurologico examenNeurologico) {
        this.examenNeurologico = examenNeurologico;
    }

    public Integer getCodHC() {
        return codHC;
    }

    public void setCodHC(Integer codHC) {
        this.codHC = codHC;
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
