package com.kwce.service;

import com.kwce.domain.StudentVO;
import javax.inject.Inject;
import com.kwce.dao.MemberDAO;
import org.springframework.stereotype.Service;

public interface MemberService {

   public void register(StudentVO vo) throws Exception;

   public StudentVO login(StudentVO vo)throws Exception;
   
}