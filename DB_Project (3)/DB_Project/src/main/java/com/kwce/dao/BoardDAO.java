package com.kwce.dao;
import java.util.List;
import com.kwce.domain.Criteria;
import com.kwce.domain.SearchCriteria;
import com.kwce.domain.StudentVO;
import com.kwce.domain.BoardVO;
import com.kwce.domain.AskVO;
public interface BoardDAO {
	public void create(BoardVO vo) throws Exception;
	
	public BoardVO read(int bno) throws Exception;
	
	public void update(BoardVO vo) throws Exception;
	
	public void delete(int bno)throws Exception;
	void updateViewCnt(int bno) throws Exception;
	
	public List<BoardVO> listAll(int id)throws Exception;
	
	public List<BoardVO> listSearch(SearchCriteria cri)throws Exception;
	public int listSearchCount(SearchCriteria cri)throws Exception;
	
	public List<BoardVO> listPage(int page) throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	public int countPaging(Criteria cri) throws Exception;
	//////////////////////////
	public void askcreate(AskVO vo) throws Exception;
	public List<AskVO> asklistAll()throws Exception;

	public StudentVO getid(StudentVO vo)throws Exception;

	public List<BoardVO> noticelist(SearchCriteria cri) throws Exception;

	
}
