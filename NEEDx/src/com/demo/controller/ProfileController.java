package com.demo.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.demo.model.Profile;
import com.demo.service.ProfileService;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

@Controller
@RequestMapping("/image")
public class ProfileController {

  @Autowired
  ProfileService profileService;

  @RequestMapping(value = "/upload", method = RequestMethod.POST)
  public String uploadImage(ModelMap map, @ModelAttribute("profile") Profile profile,
      HttpServletRequest request, @RequestParam CommonsMultipartFile fileUpload,HttpSession session) {
    // String path = "D:\\PROJECT_NEEDX\\FinalPost\\WebContent\\resources\\uploads\\"; // get value
    // from application.prperties file.
    String path = "D:\\image\\profile\\";
    String filename = fileUpload.getOriginalFilename();
    byte barr[] = fileUpload.getBytes();
    profile.setImageName(filename);

    profile.setImagePath(path);

    String imgName = path + filename;

    BufferedOutputStream bout = null;

    try {
      bout = new BufferedOutputStream(
          new FileOutputStream(path + StringUtils.trimAllWhitespace(filename)));



      bout.write(barr);

      profileService.uploadImage(profile);

      String result = readimage(imgName);

      map.addAttribute("convertedimage", result);
      session.setAttribute("images", result);
    } catch (FileNotFoundException e) {
      e.printStackTrace();
    } catch (Exception e) {
      e.printStackTrace();
    }



    return "viewPost";
  }

  /*
   * String imagepath = null; List<Profile> list=profileService.getImageById(); for (Profile pro:
   * list) { imagepath=pro.getImagePath(); }
   * 
   * String imagefullpath=imagepath+filename;
   * System.out.println("concatenated path :"+imagefullpath); map.addAttribute("filename",filename);
   * 
   * return "design"; }
   */

  @RequestMapping("/display1")
  public ModelAndView ShowImage() {
    return new ModelAndView("details");
  }



  public String readimage(String imgName) {
    String encodedImage = "";
    try {

      // File class is an abstract representation of file and directory pathname.
      File img = new File(imgName);

      // ImageIO.read will read an image from file object (img).
      BufferedImage image = ImageIO.read(img);

      ByteArrayOutputStream baos = new ByteArrayOutputStream();
      // write an image into array
      ImageIO.write(image, "png", baos);

      encodedImage = Base64.encode(baos.toByteArray());

    } catch (Exception e) {
      e.printStackTrace();
      System.out.println("Some problem has occurred. Please try again");
    }
    return encodedImage;


  }

  /*
   * public ModelAndView getImageById(byte barr []) {
   * 
   * String str = "imagepath+filename"; byte[] arr = str.getBytes(); InputStream is = null;
   * BufferedReader bfReader = null; try {
   * 
   * 
   * 
   * is = new ByteArrayInputStream(barr); bfReader = new BufferedReader(new InputStreamReader(is));
   * String temp = null; while((temp = bfReader.readLine()) != null){ System.out.println(temp); }
   * BufferedImage image = is.read(bfReader); String encodedImage = Base64.encode(barr);
   * 
   * } catch (IOException e) { e.printStackTrace(); } finally { try{ if(is != null) is.close(); }
   * catch (Exception ex){
   * 
   * } } try { String encodedImage = Base64.encode(barr.toByteArray()); BufferedImage image =
   * barr.read(new File("icon.png")); } catch (IOException e) { // TODO Auto-generated catch block
   * e.printStackTrace(); } return new ModelAndView("design");
   * 
   * 
   * }
   */
}
