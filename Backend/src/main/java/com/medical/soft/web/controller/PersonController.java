package com.medical.soft.web.controller;

import com.medical.soft.domain.Person;
import com.medical.soft.domain.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/people")
public class PersonController {

    @Autowired
    private PersonService personService;

    @GetMapping()
    public List<Person> getAll() {
        return personService.getAll();
    }

    @GetMapping("/{personId}")
    public Optional<Person> getPerson(@PathVariable("personId") int personId) {
        return personService.getPerson(personId);
    }

    @PostMapping("/save")
    public Person save(@RequestBody Person person) {
        return personService.save(person);
    }

    @DeleteMapping("/delete/{personId}")
    public boolean delete(@PathVariable("personId") int personId) {
        return personService.delete(personId);
    }
}
