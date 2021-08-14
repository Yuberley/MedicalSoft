package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "revision_sistema")
public class RevisionSistema {

    @Id
    @Column(name = "cod_rs")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codRS;

    // Attributes
    private String nepuropsiquiatrico;
    private String mamas;
    @Column(name = "sintomas_generales")
    private String sintomasGenerales;
    @Column(name = "cabeza_sentidos")
    private String cabezaSentidos;
    private String linforreticular;
    private String cardiopulmonar;
    private String gastrointestinal;
    private String psicogenicos;
    private String genitourinario;
    private String musculoesqueletico;
    @Column(name = "piel_faneras")
    private String pielFaneras;
    private String endocrino;
    private String venereos;

    // Relationships
    @OneToMany(mappedBy = "revisionSistema")
    private List<HistoriaClinica> historiasClinicas;

    // Methods
    public List<HistoriaClinica> getHistoriasClinicas() {
        return historiasClinicas;
    }

    public void setHistoriasClinicas(List<HistoriaClinica> historiasClinicas) {
        this.historiasClinicas = historiasClinicas;
    }

    public Integer getCodRS() {
        return codRS;
    }

    public void setCodRS(Integer codRS) {
        this.codRS = codRS;
    }

    public String getNepuropsiquiatrico() {
        return nepuropsiquiatrico;
    }

    public void setNepuropsiquiatrico(String nepuropsiquiatrico) {
        this.nepuropsiquiatrico = nepuropsiquiatrico;
    }

    public String getMamas() {
        return mamas;
    }

    public void setMamas(String mamas) {
        this.mamas = mamas;
    }

    public String getSintomasGenerales() {
        return sintomasGenerales;
    }

    public void setSintomasGenerales(String sintomasGenerales) {
        this.sintomasGenerales = sintomasGenerales;
    }

    public String getCabezaSentidos() {
        return cabezaSentidos;
    }

    public void setCabezaSentidos(String cabezaSentidos) {
        this.cabezaSentidos = cabezaSentidos;
    }

    public String getLinforreticular() {
        return linforreticular;
    }

    public void setLinforreticular(String linforreticular) {
        this.linforreticular = linforreticular;
    }

    public String getCardiopulmonar() {
        return cardiopulmonar;
    }

    public void setCardiopulmonar(String cardiopulmonar) {
        this.cardiopulmonar = cardiopulmonar;
    }

    public String getGastrointestinal() {
        return gastrointestinal;
    }

    public void setGastrointestinal(String gastrointestinal) {
        this.gastrointestinal = gastrointestinal;
    }

    public String getPsicogenicos() {
        return psicogenicos;
    }

    public void setPsicogenicos(String psicogenicos) {
        this.psicogenicos = psicogenicos;
    }

    public String getGenitourinario() {
        return genitourinario;
    }

    public void setGenitourinario(String genitourinario) {
        this.genitourinario = genitourinario;
    }

    public String getMusculoesqueletico() {
        return musculoesqueletico;
    }

    public void setMusculoesqueletico(String musculoesqueletico) {
        this.musculoesqueletico = musculoesqueletico;
    }

    public String getPielFaneras() {
        return pielFaneras;
    }

    public void setPielFaneras(String pielFaneras) {
        this.pielFaneras = pielFaneras;
    }

    public String getEndocrino() {
        return endocrino;
    }

    public void setEndocrino(String endocrino) {
        this.endocrino = endocrino;
    }

    public String getVenereos() {
        return venereos;
    }

    public void setVenereos(String venereos) {
        this.venereos = venereos;
    }
}
