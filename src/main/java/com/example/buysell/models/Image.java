package com.example.buysell.models;


import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name="images")
@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Image")
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id")
    private Long id;
    @Column(name="name")
    private String name;
    @Column(name="originalFileName")
    private String originalFileName;
    @Column(name="size")
    private Long size;
    @Column(name="contentType")
    private String contentType;
    @Column(name="isPreviewImage")//Превьюшный файл
    private boolean isPreviewImage;
    @Lob  //в базе данных хранимый тип LongBlob
    private byte[] bytes;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER) //fetch - способ загрузки зависимых сущностей к этой определенной сущности
                                                                        //т.е.когоа получаем фото из базы данных, product будет подгружаться сразу
    private Product product;

}
