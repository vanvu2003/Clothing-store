package com.example.clothingstore.dto;

import com.example.clothingstore.entity.Category;
import com.example.clothingstore.entity.Color;
import com.example.clothingstore.entity.Image;
import com.example.clothingstore.entity.Size;
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
public class ProductDto {
    private Integer id;

    private String name;

    private Double price;

    private Double rating;

    private LocalDate createdAt;

    private int categoryId;

    private int quantity;

    private List<SizeDto> sizes;

    private List<ColorDto> colors;

    private List<ImageDto> images;
}
