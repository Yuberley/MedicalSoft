package com.medical.soft.domain.service;

import com.medical.soft.domain.VitalSigns;
import com.medical.soft.domain.repository.VitalSignsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VitalSignsService {
    @Autowired
    private VitalSignsRepository vitalSignsRepository;

    public List<VitalSigns> getVitalSigns(int patientId) {
        return vitalSignsRepository.getVitalSigns(patientId);
    }

    public VitalSigns save(VitalSigns vitalSigns) {
        return vitalSignsRepository.save(vitalSigns);
    }
}
