package tommy.mvcMem.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tommy.mvcMem.control.ActionForward;

public class LoginFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse rep) throws IOException {
		// TODO Auto-generated method stub
		
		return new ActionForward("/mvcMem/login.jsp",false);
	} 

}
