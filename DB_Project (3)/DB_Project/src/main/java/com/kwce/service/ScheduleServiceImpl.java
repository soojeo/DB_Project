package com.kwce.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kwce.dao.ScheduleDAO;
import com.kwce.domain.StudentVO;
import com.kwce.domain.SubjectVO;
import com.kwce.domain.ApplistVO;
@Service
public class ScheduleServiceImpl implements ScheduleService{
	@Autowired
	private ScheduleDAO dao;
	
	@Override
	public List<SubjectVO> listsearch(int id) throws Exception {
		return dao.listsearch(id);
	}

	@Override
	public List<ApplistVO> userinfo(int id) throws Exception {
		
		return dao.userinfo(id);
	}
	@Override
	public List<ApplistVO> major(int id) throws Exception {
		
		return dao.major(id);
	}
	@Override
	public List<ApplistVO> culture(int id) throws Exception {
		
		return dao.culture(id);
	}

	@Override
	public List<StudentVO> info(int id) throws Exception {
		return dao.info(id);
	}
}