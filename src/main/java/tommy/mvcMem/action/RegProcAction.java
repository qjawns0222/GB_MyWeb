package tommy.mvcMem.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tommy.mvcMem.control.ActionForward;
import tommy.mvcMem.model.StudentDAO;
import tommy.mvcMem.model.StudentVO;

public class RegProcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse rep) throws IOException {
		req.setCharacterEncoding("utf-8");
		StudentDAO dao = StudentDAO.getInstance();
		System.out.println(req.getParameter("id"));
		StudentVO vo = new StudentVO(req.getParameter("id"), req.getParameter("pass"), req.getParameter("name"),
				req.getParameter("phone1"), req.getParameter("phone2"), req.getParameter("phone3"), req.getParameter("email"),
				req.getParameter("zipcode"), req.getParameter("address1"), req.getParameter("address2"));
		boolean flag=dao.memberInsert(vo);
		req.setAttribute("flag", flag);
		return new ActionForward("/mvcMem/RegProc.jsp",false);
	
	}
}
