package com.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.demo.model.Comment;

@Repository
public class CommentDao {
  @Autowired
  private JdbcTemplate jdbcTemplate;

  public void addComment(Integer custId, Integer postId, String comment) {
    try {
      int a = 0;
      System.out.println("hiiiiiiiiii");
      jdbcTemplate.update("INSERT INTO blog_comment VALUES(comment_sequence.NEXTVAL,?,?,?,?)",
          new Object[] {custId, postId, comment, a});
      System.out.println("after query");

    } catch (Exception e) {
      System.out.println("after query");
      e.printStackTrace();
    }
  }

  public List<Comment> getCommentByPostId(Integer postId) {
    StringBuilder sb = null;
    sb = new StringBuilder("SELECT blog_comment.commentid,blog_cust.name,blog_comment.postid, "
        + "blog_comment.comments FROM blog_cust INNER JOIN blog_comment "
        + "ON blog_comment.custid=blog_cust.custid where blog_comment.postid=?");
    List<Comment> clist = jdbcTemplate.query(sb.toString(), new RowMapper<Comment>() {
      public Comment mapRow(ResultSet rs, int noofRows) throws SQLException {
        Comment c = new Comment();
        c.setCommentId(rs.getInt(1));
        c.setCustName(rs.getString(2));
        c.setPostId(rs.getInt(3));
        c.setComment(rs.getString(4));

        return c;
      }
    }, postId);

    return clist;
  }
}
