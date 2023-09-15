package com.kwce.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.kwce.service.ScheduleService;
import com.kwce.domain.StudentVO;
import com.kwce.domain.PageMaker;
import com.kwce.domain.Rate;

@Controller
@RequestMapping("/schedule/*")
public class ScheduleController {
   
   private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
   @Autowired
   private ScheduleService service;
   
   
   @RequestMapping(value = "/read", method = RequestMethod.GET)
   public String read( Model model, HttpServletRequest req) throws Exception {
      logger.info("schedule page get......");
      HttpSession session = req.getSession();
      StudentVO stu = (StudentVO) session.getAttribute("student"); 
      model.addAttribute("list", service.listsearch(stu.getId())); 
      
      return "schedule/read";
   }
   
   //학점그래프
   @RequestMapping(value = "/grade", method = RequestMethod.GET)
   public String userinfo( Model model, HttpServletRequest req) throws Exception {
      logger.info("grade page get......");
      HttpSession session = req.getSession();
      StudentVO stu = (StudentVO) session.getAttribute("student"); 
      model.addAttribute("userinfo", service.userinfo(stu.getId())); 
      model.addAttribute("major", service.major(stu.getId())); 
     model.addAttribute("culture", service.culture(stu.getId())); 
      return "schedule/grade";
   }
   
   
   //개인정보조회
   @RequestMapping(value = "/info", method = RequestMethod.GET)
   public String info( Model model, HttpServletRequest req) throws Exception {
      logger.info("info page get......");
      HttpSession session = req.getSession();
      StudentVO stu = (StudentVO) session.getAttribute("student"); 
      model.addAttribute("info", service.info(stu.getId())); 

      return "schedule/info";
   }
   
	
}