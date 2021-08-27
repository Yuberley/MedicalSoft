package com.medical.soft.persistence;

import com.medical.soft.persistence.crud.SignosVitalesCrudRepository;
import com.medical.soft.persistence.entity.SignosVitales;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SignosVitalesRepository {
    private SignosVitalesCrudRepository signosVitalesCrudRepository;

    public List<SignosVitales> getSignosVitales(int codPaciente) {
        return signosVitalesCrudRepository.findByCodPacienteOrderByFechSVDesc(codPaciente);
    }

    public SignosVitales save(SignosVitales signosVitales) {
        return signosVitalesCrudRepository.save(signosVitales);
    }
}
