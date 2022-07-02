package tommy.mvcMem.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tommy.mvcMem.control.ActionForward;
import tommy.mvcMem.model.StudentDAO;

public class DeleteProcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse rep) throws IOException {
		StudentDAO dao = StudentDAO.getInstance();
		HttpSession session = req.getSession();
		String loginID = (String) session.getAttribute("loginID");
		String pass=req.getParameter("pass");
		int result=dao.deleteMember(loginID, pass);
		if(result!=0) {
			session.invalidate();
		}
		System.out.println(result);
		req.setAttribute("result", result);

		return new ActionForward("/mvcMem/deleteProc.jsp", false);
	}
}