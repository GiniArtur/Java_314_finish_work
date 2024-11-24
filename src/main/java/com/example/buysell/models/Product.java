package com.example.buysell.models;



import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "products")

@Data
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "price")
    private int price;
    @Column(name = "city")
    private String city;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
    //при удалении товара незачем держать фотографии товара
    private List<Image> images = new ArrayList<Image>();
    private Long previewImageId; //Поставим превьюшную фото на главном контенте сайта
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;
    private LocalDateTime dateOfCreated;

    @PrePersist   //Внедрение зависимости
    private void init() {
        dateOfCreated = LocalDateTime.now();
    }

    public void addImageToProduct(Image image) {
        image.setProduct(this);
        images.add(image);

    }
}

