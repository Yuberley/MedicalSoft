package com.medical.soft.persistence;

import com.medical.soft.persistence.crud.PacienteCrudRepository;
import com.medical.soft.persistence.entity.Paciente;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class PacienteRepository {
    PacienteCrudRepository pacienteCrudRepository;

    public Optional<Paciente> getPatient(int codPaciente) {
        return pacienteCrudRepository.findById(codPaciente);
    }

    public Paciente save(Paciente paciente) {
        return pacienteCrudRepository.save(paciente);
    }

}
