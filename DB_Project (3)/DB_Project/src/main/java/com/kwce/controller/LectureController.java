package com.kwce.controller;

import org.slf4j.Logger;



import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kwce.domain.LectureVO;
import com.kwce.domain.ApplistVO;
import com.kwce.domain.BoardVO;
import com.kwce.service.LectureService;

@Controller
@RequestMapping("/lecture/*")
public class LectureController {
   
   private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
   @Autowired
   private LectureService service;
   
   @RequestMapping(value="/list", method = RequestMethod.GET)
   public void list( Model model) throws Exception{
      logger.info("list page get....");
      model.addAttribute("list", service.list());
   }
   @RequestMapping(value = "/read", method = RequestMethod.GET)
   public void read(@RequestParam("sno")String sno, Model model) throws Exception{
      logger.info("read page get....");
      model.addAttribute(service.read(sno));
   }
   @RequestMapping(value="/read", method=RequestMethod.POST)
   public String apply(ApplistVO app) throws Exception{
      service.apply(app);
      return "redirect:/lecture/list";
   }
   
   @RequestMapping(value="/cancel", method=RequestMethod.POST)
   public String remove(@RequestParam("sno")String sno,RedirectAttributes rttr) throws Exception{
      service.cancel(sno);
      logger.info("remove page post......");
      rttr.addFlashAttribute("msg", "SUCCESS");
      return "redirect:/lecture/list";
   }
}