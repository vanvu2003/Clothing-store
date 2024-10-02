package com.example.clothingstore.repository;

import com.example.clothingstore.entity.CartProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CartProductRepository extends JpaRepository<CartProduct, Integer> {

    @Query(value = "select * from cart_product c  where cart_id = ?1 and c.product_id = ?2",nativeQuery = true)
    CartProduct findCartProductByUserAndProduct(int cartId, int productId);
}
