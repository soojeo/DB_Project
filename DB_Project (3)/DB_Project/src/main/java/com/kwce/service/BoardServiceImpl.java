package com.kwce.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kwce.dao.BoardDAO;
import com.kwce.domain.AskVO;
import com.kwce.domain.BoardVO;
import com.kwce.domain.Criteria;
import com.kwce.domain.SearchCriteria;
import com.kwce.domain.StudentVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO dao;
	
	@Override
	public void regist(BoardVO board) throws Exception{
		dao.create(board);
	}
	@Override
	public BoardVO read(int bno) throws Exception{
		dao.updateViewCnt(bno);
		return dao.read(bno);
	}

	@Override
	public void modify(BoardVO board) throws Exception{
		dao.update(board);
	}
	@Override
	public void remove(int bno) throws Exception{
		dao.delete(bno);
	}
	@Override
	public List<BoardVO> listAll(int id) throws Exception{
		return dao.listAll(id);
	}
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}
	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}
	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri)  throws Exception {
		System.out.println("service");
		return dao.listSearch(cri);
	}
	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}
	////////////////////////////////////////
	@Override
	public void askregist(AskVO board) throws Exception {
		dao.askcreate(board);
		
	}
	@Override
	public List<AskVO> asklistAll() throws Exception {
		return dao.asklistAll();
	}
	@Override
	public StudentVO getid(StudentVO vo)throws Exception{
		return dao.getid(vo);
	}
	@Override
	public List<BoardVO> noticelist(SearchCriteria cri) throws Exception {
		return dao.noticelist(cri);
	}
	
	
	
}
