package com.kwce.service;
import java.util.List;

import com.kwce.domain.ApplistVO;
import com.kwce.domain.LectureVO;

public interface LectureService {

	public List<LectureVO>list()throws Exception;
	public LectureVO read(String sno) throws Exception;
	public void apply(ApplistVO app)throws Exception;
	public void cancel(String subj)throws Exception;
}
