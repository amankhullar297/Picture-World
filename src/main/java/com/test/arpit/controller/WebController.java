package com.test.arpit.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.test.arpit.dao.UserDao;
import com.test.arpit.model.User;
import com.test.arpit.service.UserService;

/**
 * @author Arpit gupta
 *
 */
@Controller
public class WebController {

	/**
	 * Attaching (Auto-wiring) the UserService as service.
	 */
	@Autowired
	private UserService userservice;

	@Autowired
	private UserDao userdao;

	/**
	 * @return sign up page.
	 */
	@GetMapping("/sign-up")
	public String signUp() {
		return "sign-up";
	}

	/**
	 * @param user
	 * @param r
	 * @return if condition is true the return login page else redirected to sign up
	 *         page.
	 * @throws IOException
	 */
	@PostMapping("/sign-up")
	public String showSignUp(User user, RedirectAttributes r) throws IOException {
		int addStatus = userservice.addUser(user);
		if (addStatus == 200) {
			return "redirect:login";
		} else {
			r.addFlashAttribute("existedEmail", "Invalid Email");
			return "redirect:sign-up";
		}
	}

	/**
	 * @return login page.
	 */
	@GetMapping("/login")
	public String showLoginPage() {
		return "/login";
	}

	/**
	 * @param user
	 * @param session
	 * @param r
	 * @param m
	 * @return if conditions are true the return home page else redirected to login.
	 */
	@PostMapping("/login")
	public String validateLogin(User user, HttpSession session, RedirectAttributes r, Model m) {
		int status = userservice.validateLogin(user);
		String role = userdao.getRole(user);
		if (status == 200 && role.equals("admin")) {
			session.setAttribute("sessionStatus", "true");
			session.setAttribute("sessionId", userservice.getIdForSession(user));
			session.setAttribute("sessionEmail", user.getEmail());
			session.setAttribute("sessionName", userservice.getName(user.getEmail()));
			m.addAttribute("totalCount", userservice.getTotalCount());
			m.addAttribute("teacherCount", userservice.getTeacherCount());
			m.addAttribute("studentCount", userservice.getStudentCount());
			m.addAttribute("UserName", userservice.getName(user.getEmail()));
			session.setAttribute("sessionName", userservice.getName(user.getEmail()));
			return "adminHome";
		} else if (status == 200 && role.equals("user")) {
			session.setAttribute("sessionStatus", "true");
			session.setAttribute("sessionId", userservice.getIdForSession(user));
			session.setAttribute("sessionEmail", user.getEmail());
			session.setAttribute("sessionName", userservice.getName(user.getEmail()));
			m.addAttribute("totalCount", userservice.getTotalCount());
			m.addAttribute("teacherCount", userservice.getTeacherCount());
			m.addAttribute("studentCount", userservice.getStudentCount());
			m.addAttribute("UserName", userservice.getName(user.getEmail()));
			session.setAttribute("sessionName", userservice.getName(user.getEmail()));
			return "home";
		} else {
			r.addFlashAttribute("invalidLogin", "Invalid Credentials");
			return "redirect:login";
		}
	}

	/**
	 * @param m
	 * @param session
	 * @return home page with totalCount of users,teachers and students.
	 */
	@GetMapping("/home")
	public String showHome(Model m, HttpSession session) {
		m.addAttribute("totalCount", userservice.getTotalCount());
		m.addAttribute("teacherCount", userservice.getTeacherCount());
		m.addAttribute("studentCount", userservice.getStudentCount());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		return "home";
	}

	/**
	 * @return List of percentage of each student for ajax to make a
	 *         student-percentage graph.
	 */
	@GetMapping("/stupercent")
	@ResponseBody
	public List<String> getPercent() {
		return userservice.getStuPercent();
	}

	/**
	 * @return List of each student name for ajax to make a student-percentage
	 *         graph.
	 */
	@GetMapping("/stuname")
	@ResponseBody
	public List<String> stuname() {
		return userservice.stuName();
	}

	/**
	 * @param user
	 * @param m
	 * @return teacherGraph page to delete the teacher details from database and
	 *         show the grid view of teacher details.
	 */
	@GetMapping("/delete")
	public String delete(User user, Model m) {
		userservice.deleteUser(user);
		return "redirect:/teacherGraph/1";
	}

