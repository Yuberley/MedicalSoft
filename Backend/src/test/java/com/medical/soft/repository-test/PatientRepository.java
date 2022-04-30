package com.medical.soft.domain.repository;

import com.medical.soft.domain.Patient;
import com.medical.soft.persistence.entity.Paciente;

import java.util.Optional;

public interface PatientRepository {
    Optional<Patient> getPatient(int patientId);
    Patient save(Patient patient);
}
