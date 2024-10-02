package com.example.clothingstore.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.Nationalized;

import java.util.List;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "\"User\"")
@Builder
public class User {
    @Id
    @Column(name = "user_id", nullable = false, length = 50)
    private String userId;

    @Nationalized
    @Column(name = "name", length = 100)
    private String name;

    @Column(name = "password", length = 50)
    private String password;

    @Column(name = "role", length = 50)
    private String role;

    @OneToMany(mappedBy = "user")
    private List<Cart> carts;
}