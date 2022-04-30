package com.medical.soft.domain.repository;

import com.medical.soft.domain.Background;

import java.util.Optional;

public interface BackgroundRepository {
    Optional<Background> getBackground(int backgroundId);
    Background save(Background background);
}
