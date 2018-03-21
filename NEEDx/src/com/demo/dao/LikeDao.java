package com.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.demo.model.Like;

@Repository
@Transactional
public class LikeDao {
  @Autowired
  private JdbcTemplate jdbcTemplate;

  public Like getLikeForPostId(Integer postid) {
    Like like =
        (Like) jdbcTemplate.query("SELECT * FROM blog_likes WHERE postid=?", new RowMapper<Like>() {
          public Like mapRow(ResultSet rs, int noOfRows) throws SQLException {
            Like l = new Like();
            l.setLikeId(rs.getInt(1));
            l.setCustId(rs.getInt(2));
            l.setPostId(rs.getInt(3));
            l.setCount(rs.getInt(4));
            return l;
          }
        }, postid);
    return like;
  }

  // @Transactional
  public void updateLike(Integer custId, Integer postId, Integer count) {
    StringBuilder sb = null;
    try {
      sb = new StringBuilder("UPDATE blog_likes SET count=? WHERE custid=? and postid=?");
      jdbcTemplate.update(sb.toString(), count, custId, postId);
    } finally {
      if (sb != null) {
        sb = null;
      }
    }
  }

  public boolean checkLiked(Integer custId, Integer postId) {
    System.out.println(custId + " " + postId);
    Integer cnt =
        jdbcTemplate.queryForObject("SELECT count(*) FROM blog_likes WHERE custid=? AND postid=?",
            Integer.class, custId, postId);
    System.out.println("count of likes:" + cnt);
    return (cnt != null && cnt > 0);
  }

  public void insertLike(Integer custId, Integer postId) {
    int count;
    System.out.println("inside insert like:" + custId + " " + postId);
    try {
      System.out.println("in try");
      jdbcTemplate.update(
          "insert into blog_likes (likeid,custid,postid) values(like_sequence.nextval,?,?)",
          new Object[] {custId, postId});
      count = getLikeCount(postId);
      System.out.println("b4 increament::" + count);
      count++;
      System.out.println("after increament:" + count);
      updateLikeCount(postId, count);
    } catch (Exception e) {
      System.out.println("catched");
    }
  }

  public void updateLikeCount(int postId, int count) {
    jdbcTemplate.update("update blog_post set likes=? where postId=?",
        new Object[] {count, postId});
  }

  public int getLikeCount(int postId) {
    int likecount = jdbcTemplate.queryForObject("select likes from blog_post where postId=?",
        Integer.class, postId);
    return likecount;
  }



}
