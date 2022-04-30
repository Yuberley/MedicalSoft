package com.medical.soft.domain.service;

import com.medical.soft.domain.Background;
import com.medical.soft.domain.repository.BackgroundRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class BackgroundService {
    @Autowired
    private BackgroundRepository backgroundRepository;

    public Optional<Background> getBackground(int backgroundId) {
        return backgroundRepository.getBackground(backgroundId);
    }

    public Background save(Background background) {
        return backgroundRepository.save(background);
    }
}
