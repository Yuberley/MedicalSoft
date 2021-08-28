package com.medical.soft.web.controller;

import com.medical.soft.domain.PhysicalExam;
import com.medical.soft.domain.service.PhysicalExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/physical_exam")
public class PhysicalExamController {

    @Autowired
    private PhysicalExamService physicalExamService;

    @GetMapping("/{physicalExamId}")
    public Optional<PhysicalExam> getPhysicalExam(@PathVariable("physicalExamId") int physicalExamId) {
        return physicalExamService.getPhysicalExam(physicalExamId);
    }

    @PostMapping("/save")
    public PhysicalExam save(@RequestBody PhysicalExam physicalExam) {
        return physicalExamService.save(physicalExam);
    }

    @PutMapping("/update")
    public PhysicalExam update(@RequestBody PhysicalExam physicalExam) {
        return physicalExamService.save(physicalExam);
    }

}
