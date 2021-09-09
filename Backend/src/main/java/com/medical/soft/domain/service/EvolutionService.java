package com.medical.soft.domain.service;

import com.medical.soft.domain.Evolution;
import com.medical.soft.domain.repository.EvolutionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EvolutionService {
    @Autowired
    private EvolutionRepository evolutionRepository;

    public Optional<Evolution> getEvolutionByLastDate(int patientId) {
        return evolutionRepository.getEvolutionByLastDate(patientId);
    }
    public List<Evolution> getAllEvolutions(int patientId) {
        return evolutionRepository.getAllEvolutions(patientId);
    }
    public Evolution save(Evolution evolution) {
        return evolutionRepository.save(evolution);
    }
}
