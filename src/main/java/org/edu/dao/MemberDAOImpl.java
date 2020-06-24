package org.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.edu.vo.MemberVO;


public class MemberDAOImpl implements IF_MemberDAO {
	private String mapperQuery = "org.edu.dao.IF_MemberDAO";	
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insertMember(MemberVO memberVO) throws Exception {
		sqlSession.insert(mapperQuery + ".insertMember", memberVO);
		
	}

	@Override
	public List<MemberVO> selectMember() throws Exception {
		sqlSession.selectList(mapperQuery + ".selelctMember");
		return null;
	}

	@Override
	public void updateMember(String user_id) throws Exception {
		sqlSession.update(mapperQuery + ".updateMember", user_id);
		
	}

	@Override
	public void deleteMember(String user_id) throws Exception {
		sqlSession.delete(mapperQuery +".deleteMember", user_id);
		
	}

}
