package com.example.clothingstore.Service;


import com.example.clothingstore.dto.CartDto;
import com.example.clothingstore.dto.CartProductDto;
import com.example.clothingstore.dto.ProductDto;
import com.example.clothingstore.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface CartService {
    List<CartProductDto> getProductInCart();
}
