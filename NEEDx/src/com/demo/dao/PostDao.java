package com.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.demo.model.Post;

/**
 * 
 * @author Ruchika Akotkar
 * @version
 *
 */
@Repository
public class PostDao {
  /**
   * 
   */
  @Autowired
  private JdbcTemplate jdbcTemplate;

  /**
   * 
   * @return
   */
  public List<Post> getAllPosts() {
    List<Post> clist = null;
    StringBuilder sb = null;
    try {
      sb = new StringBuilder("SELECT * FROM blog_post");
      clist = jdbcTemplate.query(sb.toString(), new RowMapper<Post>() {
        /**
         * 
         */
        @Override
        public Post mapRow(ResultSet rs, int noOfRows) throws SQLException {
          Post c = new Post();
          c.setPostid(rs.getInt(1));
          c.setCustid(rs.getInt(2));
          c.setPost(rs.getString(3));
          c.setLikes(rs.getInt(4));
          return c;
        }
      });
    } finally {
      if (sb != null) {
        sb = null;
      }
    }
    return clist;
  }

  public void addPost(Post post)
  {
       jdbcTemplate.update("insert into blog_post values(post_sequence.NEXTVAL,?,?,?,?,?)"
             ,new Object[] {post.getCustid(),post.getPost(),0,post.getPostImageName(),post.getPostImagePath()});
  }

  public List<Post> getPostDetails() 
  {
  	System.out.println("inside postDao");
     StringBuilder sb=null;
        List<Post> lPost=null;
      try {
             sb=new StringBuilder("SELECT blog_post.postid,blog_post.custid,blog_cust.name,"
             		+ "blog_post.post,blog_post.likes,blog_post.imagename,blog_post.imagepath "
             		+ "FROM blog_cust INNER JOIN blog_post ON blog_post.custid=blog_cust.custid"
             		+ " ORDER BY blog_post.postid DESC");
                lPost=jdbcTemplate.query(sb.toString(),new RowMapper<Post>() 
                {
              public Post mapRow(ResultSet rs, int noOfRows) throws SQLException
              {
                   Post p=new Post();
                   p.setPostid(rs.getInt(1));
                   p.setCustid(rs.getInt(2));
                   p.setCustName(rs.getString(3));
                   p.setPost(rs.getString(4));
                   p.setLikes(rs.getInt(5));
                   p.setPostImageName(rs.getString(6));
                   p.setPostImagePath(rs.getString(7));
                  return p;
              }
          });
               
       }
       finally
       {
         if (sb != null)
          {
              sb = null;
          }
      }
      
     return lPost;
    
  }
  
  public void deletePost(Integer custId,Integer postId){
      StringBuilder sql =null;
      try {
      sql=new StringBuilder("delete from blog_post where custid = ? and postId=?");
      jdbcTemplate.update(sql.toString(),new Object[]{
              custId,postId
              }
      );
      }
      finally {
          if(sql!=null)
          {
              sql=null;
          }
      }
  }
}
