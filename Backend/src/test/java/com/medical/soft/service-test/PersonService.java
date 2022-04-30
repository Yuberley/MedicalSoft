package com.medical.soft.domain.service;

import com.medical.soft.domain.Person;
import com.medical.soft.domain.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PersonService {
    @Autowired
    private PersonRepository personRepository;

    public List<Person> getAll() {
        return personRepository.getAll();
    }

    public Optional<Person> getPerson(int personId) {
        return personRepository.getPerson(personId);
    }

    public Person save(Person person) {
        return personRepository.save(person);
    }

    public boolean delete(int personId) {
        return  getPerson(personId).map(person -> {
            personRepository.delete(personId);
            return true;
        }).orElse(false);
    }
}
