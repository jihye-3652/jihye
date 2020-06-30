package org.edu.dao;

import java.util.List;

import org.edu.vo.MemberVO;

public interface IF_MemberDAO {
			public void insertMember(MemberVO membervo) throws Exception;
			public List<MemberVO> selectMember() throws Exception;
			public void updateMember(MemberVO memverVO) throws Exception;
			public void deleteMember(String user_id) throws Exception;
			public MemberVO viewMember(String user_id) throws Exception;
			
			
}
