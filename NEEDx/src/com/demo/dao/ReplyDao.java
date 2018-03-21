package com.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.demo.model.Reply;

@Repository
public class ReplyDao {
  @Autowired
  private JdbcTemplate jdbcTemplate;

  public void addReply(Integer custId, Integer commentId, String reply) {
    System.out.println("in reply dao::" + " " + custId + " " + commentId + " " + reply);
    try {

      jdbcTemplate.update("INSERT INTO blog_reply VALUES(reply_sequence.NEXTVAL,?,?,?)",
          new Object[] {custId, commentId, reply});
    } catch (Exception e) {
    }
  }

  public List<Reply> getAllReplyByCommentId(Integer commentId) {
    StringBuilder sb = null;
    sb = new StringBuilder("SELECT blog_reply.replyid,blog_cust.name, "
        + "blog_reply.reply FROM blog_cust INNER JOIN blog_reply "
        + "ON blog_reply.custid=blog_cust.custid where blog_reply.commentid=?");
    List<Reply> rList = jdbcTemplate.query(sb.toString(), new RowMapper<Reply>() {
      public Reply mapRow(ResultSet rs, int noofRows) throws SQLException {
        Reply r = new Reply();
        r.setReplyId(rs.getInt(1));
        r.setCustName(rs.getString(2));
        r.setReply(rs.getString(3));
        return r;
      }
    }, commentId);
    return rList;
  }
}
