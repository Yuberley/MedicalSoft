package com.medical.soft.persistence;

import com.medical.soft.persistence.crud.AntecedenteCrudRepository;
import com.medical.soft.persistence.entity.Antecedente;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class AntecedentesRepository {
    private AntecedenteCrudRepository antecedenteCrudRepository;

    public Optional<Antecedente> getAntecedente(int codAntecedente) {
        return antecedenteCrudRepository.findById(codAntecedente);
    }

    public Antecedente save(Antecedente antecedente) {
        return antecedenteCrudRepository.save(antecedente);
    }

}
