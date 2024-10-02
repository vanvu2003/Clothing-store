package com.example.clothingstore.mapper;

import com.example.clothingstore.dto.CategoryDto;
import com.example.clothingstore.entity.Category;
import org.springframework.stereotype.Service;

import java.util.function.Function;

@Service
public class CategoryMapper implements Function<Category, CategoryDto> {
    @Override
    public CategoryDto apply(Category category) {
        return CategoryDto.builder()
                .id(category.getId())
                .name(category.getName())
                .build();
    }
}
