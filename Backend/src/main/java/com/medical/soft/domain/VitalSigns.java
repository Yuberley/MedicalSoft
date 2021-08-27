package com.medical.soft.domain;

import java.time.LocalDateTime;

public class VitalSigns {
    private int vitalSignsId;
    private String bloodPressure;
    private String heartRate;
    private String breathingFrequency;
    private String oxygenSaturation;
    private String bloodGlucose;
    private LocalDateTime vitalSignsDate;

    private int patientId;
    private int physicalExamId;

    private Patient patient;
    private PhysicalExam physicalExam;

    public int getVitalSignsId() {
        return vitalSignsId;
    }

    public void setVitalSignsId(int vitalSignsId) {
        this.vitalSignsId = vitalSignsId;
    }

    public String getBloodPressure() {
        return bloodPressure;
    }

    public void setBloodPressure(String bloodPressure) {
        this.bloodPressure = bloodPressure;
    }

    public String getHeartRate() {
        return heartRate;
    }

    public void setHeartRate(String heartRate) {
        this.heartRate = heartRate;
    }

    public String getBreathingFrequency() {
        return breathingFrequency;
    }

    public void setBreathingFrequency(String breathingFrequency) {
        this.breathingFrequency = breathingFrequency;
    }

    public String getOxygenSaturation() {
        return oxygenSaturation;
    }

    public void setOxygenSaturation(String oxygenSaturation) {
        this.oxygenSaturation = oxygenSaturation;
    }

    public String getBloodGlucose() {
        return bloodGlucose;
    }

    public void setBloodGlucose(String bloodGlucose) {
        this.bloodGlucose = bloodGlucose;
    }

    public LocalDateTime getVitalSignsDate() {
        return vitalSignsDate;
    }

    public void setVitalSignsDate(LocalDateTime vitalSignsDate) {
        this.vitalSignsDate = vitalSignsDate;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public int getPhysicalExamId() {
        return physicalExamId;
    }

    public void setPhysicalExamId(int physicalExamId) {
        this.physicalExamId = physicalExamId;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public PhysicalExam getPhysicalExam() {
        return physicalExam;
    }

    public void setPhysicalExam(PhysicalExam physicalExam) {
        this.physicalExam = physicalExam;
    }
}
