package com.kwce.service;
import java.util.List;

import com.kwce.domain.Criteria;
import com.kwce.domain.LectureVO;
import com.kwce.domain.SearchCriteria;
import com.kwce.domain.StudentVO;
import com.kwce.domain.AskVO;
import com.kwce.domain.BoardVO;

public interface BoardService {
	public void regist(BoardVO board)throws Exception;
	public BoardVO read(int bno) throws Exception;
	public void modify(BoardVO board)throws Exception;
	public void remove(int bno)throws Exception;
	
	
	public List<BoardVO>listAll(int id)throws Exception;
	public List<BoardVO> listCriteria(Criteria cri) throws Exception; // 페이징 계산용
	public int listCountCriteria(Criteria cri) throws Exception; // DB의 데이터 카운팅을 위한 메소드
	
	
	public List<BoardVO> listSearchCriteria(SearchCriteria cri)  throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	
	public List<BoardVO> noticelist(SearchCriteria cri)  throws Exception;
	
	
	public StudentVO getid(StudentVO vo)throws Exception;
	
	
	public void askregist(AskVO board)throws Exception;
	public List<AskVO>asklistAll()throws Exception;
}
