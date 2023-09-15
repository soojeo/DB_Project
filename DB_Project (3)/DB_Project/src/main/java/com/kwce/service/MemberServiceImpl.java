package com.kwce.service;

import com.kwce.domain.StudentVO;
import javax.inject.Inject;
import com.kwce.dao.MemberDAO;
import org.springframework.stereotype.Service;



@Service
public class MemberServiceImpl implements MemberService {
   
   @Inject MemberDAO dao;
   
   @Override
   public void register(StudentVO vo) throws Exception {
      
      dao.register(vo);
      
   }

   @Override
   public StudentVO login(StudentVO vo) throws Exception{
      return dao.login(vo);
   }
   
}