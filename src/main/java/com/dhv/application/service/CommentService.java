package com.dhv.application.service;

import com.dhv.application.entity.Comment;
import com.dhv.application.model.request.CreateCommentPostRequest;
import com.dhv.application.model.request.CreateCommentProductRequest;
import org.springframework.stereotype.Service;

@Service
public interface CommentService {
    Comment createCommentPost(CreateCommentPostRequest createCommentPostRequest,long userId);
    Comment createCommentProduct(CreateCommentProductRequest createCommentProductRequest, long userId);
}
