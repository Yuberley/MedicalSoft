package com.medical.soft.domain;

import java.time.LocalDateTime;

public class Person {
    private int personId;
    private String firstName;
    private String lastName;
    private String age;
    private String sex;
    private LocalDateTime birthDate;

    public int getPersonId() { return personId; }

    public void setPersonId(int personId) { this.personId = personId; }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public LocalDateTime getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDateTime birthDate) {
        this.birthDate = birthDate;
    }
}
