package com.medical.soft.persistence;

import com.medical.soft.domain.ClinicHistory;
import com.medical.soft.domain.repository.ClinicHistoryRepository;
import com.medical.soft.persistence.crud.HistoriaClinicaCrudRespository;
import com.medical.soft.persistence.entity.HistoriaClinica;
import com.medical.soft.persistence.mapper.ClinicHistoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class HistoriaClinicaRepository implements ClinicHistoryRepository {
    @Autowired
    HistoriaClinicaCrudRespository historiaClinicaCrudRespository;

    @Autowired
    private ClinicHistoryMapper mapper;


    @Override
    public Optional<ClinicHistory> getClinicalHistoryId(int clinicalHistoryId) {
        return historiaClinicaCrudRespository.findById(clinicalHistoryId)
                .map(historiaClinica -> mapper.toClinicHistory(historiaClinica));
    }

    @Override
    public ClinicHistory save(ClinicHistory clinicHistory) {
        HistoriaClinica historiaClinica = mapper.toHistoriaClinica(clinicHistory);
        return mapper.toClinicHistory(historiaClinicaCrudRespository.save(historiaClinica));
    }
}
