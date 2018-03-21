package com.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Comment {
  private Integer commentId;
  private Integer postId;
  private String comment;
  private Integer custId;
  private String custName;
  private Integer replyCount;

  public Comment() {
    // TODO Auto-generated constructor stub
  }

  public Comment(Integer commentId, Integer postId, String comment, Integer custId, String custName,
      Integer replyCount) {
    super();
    this.commentId = commentId;
    this.postId = postId;
    this.comment = comment;
    this.custId = custId;
    this.custName = custName;
    this.replyCount = replyCount;
  }

  public String getCustName() {
    return custName;
  }

  public void setCustName(String custName) {
    this.custName = custName;
  }

  public Integer getCommentId() {
    return commentId;
  }

  public void setCommentId(Integer commentId) {
    this.commentId = commentId;
  }

  public Integer getPostId() {
    return postId;
  }

  public void setPostId(Integer postId) {
    this.postId = postId;
  }

  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public Integer getCustId() {
    return custId;
  }

  public void setCustId(Integer custId) {
    this.custId = custId;
  }

  public Integer getReplyCount() {
    return replyCount;
  }

  public void setReplyCount(Integer replyCount) {
    this.replyCount = replyCount;
  }

  @Override
  public String toString() {
    return "Comment [commentId=" + commentId + ", postId=" + postId + ", comment=" + comment
        + ", custId=" + custId + ", replyCount=" + replyCount + "]";
  }
}
