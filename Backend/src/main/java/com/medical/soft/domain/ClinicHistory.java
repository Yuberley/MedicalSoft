package com.medical.soft.domain;

import java.time.LocalDateTime;

public class ClinicHistory {
    private int clinicalHistoryId;
    private String room;
    private String reasonConsultation;
    private String currentIllness;
    private String analysis;
    private String diagnostics;
    private LocalDateTime clinicalHistoryDate;

    private int patientId;

    private ManagementPlan managementPlan;
    private NeurologicalExam neurologicalExam;
    private SystemReview systemReview;
    private Background background;
    private Patient patient;
    private PhysicalExam physicalExam;


    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public PhysicalExam getPhysicalExam() {
        return physicalExam;
    }

    public void setPhysicalExam(PhysicalExam physicalExam) {
        this.physicalExam = physicalExam;
    }

    public int getClinicalHistoryId() {
        return clinicalHistoryId;
    }

    public void setClinicalHistoryId(int clinicalHistoryId) {
        this.clinicalHistoryId = clinicalHistoryId;
    }

    public String getReasonConsultation() {
        return reasonConsultation;
    }

    public void setReasonConsultation(String reasonConsultation) {
        this.reasonConsultation = reasonConsultation;
    }

    public String getCurrentIllness() {
        return currentIllness;
    }

    public void setCurrentIllness(String currentIllness) {
        this.currentIllness = currentIllness;
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis;
    }

    public String getDiagnostics() {
        return diagnostics;
    }

    public void setDiagnostics(String diagnostics) {
        this.diagnostics = diagnostics;
    }

    public LocalDateTime getClinicalHistoryDate() {
        return clinicalHistoryDate;
    }

    public void setClinicalHistoryDate(LocalDateTime clinicalHistoryDate) {
        this.clinicalHistoryDate = clinicalHistoryDate;
    }

    public ManagementPlan getManagementPlan() {
        return managementPlan;
    }

    public void setManagementPlan(ManagementPlan managementPlan) {
        this.managementPlan = managementPlan;
    }

    public NeurologicalExam getNeurologicalExam() {
        return neurologicalExam;
    }

    public void setNeurologicalExam(NeurologicalExam neurologicalExam) {
        this.neurologicalExam = neurologicalExam;
    }

    public SystemReview getSystemReview() {
        return systemReview;
    }

    public void setSystemReview(SystemReview systemReview) {
        this.systemReview = systemReview;
    }

    public Background getBackground() {
        return background;
    }

    public void setBackground(Background background) {
        this.background = background;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}
