package com.example.clothingstore.Service.impl;

import com.example.clothingstore.Service.CategoryService;
import com.example.clothingstore.dto.CategoryDto;
import com.example.clothingstore.entity.Category;
import com.example.clothingstore.mapper.CartMapper;
import com.example.clothingstore.mapper.CategoryMapper;
import com.example.clothingstore.repository.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {
    private final CategoryRepository categoryRepository;
    private final CategoryMapper categoryMapper;

    @Override
    public Page<CategoryDto> getAll(Pageable pageable) {
        return categoryRepository
                .findAll(pageable)
                .map(categoryMapper)
                ;
    }

}
