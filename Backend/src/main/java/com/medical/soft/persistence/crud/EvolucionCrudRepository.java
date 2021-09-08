package com.medical.soft.persistence.crud;

import com.medical.soft.persistence.entity.Evolucion;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface EvolucionCrudRepository extends CrudRepository<Evolucion, Integer> {
    @Query(value = "SELECT * FROM EVOLUCION WHERE cc = ?1 AND fech_evolucion = (SELECT MAX(fech_evolucion) from EVOLUCION)", nativeQuery = true)
    Optional<Evolucion> findByLastDate(int cc);

    List<Evolucion> findByCcOrderByFechEvolucionDesc(int cc);
}
