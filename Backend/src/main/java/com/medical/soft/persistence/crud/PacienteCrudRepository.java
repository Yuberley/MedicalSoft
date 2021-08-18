package com.medical.soft.persistence.crud;

import com.medical.soft.persistence.entity.Paciente;
import org.springframework.data.repository.CrudRepository;

public interface PacienteCrudRepository extends CrudRepository<Paciente, Integer> {

}
