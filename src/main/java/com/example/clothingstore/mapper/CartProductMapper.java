package com.example.clothingstore.mapper;

import com.example.clothingstore.dto.CartProductDto;
import com.example.clothingstore.entity.CartProduct;
import org.springframework.stereotype.Service;

import java.util.function.Function;

@Service
public class CartProductMapper implements Function<CartProduct,CartProductDto> {

    @Override
    public CartProductDto apply(CartProduct cartProduct) {
        return CartProductDto.builder()
                .productId(cartProduct.getProduct().getId())
                .quantity(cartProduct.getQuantity())
                .build();
    }
}
