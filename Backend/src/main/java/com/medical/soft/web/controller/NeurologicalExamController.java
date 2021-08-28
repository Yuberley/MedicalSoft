package com.medical.soft.web.controller;

import com.medical.soft.domain.NeurologicalExam;
import com.medical.soft.domain.service.NeurologicalExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/neurological_exam")
public class NeurologicalExamController {

    @Autowired
    private NeurologicalExamService neurologicalExamService;

    @GetMapping("/{neurologicalExamId}")
    public Optional<NeurologicalExam> getNeurologicalExam(@PathVariable("neurologicalExamId") int neurologicalExamId) {
        return neurologicalExamService.getNeurologicalExam(neurologicalExamId);
    }

    @PostMapping("/save")
    public NeurologicalExam save(@RequestBody NeurologicalExam neurologicalExam) {
        return neurologicalExamService.save(neurologicalExam);
    }

    @PutMapping("/update")
    public NeurologicalExam update(@RequestBody NeurologicalExam neurologicalExam) {
        return neurologicalExamService.save(neurologicalExam);
    }
}
