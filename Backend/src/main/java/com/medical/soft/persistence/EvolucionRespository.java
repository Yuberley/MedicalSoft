package com.medical.soft.persistence;

import com.medical.soft.domain.Evolution;
import com.medical.soft.domain.repository.EvolutionRepository;
import com.medical.soft.persistence.crud.EvolucionCrudRepository;
import com.medical.soft.persistence.entity.Evolucion;
import com.medical.soft.persistence.mapper.EvolutionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class EvolucionRespository implements EvolutionRepository {
    @Autowired
    private EvolucionCrudRepository evolucionCrudRepository;

    @Autowired
    private EvolutionMapper mapper;

    @Override
    public Optional<Evolution> getEvolutionByLastDate(int patientId) {
        return evolucionCrudRepository.findByLastDate(patientId)
                .map(evolucion -> mapper.toEvolution(evolucion));
    }

    @Override
    public List<Evolution> getAllEvolutions(int patientId) {
        List<Evolucion> evoluciones = evolucionCrudRepository.findByCcOrderByFechEvolucionDesc(patientId);
        return mapper.toEvolutions(evoluciones);
    }

    @Override
    public Evolution save(Evolution evolution) {
        Evolucion evolucion = mapper.toEvolucion(evolution);
        return mapper.toEvolution(evolucionCrudRepository.save(evolucion));
    }
}
