package com.movix.review.service.entities;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDate;

@Entity
@Table(name = "reviews")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "review_id")
    private String reviewId;

    @Column(name = "review_title")
    private String reviewTitle;

    @Column(name = "review_content")
    private String reviewContent;

    @Column(name = "review_creation_date")
    @JsonFormat(shape = JsonFormat.Shape.STRING,pattern = "yyyy-MM-dd")
    @CreationTimestamp
    private LocalDate reviewCreationDate;

    @Column(name = "review_update_date")
    @JsonFormat(shape = JsonFormat.Shape.STRING,pattern = "yyyy-MM-dd")
    @UpdateTimestamp
    private LocalDate reviewUpdateDate;

    @Column(name = "parent_review_id")
    private String parentReviewId;

    @Column(name = "review_user_id",nullable = true)
    private String reviewUserId;

    @Column(name="review_movie_id",nullable = false)
    private String reviewMovieId;
}
