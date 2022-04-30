package com.medical.soft.persistence.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Id;
import java.io.Serializable;

@Embeddable
public class SolicitaPK implements Serializable {
    @Column(name = "cod_paraclinico")
    private Integer codParaclinico;

    @Column(name = "cod_pm")
    private Integer codPM;

    public Integer getCodParaclinico() {
        return codParaclinico;
    }

    public void setCodParaclinico(Integer codParaclinico) {
        this.codParaclinico = codParaclinico;
    }

    public Integer getCodPM() {
        return codPM;
    }

    public void setCodPM(Integer codPM) {
        this.codPM = codPM;
    }
}
