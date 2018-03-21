package com.demo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.demo.dao.ReplyDao;
import com.demo.model.Reply;

@Service
public class ReplyService {

  @Autowired
  private ReplyDao replyDao;

  public void addReply(Integer custId, Integer commentId, String reply) 
  {
    replyDao.addReply(custId, commentId, reply);
  }

  public List<Reply> getAllReplyByCommentId(Integer commentId) {
    return replyDao.getAllReplyByCommentId(commentId);
  }
}
