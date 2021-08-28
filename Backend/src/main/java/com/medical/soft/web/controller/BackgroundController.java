package com.medical.soft.web.controller;

import com.medical.soft.domain.Background;
import com.medical.soft.domain.service.BackgroundService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/background")
public class BackgroundController {
    @Autowired
    private BackgroundService backgroundService;

    @GetMapping("/{backgroundId}")
    public Optional<Background> getBackground(@PathVariable("backgroundId") int backgroundId) {
        return backgroundService.getBackground(backgroundId);
    }

    @PostMapping("/save")
    public Background save(@RequestBody Background background) {
        return backgroundService.save(background);
    }

    @PutMapping("/update")
    public Background update(@RequestBody Background background) {
        return backgroundService.save(background);
    }
}
