package com.medical.soft.domain.service;

import com.medical.soft.domain.ClinicHistory;
import com.medical.soft.domain.repository.ClinicHistoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ClinicHistoryService {
    @Autowired
    private ClinicHistoryRepository clinicHistoryRepository;

    public Optional<ClinicHistory> getClinicalHistoryId(int clinicalHistoryId) {
        return clinicHistoryRepository.getClinicalHistoryId(clinicalHistoryId);
    }

    public ClinicHistory save(ClinicHistory clinicHistory) {
        return clinicHistoryRepository.save(clinicHistory);
    }
}
