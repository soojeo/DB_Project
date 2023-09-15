package com.kwce.dao;
import com.kwce.domain.StudentVO;


public interface MemberDAO{
   
   //회원가입
   public void register (StudentVO vo) throws Exception;

   //로그인
   public StudentVO login(StudentVO vo) throws Exception;
}