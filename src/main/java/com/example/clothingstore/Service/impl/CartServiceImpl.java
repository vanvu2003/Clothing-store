package com.example.clothingstore.Service.impl;

import com.example.clothingstore.Service.CartService;
import com.example.clothingstore.dto.CartDto;
import com.example.clothingstore.dto.CartProductDto;
import com.example.clothingstore.dto.ProductDto;
import com.example.clothingstore.entity.Cart;
import com.example.clothingstore.entity.Product;
import com.example.clothingstore.entity.User;
import com.example.clothingstore.mapper.CartMapper;
import com.example.clothingstore.mapper.CartProductMapper;
import com.example.clothingstore.mapper.ProductMapper;
import com.example.clothingstore.repository.CartRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CartServiceImpl implements CartService {

    private final CartRepository cartRepository;
    private final CartProductMapper cartProductMapper;
    private final ProductMapper productMapper;

    @Override
    @Transactional
    public List<CartProductDto> getProductInCart() {

        //Tạo một user mẫu
        User user = User.builder()
                .userId("vanvu")
                .name("Nguyễn Văn Vũ")
                .role("admin")
                .build();
        Cart cart = cartRepository
                .getCartByUser(user.getUserId())
                .orElseThrow(
                        () -> new RuntimeException("Không tìm thấy giỏ hàng!")
                );

        return cart.getCartProducts()
                .stream()
                .map(cartProductMapper).toList();
    }
}
