package com.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Reply {
  private Integer replyId;
  private Integer commentId;
  private Integer custId;
  private String reply;
  private String custName;

  public Reply() {
    super();
    // TODO Auto-generated constructor stub
  }

  public String getCustName() {
    return custName;
  }

  public void setCustName(String custName) {
    this.custName = custName;
  }

  public Integer getReplyId() {
    return replyId;
  }

  public void setReplyId(Integer replyId) {
    this.replyId = replyId;
  }

  public Integer getCommentId() {
    return commentId;
  }

  public void setCommentId(Integer commentId) {
    this.commentId = commentId;
  }

  public Integer getCustId() {
    return custId;
  }

  public void setCustId(Integer custId) {
    this.custId = custId;
  }

  public String getReply() {
    return reply;
  }

  public void setReply(String reply) {
    this.reply = reply;
  }

  @Override
  public String toString() {
    return "Reply [replyId=" + replyId + ", commentId=" + commentId + ", custId=" + custId
        + ", reply=" + reply + "]";
  }
}
