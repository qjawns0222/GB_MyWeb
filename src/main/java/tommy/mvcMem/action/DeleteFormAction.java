package tommy.mvcMem.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tommy.mvcMem.control.ActionForward;
import tommy.mvcMem.model.StudentDAO;
import tommy.mvcMem.model.StudentVO;

public class DeleteFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse rep) throws IOException {


		return new ActionForward("/mvcMem/deleteForm.jsp", false);
	}
}