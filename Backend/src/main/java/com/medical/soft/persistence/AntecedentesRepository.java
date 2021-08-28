package com.medical.soft.persistence;

import com.medical.soft.domain.Background;
import com.medical.soft.domain.repository.BackgroundRepository;
import com.medical.soft.persistence.crud.AntecedenteCrudRepository;
import com.medical.soft.persistence.entity.Antecedente;
import com.medical.soft.persistence.mapper.BackgroundMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class AntecedentesRepository implements BackgroundRepository {
    @Autowired
    private AntecedenteCrudRepository antecedenteCrudRepository;

    @Autowired
    private BackgroundMapper mapper;


    @Override
    public Optional<Background> getBackground(int backgroundId) {
        return antecedenteCrudRepository.findById(backgroundId)
                .map(antecedente -> mapper.toBackground(antecedente));
    }

    @Override
    public Background save(Background background) {
        Antecedente antecedente = mapper.toAntecedente(background);
        return mapper.toBackground(antecedenteCrudRepository.save(antecedente));
    }
}
