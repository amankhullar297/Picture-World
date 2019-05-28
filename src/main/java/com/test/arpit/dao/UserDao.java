package com.test.arpit.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import com.test.arpit.model.User;

/**
 * @author Arpit gupta
 *
 */
@Repository
public interface UserDao {

	/**
	 * @param user
	 * @return
	 */
	int addUser(User user);

	/**
	 * @param user
	 * @return
	 */
	String getEmailCount(User user);

	/**
	 * @param user
	 * @return
	 */
	Integer validateLogin(User user);

	/**
	 * @param user
	 * @return
	 */
	String getRole(User user);

	/**
	 * @param user
	 * @return
	 */
	String getIdForSession(User user);

	/**
	 * @param string
	 * @return
	 */
	Object getDataForSession(String string);

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
	int delete(User user);

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
