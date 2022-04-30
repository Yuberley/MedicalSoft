package com.medical.soft.persistence.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Id;
import java.io.Serializable;

@Embeddable
public class RecetaPK implements Serializable {

    @Column(name = "cod_medicamentos")
    private Integer codMedicamento;

    @Column(name = "cod_pm")
    private Integer codPM;

    public Integer getCodMedicamento() {
        return codMedicamento;
    }

    public void setCodMedicamento(Integer codMedicamento) {
        this.codMedicamento = codMedicamento;
    }

    public Integer getCodPM() {
        return codPM;
    }

    public void setCodPM(Integer codPM) {
        this.codPM = codPM;
    }
}
