package com.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Like {
  private int LikeId;
  private int custId;
  private int postId;
  private int count;

  public Like() {
    super();
  }

  public Like(int likeId, int count, int custId, int postId) {
    super();
    LikeId = likeId;
    this.count = count;
    this.custId = custId;
    this.postId = postId;
  }

  public int getLikeId() {
    return LikeId;
  }

  public void setLikeId(int likeId) {
    LikeId = likeId;
  }

  public int getCount() {
    return count;
  }

  public void setCount(int count) {
    this.count = count;
  }

  public int getCustId() {
    return custId;
  }

  public void setCustId(int custId) {
    this.custId = custId;
  }

  public int getPostId() {
    return postId;
  }

  public void setPostId(int postId) {
    this.postId = postId;
  }

  @Override
  public String toString() {
    return "Like [LikeId=" + LikeId + ", count=" + count + ", custId=" + custId + ", postId="
        + postId + "]";
  }

}
