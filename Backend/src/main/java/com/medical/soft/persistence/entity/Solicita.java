package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "solicita")
public class Solicita {

    // Key compuesta
    @EmbeddedId
    private SolicitaPK id;

    // Relationships
    @ManyToOne
    @JoinColumn(name = "cod_pm", insertable = false, updatable = false)
    private PlanManejo planManejo;

    @ManyToOne
    @JoinColumn(name = "cod_paraclinico", insertable = false, updatable = false)
    private Paraclinico paraclinico;

    // Methods
    public PlanManejo getPlanManejo() {
        return planManejo;
    }

    public void setPlanManejo(PlanManejo planManejo) {
        this.planManejo = planManejo;
    }

    public Paraclinico getParaclinico() {
        return paraclinico;
    }

    public void setParaclinico(Paraclinico paraclinico) {
        this.paraclinico = paraclinico;
    }

    public SolicitaPK getId() {
        return id;
    }

    public void setId(SolicitaPK id) {
        this.id = id;
    }
}
