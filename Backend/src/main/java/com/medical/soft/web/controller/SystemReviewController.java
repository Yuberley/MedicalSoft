package com.medical.soft.web.controller;

import com.medical.soft.domain.SystemReview;
import com.medical.soft.domain.service.SystemReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/system_review")
public class SystemReviewController {

    @Autowired
    private SystemReviewService systemReviewService;

    @GetMapping("/{systemReviewId}")
    public Optional<SystemReview> getSystemReview(@PathVariable("systemReviewId") int systemReviewId) {
        return systemReviewService.getSystemReview(systemReviewId);
    }

    @PostMapping("/save")
    public  SystemReview save(@RequestBody SystemReview systemReview) {
        return systemReviewService.save(systemReview);
    }

    @PutMapping("/update")
    public  SystemReview update(@RequestBody SystemReview systemReview) {
        return systemReviewService.save(systemReview);
    }
}
