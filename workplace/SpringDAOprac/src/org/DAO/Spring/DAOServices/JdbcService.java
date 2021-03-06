package org.DAO.Spring.DAOServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.DAO.Spring.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JdbcService {
	
	DataSource dataSource; 
	//using Spring provided DataSource that is defined in spring.xml as a bean with all the connection properties to reduce the boilerplate codes.
	
	JdbcTemplate jdbcTemplate = new JdbcTemplate();
	// here JdbcTemplaet of springframework is used for the purpose of reducing the boilerplate codes as much as possible, this class self executes all the fetching and executing of query and return a specific result as the developer ask it to.
	
	NamedParameterJdbcTemplate namedParamJdbcTemplate;
	// as jdbcTemplate doesnt support named parameters in sql statements, NamedParameterJdbcTemplate is used instead which is child of JdbcTemplate with addition support to named parameters.
	
	SimpleJdbcTemplate simpleJdbcTemplate;
	// if you want to use the features oof both namedparams and jdbcTemplate, we use SimpleJdbcTemplate that has both implementations and some add-on featurs for java 5(eg - AutoBoxing..??find this.).
	public DataSource getDataSource() {
		return dataSource;
	}
	
	@Autowired //we autowired the setter as we want the setter to run as the bean initializes at any instance.
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
		//  here as we know that the jdbcTemplate need the dataSource as it is implemented, so the dadaSource is set here for it as the dataSource is Autowired implemented.
		//it takes dataSource itself as a constructor parameter and executes a connection.
		this.namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
		//namedparamJdbcTemplate gets the datasource in the same way as jdbcTemplate..
		this.simpleJdbcTemplate = new SimpleJdbcTemplate(dataSource);
		//SimpleJdbcTemplate gets the datasource in the same way as jdbcTemplate..
		this.dataSource = dataSource;
	}

	
	public User getUserByID(int id){
		Connection con = null;
		User user = null;
		try{
		con = dataSource.getConnection(); //using dataSource to create connections.
		PreparedStatement ps = con.prepareStatement("select * from spring_dao where u_id=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		rs.next();
		user = new User(id,rs.getString("u_name"));
		rs.close();
		ps.close();
		}catch(Exception e){throw new RuntimeException(e);}
		finally{try {
			con.close();
		} catch (SQLException e) {}
		
		}
		return user;
	}
	
	
	public String getUser_usingJDBCtemp(int id){
		return (String) jdbcTemplate.queryForObject("select u_name from spring_dao where u_id=? ", new Object[] {id}, String.class);
		//now here we used another JdbcTemplate constructor to execute query and give back an object , also we provided the args of the statement, it will fill that up,
		//and then we mentioned the object true class to which we want it to be casted.
		//eclipse isnt casting it properly, so i casted it myself too. :)
	}
	
	public int userCount(){
		
		return jdbcTemplate.queryForInt("select count(*) from spring_dao"); //here we used the jdbcTemplate to execute our query and return the value in the form of a Int, 
		//after bein implemented when the dataSource is gotten(getDataSource();)
	}

	public User getUser_ObjectMapped(int uid){
		return (User) jdbcTemplate.queryForObject("select u_name from spring_dao where u_id=? ", new Object[] {1},new UserMapper());
		//this overloaded jdbcTemplate method is used to return an custom object as the result of the statement execution.
	}
	
	@SuppressWarnings("unchecked")
	public List<User> getAllUsers(){
		return (List<User>) jdbcTemplate.query("select * from spring_dao", new UserMapper());
	}
	
	
	// writing to a table we use update method of the jdbcTemplate which has oberloaded args but what we use here will take a sql query string and object... of args to put in that sql statement.
	public void insertUser(User user){
		jdbcTemplate.update("insert into spring_dao ( u_id, u_name) values ( ? , ? )", new Object[] {user.getUid(),user.getUname()});
		System.out.println("user inserted.");
	}
	
	//below method shows the use of jdbcTemplate execute method, used for execyting DLL queries.
	public void createTable(){
		jdbcTemplate.execute("create table TABLE_NAME (Firstcol varchar(255), Secondcol varchar(255))");
	}
	
	public void insertUser_namedparam(User user){
		String sql = "insert into spring_dao ( u_id, u_name) values ( :id , :name )";
		SqlParameterSource namedparams = new MapSqlParameterSource("id",user.getUid()) 
											.addValue("name",user.getUname());
		// the above SqlParameterSource is an interface of MapSqlParameterSource used here to provide the mapping key and value for sql nameparametered params.
		
		namedParamJdbcTemplate.update(sql, namedparams);
		//here we provide statement(having named params) and the created sqlparametersource as the mapping for those params.
	}
	
	
	/* RowMapper here */
	private static final class UserMapper implements RowMapper{
		// to create an JdbcTemplate that returns an object as an returntype, we need to implement RowMapper and use the implemented classes maprow() as to map all the rows of our table to the object member variables.
		
		@Override
		public User mapRow(ResultSet resultset, int rownum) throws SQLException {
		// TODO implement RowMapper<User> getting an error ???
			User user = new User();
			user.setUid(resultset.getInt("u_id"));
			user.setUname(resultset.getString("u_name"));
			return user;
		}
		
	}
}
