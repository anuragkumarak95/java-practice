package org.DAO.Spring.DAOServices;

import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;


public class JdbcDAOimplementer extends SimpleJdbcDaoSupport{


	public int getUserCount(){
		return this.getJdbcTemplate().queryForInt("select count(*) from spring_dao");
		//we use getJdbcTemplate() method to get the pre-cooked jdbctemplate connected to dataSource automatically.
	}

}