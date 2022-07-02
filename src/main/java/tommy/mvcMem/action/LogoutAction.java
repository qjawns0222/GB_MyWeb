package tommy.mvcMem.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tommy.mvcMem.control.ActionForward;

public class LogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse rep) throws IOException {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		session.invalidate();
		return new ActionForward("/mvcMem/logout.jsp",false);
	} 

}
