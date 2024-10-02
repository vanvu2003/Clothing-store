package com.example.clothingstore.entity;

import com.example.clothingstore.dto.ColorDto;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Nationalized;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@Setter
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Nationalized
    @Column(name = "name", length = 200)
    private String name;

    @Column(name = "price")
    private Double price;

    @Column(name = "rating")
    private Double rating;

    @Column(name = "created_at")
    private LocalDate createdAt;

    @Column(name = "quantity")
    private int quantity;

    @OneToMany(mappedBy = "product")
    private List<CartProduct> cartProducts;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    private List<ColorProduct> colorProducts;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    private List<SizeProduct> products;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    private List<Image> images;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private Category category;



}