package com.example.clothingstore.mapper;

import com.example.clothingstore.dto.ColorDto;
import com.example.clothingstore.dto.ImageDto;
import com.example.clothingstore.dto.ProductDto;
import com.example.clothingstore.dto.SizeDto;
import com.example.clothingstore.entity.Color;
import com.example.clothingstore.entity.Product;
import com.example.clothingstore.entity.Size;
import com.example.clothingstore.entity.SizeProduct;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProductMapper implements Function<Product, ProductDto> {

    private final ColorMapper colorMapper;
    private final SizeMapper sizeMapper;

    @Override
    public ProductDto apply(Product product) {

        List<SizeDto> sizes = product.getProducts()
                .stream()
                .map(sizeProduct -> sizeProduct.getSize())
                .map(sizeMapper)
                .toList();

        List<ColorDto> colors = product.getColorProducts()
                .stream()
                .map(colorProduct -> colorProduct.getColor())
                .map(colorMapper)
                .toList();

        return ProductDto.builder()
                .id(product.getId())
                .name(product.getName())
                .price(product.getPrice())
                .rating(product.getRating())
                .createdAt(product.getCreatedAt())
                .categoryId(product.getCategory().getId())
                .quantity(product.getQuantity())
                .sizes(sizes)
                .colors(colors)
                .images(product.getImages().stream().map(image -> new ImageDto(
                        image.getId(), image.getUrl()
                )).collect(Collectors.toList()))
                .build();
    }
}
