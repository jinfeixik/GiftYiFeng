package com.qst.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qst.dao.HibernateDaoSupport1;

public class HibernateDaoSupport1Impl extends HibernateDaoSupport implements HibernateDaoSupport1{

	
	@Override
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

}
