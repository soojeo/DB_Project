package com.kwce.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import com.kwce.domain.StudentVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
   
   @Autowired
   private SqlSession session;
   
   @Inject SqlSession sql;
   // 회원가입
   @Override
   public void register(StudentVO vo) throws Exception {
      // TODO Auto-generated method stub
      session.insert("MemberMapper.register",vo);//
   }//
   @Override
   public StudentVO login(StudentVO vo) throws Exception {
      // TODO Auto-generated method stub
      return session.selectOne("MemberMapper.login",vo);
   }
}
