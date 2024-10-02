package com.example.clothingstore.dto;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CartProductDto {
    private int productId;
    private int quantity;
}
