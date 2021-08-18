package com.medical.soft.persistence.crud;

import com.medical.soft.persistence.entity.Persona;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PersonaCrudRepository extends CrudRepository<Persona, Integer> {

}
