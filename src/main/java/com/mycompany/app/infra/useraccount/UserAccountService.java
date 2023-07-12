package com.mycompany.app.infra.useraccount;

import java.util.List;

public interface UserAccountService {
	

	List<UserAccount> userAll(UserAccountVo vo);
	
	public UserAccount userOne(UserAccountVo vo);

	public int selectOneCount(UserAccountVo vo);
	
	public int userJoin(UserAccount dto);
	
	public int userUpdate(UserAccount dto);
	
	public int userUelete(UserAccount dto);
	
	public int userCut(UserAccount dto);
	
	public UserAccount loginUserOne(UserAccountVo vo);
}
