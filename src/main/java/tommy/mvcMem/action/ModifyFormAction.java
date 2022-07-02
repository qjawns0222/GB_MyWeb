package tommy.mvcMem.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tommy.mvcMem.control.ActionForward;
import tommy.mvcMem.model.StudentDAO;
import tommy.mvcMem.model.StudentVO;

public class ModifyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse rep) throws IOException {
		StudentDAO dao = StudentDAO.getInstance();
		HttpSession session = req.getSession();
		String loginID = (String) session.getAttribute("loginID");
		StudentVO vo = dao.getMember(loginID);
		req.setAttribute("id", vo.getId());
		req.setAttribute("pass", vo.getPass());
		req.setAttribute("name", vo.getName());
		req.setAttribute("phone1", vo.getPhone1());
		req.setAttribute("phone2", vo.getPhone2());
		req.setAttribute("phone3", vo.getPhone3());
		req.setAttribute("email", vo.getEmail());
		req.setAttribute("zipcode", vo.getZipcode());
		req.setAttribute("address1", vo.getAddress1());
		req.setAttribute("address2", vo.getAddress2());

		return new ActionForward("/mvcMem/modifyForm.jsp", false);
	}

}
