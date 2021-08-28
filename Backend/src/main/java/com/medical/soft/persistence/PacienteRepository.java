package com.medical.soft.persistence;

import com.medical.soft.domain.Patient;
import com.medical.soft.domain.repository.PatientRepository;
import com.medical.soft.persistence.crud.PacienteCrudRepository;
import com.medical.soft.persistence.entity.Paciente;
import com.medical.soft.persistence.mapper.PatientMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class PacienteRepository implements PatientRepository {
    @Autowired
    PacienteCrudRepository pacienteCrudRepository;

    @Autowired
    private PatientMapper mapper;

    @Override
    public Optional<Patient> getPatient(int patientId) {
        return pacienteCrudRepository.findById(patientId)
                .map(paciente -> mapper.toPatient(paciente));
    }

    @Override
    public Patient save(Patient patient) {
        Paciente paciente = mapper.toPaciente(patient);
        return mapper.toPatient(pacienteCrudRepository.save(paciente));
    }

}
