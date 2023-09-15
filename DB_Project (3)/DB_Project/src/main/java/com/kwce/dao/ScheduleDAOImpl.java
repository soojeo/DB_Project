package com.kwce.dao;
import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kwce.domain.MemberVO;
import com.kwce.domain.StudentVO;
import com.kwce.domain.SubjectVO;
import com.kwce.domain.ApplistVO;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO {

	@Autowired
	private SqlSession session;
	private static String namespace="com.kwce.mapper.ScheduleMapper";

	@Override
	public List<SubjectVO> listsearch(int id) throws Exception {
		return session.selectList(namespace+".listsearch",id);
	}

	@Override
	public List<ApplistVO> userinfo(int id) throws Exception {
		return session.selectList(namespace+".userinfo",id);
	}
	@Override
	public List<ApplistVO> major(int id) throws Exception {
		return session.selectList(namespace+".major",id);
	}
	@Override
	public List<ApplistVO> culture(int id) throws Exception {
		return session.selectList(namespace+".culture",id);
	}

	@Override
	public List<StudentVO> info(int id) throws Exception {
		return session.selectList(namespace+".info",id);
	}

}