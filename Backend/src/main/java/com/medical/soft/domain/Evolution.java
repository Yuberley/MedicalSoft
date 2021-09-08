package com.medical.soft.domain;

public class Evolution {
    private int evolutionId;
    private String subjective;
    private String objetive;
    private String analysis;

    private int patientId;
    private int managementPlanId;

    private Patient patient;
    private ManagementPlan managementPlan;

    public int getEvolutionId() {
        return evolutionId;
    }

    public void setEvolutionId(int evolutionId) {
        this.evolutionId = evolutionId;
    }

    public String getSubjective() {
        return subjective;
    }

    public void setSubjective(String subjective) {
        this.subjective = subjective;
    }

    public String getObjetive() {
        return objetive;
    }

    public void setObjetive(String objetive) {
        this.objetive = objetive;
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public int getManagementPlanId() {
        return managementPlanId;
    }

    public void setManagementPlanId(int managementPlanId) {
        this.managementPlanId = managementPlanId;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public ManagementPlan getManagementPlan() {
        return managementPlan;
    }

    public void setManagementPlan(ManagementPlan managementPlan) {
        this.managementPlan = managementPlan;
    }
}
