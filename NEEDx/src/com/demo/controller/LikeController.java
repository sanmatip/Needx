package com.demo.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.demo.service.LikeService;

@Controller
public class LikeController {
  @Autowired
  private LikeService likeService;

  @RequestMapping(value = "/like", method = RequestMethod.GET)
  public ModelAndView addLike(@RequestParam("custId") Integer custId,
      @RequestParam("postId") Integer postId, HttpSession session) throws Exception {
    boolean flag = likeService.checkLiked(custId, postId);
    if (flag == true) {
      System.out.println("already liked");
    } else {
      likeService.insertLike(custId, postId);
    }
    session.setAttribute("flag", flag);
    return new ModelAndView("redirect:/viewPost");
  }

}
