package com.medical.soft.persistence.crud;

import com.medical.soft.persistence.entity.SignosVitales;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface SignosVitalesCrudRepository extends CrudRepository<SignosVitales, Integer> {
    List<SignosVitales> findByCodPacienteOrderByFechSVDesc(int codPaciente);
}
