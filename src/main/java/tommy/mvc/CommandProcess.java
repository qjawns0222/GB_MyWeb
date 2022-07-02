package tommy.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandProcess {
	public String requestPro(HttpServletRequest req,HttpServletResponse rep) throws Throwable;

}
