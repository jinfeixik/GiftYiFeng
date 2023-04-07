package com.qst.action;

import org.springframework.stereotype.Repository;

@Repository
public class LogoutAction extends BaseAction {
	
	public String logoutAction() {
		session.clear();
		return "success";

	}

}
