package com.example.clothingstore.Service;

import com.example.clothingstore.dto.ProductDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ProductService {

    Page<ProductDto> getAll(Pageable pageable);

    Page<ProductDto> getProductsBySize(String size, Pageable pageable);

    Page<ProductDto> getProductsByPrice(double min, double max, Pageable pageable);

    Page<ProductDto> getProductsByCategory(String name, Pageable pageable);

    ProductDto getProductById(int id);
}
