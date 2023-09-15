package com.kwce.dao;

import java.util.List;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kwce.domain.ApplistVO;
import com.kwce.domain.LectureVO;

@Repository
public class LectureDAOImpl implements LectureDAO{

	@Autowired
	private SqlSession session;
	private static String namespace="com.kwce.mapper.LectureMapper";
	

	@Override
	public List<LectureVO> list() throws Exception {
		return session.selectList(namespace+".list");
	}
	@Override
	public LectureVO read(String sno) throws Exception { 
		return session.selectOne(namespace+".read",sno);
	}
	@Override
	public void apply(ApplistVO app) throws Exception {
		session.insert(namespace+".apply",app);		
	}
	@Override
	public void updateApply(String sno) throws Exception { 
		session.update(namespace+".updateApply",sno);
	}
	@Override
	public void cancel(String subj) throws Exception {
		session.delete(namespace+".cancel",subj);
	}
	@Override
	public void updateCancel(String sno) throws Exception{
		session.update(namespace+".updateCancel",sno);
	}
}