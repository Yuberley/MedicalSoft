package com.medical.soft.domain.service;

import com.medical.soft.domain.Patient;
import com.medical.soft.domain.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PatientService {
    @Autowired
    private PatientRepository patientRepository;

    public Optional<Patient> getPatient(int patientId) {
        return patientRepository.getPatient(patientId);
    }

    public Patient save(Patient patient) {
        return patientRepository.save(patient);
    }
}
