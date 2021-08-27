package com.medical.soft.persistence;

import com.medical.soft.persistence.crud.ExamenFisicoCrudRepository;
import com.medical.soft.persistence.entity.ExamenFisico;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class ExamenFisicoRepository {
    private ExamenFisicoCrudRepository examenFisicoCrudRepository;

    private Optional<ExamenFisico> getExamenFisico(int codEF) {
        return examenFisicoCrudRepository.findById(codEF);
    }

    private ExamenFisico save(ExamenFisico examenFisico) {
        return examenFisicoCrudRepository.save(examenFisico);
    }
}
