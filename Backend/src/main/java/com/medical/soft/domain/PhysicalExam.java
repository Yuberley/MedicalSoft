package com.medical.soft.domain;

public class PhysicalExam {
    private int peId;
    private String chest;
    private String abdomen;
    private String extremities;
    private String column;

    public int getPeId() {
        return peId;
    }

    public void setPeId(int peId) {
        this.peId = peId;
    }

    public String getChest() {
        return chest;
    }

    public void setChest(String chest) {
        this.chest = chest;
    }

    public String getAbdomen() {
        return abdomen;
    }

    public void setAbdomen(String abdomen) {
        this.abdomen = abdomen;
    }

    public String getExtremities() {
        return extremities;
    }

    public void setExtremities(String extremities) {
        this.extremities = extremities;
    }

    public String getColumn() {
        return column;
    }

    public void setColumn(String column) {
        this.column = column;
    }
}
