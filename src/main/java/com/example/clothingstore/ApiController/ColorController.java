package com.example.clothingstore.ApiController;

import com.example.clothingstore.Service.ColorService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("colors")
public class ColorController {

    private final ColorService colorService;

    @GetMapping
    public ResponseEntity<?> getAll(){
        return ResponseEntity
                .ok(
                        colorService.getAll()
                );
    }
}
