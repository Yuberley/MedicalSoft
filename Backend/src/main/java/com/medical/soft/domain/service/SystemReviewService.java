package com.medical.soft.domain.service;

import com.medical.soft.domain.SystemReview;
import com.medical.soft.domain.repository.SystemReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class SystemReviewService {
    @Autowired
    private SystemReviewRepository systemReviewRepository;

    public Optional<SystemReview> getSystemReview(int systemReviewId) {
        return systemReviewRepository.getSystemReview(systemReviewId);
    }

    public  SystemReview save(SystemReview systemReview) {
        return systemReviewRepository.save(systemReview);
    }
}
