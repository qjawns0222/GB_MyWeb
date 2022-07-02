package tommy.mvcMem.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tommy.mvcMem.control.ActionForward;
import tommy.mvcMem.model.StudentDAO;
import tommy.mvcMem.model.StudentVO;

public class LoginProcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse rep) throws IOException {
		
		StudentDAO dao = StudentDAO.getInstance();
		String id=req.getParameter("id");
		String pass=req.getParameter("pass");
		int check=dao.loginCheck(id, pass);
		if(check==1) {
			HttpSession session=req.getSession();
			session.setAttribute("loginID", id);
		}else if(id !=null && pass!=null) {
			req.setAttribute("check",check);
		}
		return new ActionForward("member.mdo?cmd=login",false);

	}
	

}
