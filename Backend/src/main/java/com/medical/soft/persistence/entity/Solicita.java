package com.medical.soft.persistence.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "solicita")
public class Solicita {

    // Key compuesta
    @EmbeddedId
    private SolicitaPK id;

    public SolicitaPK getId() {
        return id;
    }

    public void setId(SolicitaPK id) {
        this.id = id;
    }
}
