package com.example.clothingstore.mapper;

import com.example.clothingstore.dto.CartDto;
import com.example.clothingstore.entity.Cart;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.function.Function;


@Service
@AllArgsConstructor
public class CartMapper implements Function<Cart, CartDto> {
    private final ProductMapper productMapper;
    @Override
    public CartDto apply(Cart cart) {

        return CartDto.builder()
                .id(cart.getId())
                .createdAt(cart.getCreatedAt())
                .userId(cart.getUser().getUserId())
                .products(cart.getCartProducts().stream().map(cartProduct -> cartProduct.getProduct()).map(productMapper).toList())
                .build();
    }
}
