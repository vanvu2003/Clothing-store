package com.example.clothingstore.repository;

import com.example.clothingstore.dto.ProductDto;
import com.example.clothingstore.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

    @Query(value = "select p.* from Product p inner join SizeProduct sp on p.id = sp.product_id inner join Size z on sp.size_id = z.id\n" +
            "where z.name = ?1 ",nativeQuery = true)
    Page<Product> findProductBySize(String size, Pageable pageable);

    @Query(value = "SELECT * FROM Product WHERE price > ?1 and price < ?2", nativeQuery = true)
    Page<Product> findProductByPrice(double minPrice, double maxPrice, Pageable pageable );

    @Query("SELECT p FROM Product p WHERE p.category.name = ?1")
    Page<Product> findProductByCategory(String name, Pageable pageable);

    Product getProductById(int id);

}
