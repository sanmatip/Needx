package com.demo.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.demo.model.Profile;

@Repository
public class ProfileDao {

  @Autowired
  JdbcTemplate jdbcTemplate;

  public void uploadImage(Profile profile) {
    System.out.println("Before insert dao");
    String query = "INSERT INTO NeedxProfile VALUES(?,?,?)";
    jdbcTemplate.update(query,
        new Object[] {profile.getImageId(), profile.getImageName(), profile.getImagePath()});
  }

  public List<Profile> getImageById() {
    // TODO Auto-generated method stub

    List<Profile> clist1 =
        jdbcTemplate.query("SELECT * FROM NeedxProfile", new RowMapper<Profile>() {
          public Profile mapRow(ResultSet rs, int rownumber) throws SQLException {
            Profile a = new Profile();

            a.setImageId(rs.getInt(1));
            a.setImageName(rs.getString(2));
            a.setImagePath(rs.getString(3));
            return a;
          }
        });

    return clist1;
  }
}

