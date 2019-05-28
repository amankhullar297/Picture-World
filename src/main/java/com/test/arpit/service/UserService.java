package com.test.arpit.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.test.arpit.model.User;

/**
 * @author Arpit gupta
 *
 */
@Service
public interface UserService {

	/**
	 * @param user
	 * @return
	 * @throws IOException
	 */
	int addUser(User user) throws IOException;

	/**
	 * @param user
	 * @return
	 */
	Integer validateLogin(User user);

	/**
	 * @param user
	 * @return
	 */
	String getIdForSession(User user);

	/**
	 * @param string
	 * @return
	 */
	Object getUserData(String string);

	/**
	 * @return
	 */
	int getTeacherCount();

	/**
	 * @return
	 */
	int getStudentCount();

	/**
	 * @return
	 */
	int getTotalCount();

	/**
	 * @param email
	 * @return
	 */
	String getName(String email);
 
	/**
	 * @return
	 */
	List<Map<String, Object>> getUserTable();

	/**
	 * @return
	 */
	List<Map<String, Object>> getTeachersTable();

	/**
	 * @return
	 */
	List<Map<String, Object>> getStudentsTable();

	/**
	 * @return
	 */
	List<String> getStuPercent();


	/**
	 * @return
	 */
	List<String> stuName();

	/**
	 * @return
	 */
	float getPageCount();

	/**
	 * @param page_id
	 * @param total
	 * @return
	 */
	Object getDataForPagination(int page_id, int total);

	/**
	 * @param user
	 * @return
	 */
	int deleteUser(User user);

	/**
	 * @return
	 */
	String getAdminAddress();

	/**
	 * @param user
	 * @param id
	 * @return
	 */
	int editProfile(User user, Integer id);

}
