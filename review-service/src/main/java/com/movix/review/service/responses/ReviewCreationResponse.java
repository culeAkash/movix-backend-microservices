package com.movix.review.service.responses;

import com.movix.review.service.dto.MovieDTO;
import com.movix.review.service.dto.UserDTO;

public class ReviewCreationResponse {
    private String reviewId;
    private String reviewTitle;
    private String reviewContent;

    private UserDTO user;
    private MovieDTO movie;
}
