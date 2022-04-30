package com.medical.soft.domain.repository;

import com.medical.soft.domain.SystemReview;

import java.util.Optional;

public interface SystemReviewRepository {
    Optional<SystemReview> getSystemReview(int systemReviewId);
    SystemReview save(SystemReview systemReview);
}
