package com.medical.soft.persistence;

import com.medical.soft.persistence.crud.ExamenNeurologicoCrudRepository;
import com.medical.soft.persistence.entity.ExamenNeurologico;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class ExamenNeurologicoRepository {
    private ExamenNeurologicoCrudRepository examenNeurologicoCrudRepository;

    public Optional<ExamenNeurologico> getExamenNeurologico(int codEN) {
        return examenNeurologicoCrudRepository.findById(codEN);
    }

    public ExamenNeurologico save(ExamenNeurologico examenNeurologico) {
        return examenNeurologicoCrudRepository.save(examenNeurologico);
    }
}
