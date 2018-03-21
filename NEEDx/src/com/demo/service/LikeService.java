package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.demo.dao.LikeDao;

@Service
public class LikeService {
  @Autowired
  private LikeDao likeDao;

  public boolean checkLiked(Integer custId, Integer postId) {
    boolean flag = likeDao.checkLiked(custId, postId);
    System.out.println(flag);
    return flag;
  }

  public void updateLike(Integer custId, Integer postId, Integer count) {
    likeDao.updateLike(custId, postId, count);
  }

  public void insertLike(int custId, int postId) {

    likeDao.insertLike(custId, postId);
  }

  public void updateLikeCount(int postId, int count) {
    likeDao.updateLikeCount(postId, count);
  }

  public int getLikeCount(int postId) {
    return likeDao.getLikeCount(postId);
  }
}
