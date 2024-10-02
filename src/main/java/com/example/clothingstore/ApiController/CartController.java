package com.example.clothingstore.ApiController;

import com.example.clothingstore.Service.CartProductService;
import com.example.clothingstore.Service.CartService;
import com.example.clothingstore.dto.CartProductDto;
import com.example.clothingstore.entity.User;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("carts")
@RequiredArgsConstructor
public class CartController {

    private final CartService cartService;
    private final CartProductService cartProductService;

    @GetMapping
    public ResponseEntity<?> getCart(){
        return ResponseEntity.ok(cartService.getProductInCart());
    }

    @PostMapping("add")
    public ResponseEntity<?> addCart(
            @RequestBody CartProductDto cartProductDto
    ){

        try {
            User user = User.builder()
                    .userId("vanvu")
                    .name("Nguyen Van Vu")
                    .role("admin")
                    .password("123454")
                    .build();

            cartProductService.addCart(cartProductDto.getProductId(),cartProductDto.getQuantity(),user.getUserId());

            return ResponseEntity.ok("Thêm thành công");
        }catch (IllegalArgumentException e){
            return ResponseEntity.badRequest().body(e.getMessage());
        }

    }
}
