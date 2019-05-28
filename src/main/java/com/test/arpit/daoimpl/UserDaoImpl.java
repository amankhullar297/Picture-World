package com.test.arpit.daoimpl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.test.arpit.dao.UserDao;
import com.test.arpit.model.User;

/**
 * @author Arpit gupta
 *
 */
@Repository
public class UserDaoImpl implements UserDao {
	/**
	 * Attaching (Auto-wiring) the JdbcTemplate as jdbctemplete.
	 */
	@Autowired
	private JdbcTemplate jdbctemplete;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#addUser(com.test.arpit.model.User)
	 */
	@Override
	public int addUser(User user) {
		String insert = "insert into stu_teacher_data(name,dob,email,password,role_id,country,state,city,locality,gender) VALUES(?,?,?,?,?,?,?,?,?,?)";
		return jdbctemplete.update(insert, user.getName(), user.getDob(), user.getEmail(), user.getPassword(),
				user.getRole(), user.getCountry(), user.getState(), user.getCity(), user.getLocality(),
				user.getGender());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getEmailCount(com.test.arpit.model.User)
	 */
	@Override
	public String getEmailCount(User user) {
		String emailCount = "select count(*) from stu_teacher_data where email=?";
		return jdbctemplete.queryForObject(emailCount, String.class, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#validateLogin(com.test.arpit.model.User)
	 */
	@Override
	public Integer validateLogin(User user) {
		String sql = "select count(*) from stu_teacher_data where email=? and password=?";
		return jdbctemplete.queryForObject(sql, int.class, user.getEmail(), user.getPassword());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getRole(com.test.arpit.model.User)
	 */
	@Override
	public String getRole(User user) {
		String sql = "select r.role from stu_teacher_data s left join role r on(s.role_id=r.role_id) where email=?";
		return jdbctemplete.queryForObject(sql, String.class, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getIdForSession(com.test.arpit.model.User)
	 */
	@Override
	public String getIdForSession(User user) {
		String responseId = "select id from stu_teacher_data where email=?";
		return jdbctemplete.queryForObject(responseId, String.class, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getDataForSession(java.lang.String)
	 */
	@Override
	public Object getDataForSession(String email) {
		String sql = "select * from stu_teacher_data s left join role r on(s.role_id=r.role_id) where email=?";
		return jdbctemplete.queryForObject(sql, String.class, email);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getTeacherCount()
	 */
	@Override
	public int getTeacherCount() {
		String sql = "select count(*) from stu_teacher_data where role_id=1";
		return jdbctemplete.queryForObject(sql, int.class);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getStudentCount()
	 */
	@Override
	public int getStudentCount() {
		String sql = "select count(*) from stu_teacher_data where role_id=2";
		return jdbctemplete.queryForObject(sql, int.class);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getTotalCount()
	 */
	@Override
	public int getTotalCount() {
		String sql = "select count(*) from stu_teacher_data";
		return jdbctemplete.queryForObject(sql, int.class);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getName(java.lang.String)
	 */
	@Override
	public String getName(String email) {
		String sql = "select name from stu_teacher_data where email=?";
		return jdbctemplete.queryForObject(sql, String.class, email);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getUserTable()
	 */
	@Override
	public List<Map<String, Object>> getUserTable() {
		String sql = "select s.id,s.name,s.email,s.dob,r.role,s.country,s.state from stu_teacher_data s left join role r on(s.role_id=r.role_id)";
		return jdbctemplete.queryForList(sql);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getTeachersTable()
	 */
	@Override
	public List<Map<String, Object>> getTeachersTable() {
		String sql = "select distinct s.city from stu_teacher_data s left join role r on(s.role_id=r.role_id) where role='user'";
		return jdbctemplete.queryForList(sql);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getStudentsTable()
	 */
	@Override
	public List<Map<String, Object>> getStudentsTable() {
		String sql = "select s.id,s.name,s.email,s.dob,r.role,s.country,s.state,s.locality from stu_teacher_data s left join role r on(s.role_id=r.role_id) where role='user'";
		return jdbctemplete.queryForList(sql);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getStuPercent()
	 */
	@Override
	public List<String> getStuPercent() {
		String sql = "select percent from stu_teacher_data where role_id='2'";
		return jdbctemplete.queryForList(sql, String.class);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#stuName()
	 */
	@Override
	public List<String> stuName() {
		String sql = "select name from stu_teacher_data where role_id='2'";
		return jdbctemplete.queryForList(sql, String.class);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getPageCount()
	 */
	@Override
	public float getPageCount() {
		String sql = "select count(*) from stu_teacher_data";
		return jdbctemplete.queryForObject(sql, float.class);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getDataForPagination(int, int)
	 */
	@Override
	public Object getDataForPagination(int page_id, int total) {
		String sql = "SELECT * FROM stu_teacher_data where role_id='1' LIMIT " + (page_id - 1) + "," + total;
		return jdbctemplete.queryForList(sql);

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#delete(com.test.arpit.model.User)
	 */
	@Override
	public int delete(User user) {
		String sql = "delete from stu_teacher_data where email=? ";

		return jdbctemplete.update(sql, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#getAdminAddress()
	 */
	@Override
	public String getAdminAddress() {
		String sql = "select locality from stu_teacher_data where role_id='3'";
		return jdbctemplete.queryForObject(sql, String.class);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.dao.UserDao#editProfile(com.test.arpit.model.User,
	 * java.lang.Integer)
	 */
	@Override
	public int editProfile(User user, Integer id) {
		String sql = "update stu_teacher_data set name=?,password=?,country=?,state=?,city=?,locality=?,gender=? where id=?";
		return jdbctemplete.update(sql, user.getName(), user.getPassword(), user.getCountry(), user.getState(),
				user.getCity(), user.getLocality(), user.getGender(), id);
	}

}
