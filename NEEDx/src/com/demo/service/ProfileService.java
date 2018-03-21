package com.demo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.demo.dao.ProfileDao;
import com.demo.model.Profile;

@Service
public class ProfileService {

  @Autowired
  ProfileDao profileDao;

  public void uploadImage(Profile profile) {
    profileDao.uploadImage(profile);
  }

  public List<Profile> getImageById() {

    return profileDao.getImageById();
  }
}
