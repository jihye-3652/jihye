package org.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_MemberDAO;
import org.edu.vo.MemberVO;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements IF_MemberService {

	@Inject
	private IF_MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberVO memverVO) throws Exception {
		memberDAO.insertMember(memverVO);
		
	}

	@Override
	public List<MemberVO> selectMember() throws Exception {
		return memberDAO.selectMember();
		
	}

	@Override
	public void updateMember(MemberVO memverVO) throws Exception {
		memberDAO.updateMember(memverVO);
		
	}

	@Override
	public void deleteMember(String user_id) throws Exception {
		memberDAO.deleteMember(user_id);
		
	}

}
