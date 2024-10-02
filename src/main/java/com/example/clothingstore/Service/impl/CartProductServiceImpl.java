package com.example.clothingstore.Service.impl;

import com.example.clothingstore.Service.CartProductService;
import com.example.clothingstore.dto.CartDto;
import com.example.clothingstore.dto.ProductDto;
import com.example.clothingstore.entity.Cart;
import com.example.clothingstore.entity.CartProduct;
import com.example.clothingstore.entity.Product;
import com.example.clothingstore.mapper.CartMapper;
import com.example.clothingstore.mapper.ProductMapper;
import com.example.clothingstore.repository.CartProductRepository;
import com.example.clothingstore.repository.CartRepository;
import com.example.clothingstore.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CartProductServiceImpl implements CartProductService {
    private final CartRepository cartRepository;
    private final CartProductRepository cartProductRepository;
    private final ProductRepository productRepository;

    @Override
    public void addCart(int idProd, int quantity,String userId) {

        if (idProd == 0 || quantity == 0 || userId == null ){
            throw new RuntimeException("Lỗi tham số truyền vào!");
        }

        Product product = productRepository.getProductById(idProd);
        Cart cart = cartRepository.getCartByUser(userId)
                .orElseThrow(() -> new RuntimeException("Không có cart"));

        CartProduct cartProductExist = cartProductRepository.findCartProductByUserAndProduct(cart.getId(),idProd);

        if (cartProductExist != null){
            cartProductExist.setQuantity(cartProductExist.getQuantity() + quantity);
            cartProductRepository.save(cartProductExist);
        }else{
            CartProduct cartProduct = CartProduct.builder()
                    .quantity(quantity)
                    .price(product.getPrice())
                    .cart(cart)
                    .product(product)
                    .build();

            cartProductRepository.save(cartProduct);
        }
    }
}
