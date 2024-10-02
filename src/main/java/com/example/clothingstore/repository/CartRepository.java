package com.example.clothingstore.repository;

import com.example.clothingstore.dto.CartDto;
import com.example.clothingstore.entity.Cart;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {

    @Query("SELECT c from Cart c where c.user.userId = ?1")
    Optional<Cart> getCartByUser(String userId);



}
