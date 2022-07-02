package tommy.mvcMem.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tommy.mvcMem.control.ActionForward;
import tommy.mvcMem.model.StudentDAO;

public class IdCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse rep) throws IOException {
		// TODO Auto-generated method stub
		StudentDAO dao=StudentDAO.getInstance();
		System.out.println("idcheck");
		String id=req.getParameter("id");
		boolean check=dao.idCheck(id);
		req.setAttribute("id", id);
		req.setAttribute("check", check);
		return new ActionForward("/mvcMem/idCheck.jsp",false);
	}
	
}
