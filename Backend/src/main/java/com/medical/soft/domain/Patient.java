package com.medical.soft.domain;

import java.time.LocalDateTime;

public class Patient {
    private int patientId;
    private String occupation;
    private String religion;
    private String race;
    private String laterality;
    private String informant;
    private String relationship;
    private String rh;
    private String reliability;
    private LocalDateTime admissionDate;

    private int hpeId;
    private int maritalStatusId;
    private int scholarshipId;
    private int personId;
    private int placeId;

    private Person person;
    private Place place;
    private Scholarship scholarship;
    private MaritalStatus maritalStatus;
    private Hpe hpe;


    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public String getLaterality() {
        return laterality;
    }

    public void setLaterality(String laterality) {
        this.laterality = laterality;
    }

    public String getInformant() {
        return informant;
    }

    public void setInformant(String informant) {
        this.informant = informant;
    }

    public String getRelationship() {
        return relationship;
    }

    public void setRelationship(String relationship) {
        this.relationship = relationship;
    }

    public String getRh() {
        return rh;
    }

    public void setRh(String rh) {
        this.rh = rh;
    }

    public String getReliability() {
        return reliability;
    }

    public void setReliability(String reliability) {
        this.reliability = reliability;
    }

    public LocalDateTime getAdmissionDate() {
        return admissionDate;
    }

    public void setAdmissionDate(LocalDateTime admissionDate) {
        this.admissionDate = admissionDate;
    }

    public int getHpeId() {
        return hpeId;
    }

    public void setHpeId(int hpeId) {
        this.hpeId = hpeId;
    }

    public int getMaritalStatusId() {
        return maritalStatusId;
    }

    public void setMaritalStatusId(int maritalStatusId) {
        this.maritalStatusId = maritalStatusId;
    }

    public int getScholarshipId() {
        return scholarshipId;
    }

    public void setScholarshipId(int scholarshipId) {
        this.scholarshipId = scholarshipId;
    }

    public int getPersonId() {
        return personId;
    }

    public void setPersonId(int personId) {
        this.personId = personId;
    }

    public int getPlaceId() {
        return placeId;
    }

    public void setPlaceId(int placeId) {
        this.placeId = placeId;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public Place getPlace() {
        return place;
    }

    public void setPlace(Place place) {
        this.place = place;
    }

    public Scholarship getScholarship() {
        return scholarship;
    }

    public void setScholarship(Scholarship scholarship) {
        this.scholarship = scholarship;
    }

    public MaritalStatus getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(MaritalStatus maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public Hpe getHpe() {
        return hpe;
    }

    public void setHpe(Hpe hpe) {
        this.hpe = hpe;
    }
}
