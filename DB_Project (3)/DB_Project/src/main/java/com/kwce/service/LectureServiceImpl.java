package com.kwce.service;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kwce.dao.LectureDAO;
import com.kwce.domain.ApplistVO;
import com.kwce.domain.LectureVO;

@Service
public class LectureServiceImpl implements LectureService{
	
	@Autowired
	private LectureDAO dao;
	

	@Override
	public List<LectureVO>list() throws Exception{
		return dao.list();
	}
	@Override
	public LectureVO read(String sno) throws Exception{
		return dao.read(sno);
	}
	public void apply(ApplistVO app)throws Exception
	{
		dao.updateApply(app.getSubj());
		dao.apply(app);
	}
	public void cancel(String subj)throws Exception{
		dao.updateCancel(subj);
		dao.cancel(subj);
	}
}
