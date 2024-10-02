package com.example.clothingstore.Service;

import com.example.clothingstore.dto.CategoryDto;
import com.example.clothingstore.entity.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CategoryService {
    Page<CategoryDto> getAll(Pageable pageable);
}
