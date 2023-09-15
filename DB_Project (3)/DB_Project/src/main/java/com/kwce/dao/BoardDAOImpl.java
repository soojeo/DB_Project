package com.kwce.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kwce.domain.AskVO;
import com.kwce.domain.BoardVO;
import com.kwce.domain.Criteria;
import com.kwce.domain.LectureVO;
import com.kwce.domain.SearchCriteria;
import com.kwce.domain.StudentVO;
@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession session;
	private static String namespace="com.kwce.mapper.BoardMapper";
	
	@Override
	public void create(BoardVO vo) throws Exception {
		session.insert(namespace+".create",vo);		
	}

	@Override
	public BoardVO read(int bno) throws Exception { 
		return session.selectOne(namespace+".read",bno);
	}
	@Override
	public void updateViewCnt(int bno) throws Exception { 
		session.update(namespace+".updateViewCnt",bno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace+".update",vo);
	}

	
	
	@Override
	public void delete(int bno) throws Exception {
		session.delete(namespace+".delete",bno);
		
	}


	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
			}
		page = (page - 1) * 10;
		return session.selectList(namespace + ".listPage", page);
	}
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listCriteria", cri);
	}
	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".countPaging", cri);
	}
	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {
		System.out.println("dao");
		return session.selectList(namespace + ".listSearch", cri);
	}
	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public List<BoardVO> noticelist(SearchCriteria cri) throws Exception {
		System.out.println("dao");
		return session.selectList(namespace + ".noticelist", cri);
	}
	
	//////////////////////////////////////
	@Override
	public void askcreate(AskVO vo) throws Exception {
		session.insert("com.kwce.mapper.AskMapper"+".askcreate",vo);	
		
	}

	@Override
	public List<AskVO> asklistAll() throws Exception {
		return session.selectList("com.kwce.mapper.AskMapper"+".asklistAll");
	}

	@Override
	public StudentVO getid(StudentVO vo) {
	    return session.selectOne(namespace+ ".getid",vo);
	}

	@Override
	public List<BoardVO> listAll(int id) throws Exception {
		return session.selectList(namespace+".noticelist", id);
	}

	
}