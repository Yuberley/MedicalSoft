package com.medical.soft.persistence;

import com.medical.soft.persistence.crud.SignosVitalesCrudRepository;
import com.medical.soft.persistence.entity.SignosVitales;

import java.util.Optional;

public class SignosVitalesRepository {
    private SignosVitalesCrudRepository signosVitalesCrudRepository;

    public Optional<SignosVitales> getSignosVitales(int codSV) {
        return signosVitalesCrudRepository.findById(codSV);
    }

    public SignosVitales save(SignosVitales signosVitales) {
        return signosVitalesCrudRepository.save(signosVitales);
    }
}
