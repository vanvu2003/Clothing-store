package com.example.clothingstore.ApiController;

import com.example.clothingstore.Service.SizeService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("sizes")
public class SizeController {

    private final SizeService sizeService;

    @GetMapping
    public ResponseEntity<?> getAll(){

        return ResponseEntity
                .ok(
                        sizeService.getAll()
                );
    }

}
