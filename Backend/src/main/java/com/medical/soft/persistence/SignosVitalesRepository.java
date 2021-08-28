package com.medical.soft.persistence;

import com.medical.soft.domain.VitalSigns;
import com.medical.soft.domain.repository.VitalSignsRepository;
import com.medical.soft.persistence.crud.SignosVitalesCrudRepository;
import com.medical.soft.persistence.entity.SignosVitales;
import com.medical.soft.persistence.mapper.VitalSignsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SignosVitalesRepository implements VitalSignsRepository {
    @Autowired
    private SignosVitalesCrudRepository signosVitalesCrudRepository;
    @Autowired
    private VitalSignsMapper mapper;


    @Override
    public List<VitalSigns> getVitalSigns(int patientId) {
        List<SignosVitales> signosVitales = signosVitalesCrudRepository.findByCodPacienteOrderByFechSVDesc(patientId);
        return mapper.toVitalSigns(signosVitales);
    }

    @Override
    public VitalSigns save(VitalSigns vitalSigns) {
        SignosVitales signosVitales = mapper.toSignosVitales(vitalSigns);
        return mapper.toVitalSigns(signosVitalesCrudRepository.save(signosVitales));
    }
}
