package com.mycompany.app.infra.useraccount;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserAccountServiceImpl implements UserAccountService {
	
	@Autowired
	UserAccountDao dao;
	
	
	@Override
	public List<UserAccount> userAll(UserAccountVo vo) {
		return dao.userAll(vo);
	}

	@Override
	public UserAccount userOne(UserAccountVo vo) {
		return dao.userOne(vo);
	}

	@Override
	public int userJoin(UserAccount dto) {
		return dao.userJoin(dto);
	}

	@Override
	public int userUpdate(UserAccount dto) {
		return dao.userUpdate(dto);
	}

	@Override
	public int userUelete(UserAccount dto) {
		return dao.userUelete(dto);
	}

	@Override
	public int userCut(UserAccount dto) {
		return dao.userCut(dto);
	}

	@Override
	public int selectOneCount(UserAccountVo vo) {
		return dao.selectOneCount(vo);
	}

}
