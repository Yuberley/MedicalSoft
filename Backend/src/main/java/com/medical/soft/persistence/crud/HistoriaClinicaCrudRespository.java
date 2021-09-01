package com.medical.soft.persistence.crud;

import com.medical.soft.persistence.entity.HistoriaClinica;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface HistoriaClinicaCrudRespository extends CrudRepository<HistoriaClinica, Integer> {
    Optional<HistoriaClinica> findByCc(int cc);
}
