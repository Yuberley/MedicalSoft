package com.medical.soft.persistence;

import com.medical.soft.persistence.crud.HistoriaClinicaCrudRespository;
import com.medical.soft.persistence.entity.HistoriaClinica;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class HistoriaClinicaRepository {

    HistoriaClinicaCrudRespository historiaClinicaCrudRespository;

    public Optional<HistoriaClinica> getHistoriaClinica(int IdHistoriaClinica) {
        return historiaClinicaCrudRespository.findById(IdHistoriaClinica);
    }

    public HistoriaClinica save(HistoriaClinica historiaClinica) {
        return historiaClinicaCrudRespository.save(historiaClinica);
    }
}