	/**
	 * @param m
	 * @param session
	 * @return show the data-table of total users in database.
	 */
	@GetMapping("/totalUserTable")
	public String totalUserTable(Model m, HttpSession session) {
		m.addAttribute("totlaUserData", userservice.getUserTable());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		return "/totalUserTable";
	}

	/**
	 * @param m
	 * @param session
	 * @return show the data-table of each teachers details.
	 */
	@GetMapping("/totalStudentTable")
	public String totalStudentTable(Model m, HttpSession session) {
		m.addAttribute("totalStudentTable", userservice.getTeachersTable());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		return "/totalStudentTable";
	}

	/**
	 * @param m
	 * @param session
	 * @return show the data-table of each Student details.
	 */
	@GetMapping("/totalCategoryTable")
	public String totalCategoryTable(Model m, HttpSession session) {
		m.addAttribute("totalCategoryTable", userservice.getStudentsTable());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		return "/totalCategoryTable";
	}

	/**
	 * @param m
	 * @param page_id
	 * @param session
	 * @return the teacherGrapgh page with pagination shown as grid view of
	 *         teachers.
	 */
	@GetMapping("/teacherGraph")
	public String teacherGraph1(Model m, HttpSession session) {
		m.addAttribute("totalCategoryTable", userservice.getStudentsTable());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		return "/teacherGraph";
	}

	/**
	 * @param m
	 * @param session
	 * @return the studentGraph page that shows the list view of total student in
	 *         database.
	 */
	@GetMapping("/studentGraph")
	public String studentGraph(Model m, HttpSession session) {
		m.addAttribute("totalCategoryTable", userservice.getStudentsTable());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		return "/studentGraph";
	}

	/**
	 * @param session
	 * @param m
	 * @return the bar1 page that shows the teachers-salary bar graph.
	 */
	@GetMapping("/bar1")
	public String showBar(HttpSession session, Model m) {
		m.addAttribute("totalCategoryTable", userservice.getStudentsTable());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		return "bar1";
	}

	/**
	 * @param m
	 * @param session
	 * @return the map page that show the admins location with address matched from
	 *         database.
	 */
	@GetMapping("/map")
	public String getLocation(Model m, HttpSession session) {
		m.addAttribute("totalCategoryTable", userservice.getStudentsTable());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		m.addAttribute("address", userservice.getAdminAddress());
		return "map";
	}

	/**
	 * @param session
	 * @param m
	 * @return the edit page.
	 */
	@GetMapping("/edit")
	public String showEdit(HttpSession session, Model m) {
		m.addAttribute("totalCategoryTable", userservice.getStudentsTable());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		return "edit";
	}

	/**
	 * @param user
	 * @param session
	 * @param m
	 * @return the home page after editing the admins details only.
	 */
	@PostMapping("/edit")
	public String editProfile(User user, HttpSession session, Model m) {
		Integer id = Integer.parseInt((String) session.getAttribute("sessionId"));
		userservice.editProfile(user, id);
		m.addAttribute("updateStatus", "Successfully updated");
		return "home";
	}

	@GetMapping("/userHome")
	public String userHome(HttpSession session, Model m) {
		m.addAttribute("UserName", session.getAttribute("sessionName"));

		return "studentHome";
	}

	@GetMapping("/addLocation")
	public String addLocation(HttpSession session, Model m) {
		m.addAttribute("UserName", session.getAttribute("sessionName"));

		return "addLocation";
	}

	@GetMapping("/adminAddLocation")
	public String adminAddLocation(HttpSession session, Model m) {
		m.addAttribute("UserName", session.getAttribute("sessionName"));

		return "adminAddLocation";
	}

	@GetMapping("/adminHome")
	public String stHome(HttpSession session, Model m) {

		m.addAttribute("totalCount", userservice.getTotalCount());
		m.addAttribute("teacherCount", userservice.getTeacherCount());
		m.addAttribute("studentCount", userservice.getStudentCount());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		m.addAttribute("UserEmail", session.getAttribute("sessionEmail"));

		return "adminHome";
	}

	@PostMapping("/addCategory")
	public String addCategory(HttpSession session, Model m) {
		m.addAttribute("totalCount", userservice.getTotalCount());
		m.addAttribute("teacherCount", userservice.getTeacherCount());
		m.addAttribute("studentCount", userservice.getStudentCount());
		m.addAttribute("UserName", session.getAttribute("sessionName"));
		m.addAttribute("UserEmail", session.getAttribute("sessionEmail"));
		return "adminHome";

	}

}
