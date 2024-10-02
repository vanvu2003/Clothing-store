package com.example.clothingstore.dto;

import com.example.clothingstore.entity.CartProduct;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@Builder
public class CartDto {
    private int id;
    private LocalDate createdAt;
    private String userId;

    private List<ProductDto> products;
}
