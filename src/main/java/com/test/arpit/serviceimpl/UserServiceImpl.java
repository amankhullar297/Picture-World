package com.test.arpit.serviceimpl;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.test.arpit.dao.UserDao;
import com.test.arpit.model.User;
import com.test.arpit.service.UserService;

/**
 * @author Arpit gupta
 *
 */
@Service
public class UserServiceImpl implements UserService {
	/**
	 * Attaching (Auto-wiring) the UserDao as userdao.
	 */
	@Autowired
	private UserDao userdao;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#addUser(com.test.arpit.model.User)
	 */
	@Override
	public int addUser(User user) throws IOException {
		Integer emailCount = Integer.parseInt(userdao.getEmailCount(user));
		if (emailCount > 0) {
			return 201;
		} else {
			userdao.addUser(user);
			return 200;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.test.arpit.service.UserService#validateLogin(com.test.arpit.model.User)
	 */
	@Override
	public Integer validateLogin(User user) {
		int status = userdao.validateLogin(user);
		String role = userdao.getRole(user);
		if (status > 0 && (role.equals("admin")||role.equals("user"))) {
			return 200;
		} else {
			return 201;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.test.arpit.service.UserService#getIdForSession(com.test.arpit.model.User)
	 */
	@Override
	public String getIdForSession(User user) {
		return userdao.getIdForSession(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getUserData(java.lang.String)
	 */
	@Override
	public Object getUserData(String string) {
		return userdao.getDataForSession(string);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getTeacherCount()
	 */
	@Override
	public int getTeacherCount() {
		return userdao.getTeacherCount();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getStudentCount()
	 */
	@Override
	public int getStudentCount() {
		return userdao.getStudentCount();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getTotalCount()
	 */
	@Override
	public int getTotalCount() {
		return userdao.getTotalCount();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getName(java.lang.String)
	 */
	@Override
	public String getName(String email) {
		return userdao.getName(email);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getUserTable()
	 */
	@Override
	public List<Map<String, Object>> getUserTable() {
		return userdao.getUserTable();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getTeachersTable()
	 */
	@Override
	public List<Map<String, Object>> getTeachersTable() {
		return userdao.getTeachersTable();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getStudentsTable()
	 */
	@Override
	public List<Map<String, Object>> getStudentsTable() {
		return userdao.getStudentsTable();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getStuPercent()
	 */
	@Override
	public List<String> getStuPercent() {
		return userdao.getStuPercent();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#stuName()
	 */
	@Override
	public List<String> stuName() {
		return userdao.stuName();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getPageCount()
	 */
	@Override
	public float getPageCount() {
		float a = userdao.getPageCount();
		float b = (float) Math.ceil(a / 5);
		return b;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getDataForPagination(int, int)
	 */
	@Override
	public Object getDataForPagination(int page_id, int total) {
		return userdao.getDataForPagination(page_id, total);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#deleteUser(com.test.arpit.model.User)
	 */
	@Override
	public int deleteUser(User user) {

		return userdao.delete(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.test.arpit.service.UserService#getAdminAddress()
	 */
	@Override
	public String getAdminAddress() {
		return userdao.getAdminAddress();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.test.arpit.service.UserService#editProfile(com.test.arpit.model.User,
	 * java.lang.Integer)
	 */
	@Override
	public int editProfile(User user, Integer id) {
		int updateStatus = userdao.editProfile(user, id);
		if (updateStatus > 0) {
			return 200;
		} else {
			return 201;
		}
	}
}
