package com.example.clothingstore.ApiController;

import com.example.clothingstore.Service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("products")
public class ProductController {

    private final ProductService productService;

    @GetMapping
    public ResponseEntity<?> getAll(
            @RequestParam(defaultValue = "0") Integer page,
            @RequestParam(defaultValue = "10") Integer size
    ){

        Pageable pageable = PageRequest.of(page,size);

        return ResponseEntity.ok(
                productService
                        .getAll(pageable)
        );
    }

    @GetMapping("/filter/size")
    public ResponseEntity<?> getProductBySize(
            @RequestParam(defaultValue = "0") Integer page,
            @RequestParam(defaultValue = "10") Integer size,
            @RequestParam("sizeCloth") String sizeCloth
    ){

        Pageable pageable = PageRequest.of(page,size);

        return ResponseEntity.ok(
                productService
                        .getProductsBySize(sizeCloth,pageable)
        );

    }

    @GetMapping("filter/price")
    public ResponseEntity<?> getProductByPrice(
            @RequestParam("min") double min,
            @RequestParam("max") double max,
            @RequestParam(defaultValue = "0") Integer page,
            @RequestParam(defaultValue = "10") Integer size
    ){
        Pageable pageable = PageRequest.of(page,size);

        return ResponseEntity.ok(
                productService.getProductsByPrice(min,max,pageable)
        );
    }

    @GetMapping("categories")
    public ResponseEntity<?> getProductsByCate(
            @RequestParam("name") String name,
            @RequestParam(defaultValue = "0") Integer page,
            @RequestParam(defaultValue = "10") Integer size
    ){
        Pageable pageable = PageRequest.of(page,size);

        return ResponseEntity.ok(
                productService
                        .getProductsByCategory(name,pageable)
        );
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getProductById(
            @PathVariable int id
    ){
        return ResponseEntity
                .ok(productService.getProductById(id));
    }
}