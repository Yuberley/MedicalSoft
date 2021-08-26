package com.medical.soft.domain;

public class NeurologicalExam {
    private int neurologicalExamId;
    private String mental;
    private String cranialNerves;
    private String spinalMotor;
    private String spinalSesitive;
    private String reflexes;
    private String coordination;
    private String march;

    public int getNeurologicalExamId() {
        return neurologicalExamId;
    }

    public void setNeurologicalExamId(int neurologicalExamId) {
        this.neurologicalExamId = neurologicalExamId;
    }

    public String getMental() {
        return mental;
    }

    public void setMental(String mental) {
        this.mental = mental;
    }

    public String getCranialNerves() {
        return cranialNerves;
    }

    public void setCranialNerves(String cranialNerves) {
        this.cranialNerves = cranialNerves;
    }

    public String getSpinalMotor() {
        return spinalMotor;
    }

    public void setSpinalMotor(String spinalMotor) {
        this.spinalMotor = spinalMotor;
    }

    public String getSpinalSesitive() {
        return spinalSesitive;
    }

    public void setSpinalSesitive(String spinalSesitive) {
        this.spinalSesitive = spinalSesitive;
    }

    public String getReflexes() {
        return reflexes;
    }

    public void setReflexes(String reflexes) {
        this.reflexes = reflexes;
    }

    public String getCoordination() {
        return coordination;
    }

    public void setCoordination(String coordination) {
        this.coordination = coordination;
    }

    public String getMarch() {
        return march;
    }

    public void setMarch(String march) {
        this.march = march;
    }
}
