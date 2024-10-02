package com.example.clothingstore.Service.impl;


import com.example.clothingstore.Service.ProductService;
import com.example.clothingstore.dto.ProductDto;
import com.example.clothingstore.mapper.ProductMapper;
import com.example.clothingstore.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;
    private final ProductMapper productMapper;

    @Override
    public Page<ProductDto> getAll(Pageable pageable) {
        return productRepository
                .findAll(pageable)
                .map(productMapper);
    }

    @Override
    public Page<ProductDto> getProductsBySize(String size, Pageable pageable) {
        return productRepository
                .findProductBySize(size, pageable)
                .map(productMapper);
    }

    @Override
    public Page<ProductDto> getProductsByPrice(double min, double max, Pageable pageable) {
        return productRepository
                .findProductByPrice(min,max,pageable)
                .map(productMapper);
    }

    @Override
    public Page<ProductDto> getProductsByCategory(String name, Pageable pageable) {
        return productRepository
                .findProductByCategory(name, pageable)
                .map(productMapper);
    }

    @Override
    public ProductDto getProductById(int id) {
        return productMapper
                .apply(productRepository
                        .getProductById(id));
    }

}
