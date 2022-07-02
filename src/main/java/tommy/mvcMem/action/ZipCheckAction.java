package tommy.mvcMem.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tommy.mvcMem.control.ActionForward;
import tommy.mvcMem.model.StudentDAO;
import tommy.mvcMem.model.ZipCodeVO;


public class ZipCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse rep) throws IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		StudentDAO dao=StudentDAO.getInstance();
		System.out.println("zipcheck");
		String check=req.getParameter("check");
		String dong=req.getParameter("dong");
		Vector<ZipCodeVO> zipcodeList=dao.zipcodeRead(dong);
		int totalList=zipcodeList.size();
		req.setAttribute("check", check);
		req.setAttribute("dong", dong);
		req.setAttribute("zipcodeList", zipcodeList);
		req.setAttribute("totalList", totalList);
		return new ActionForward("/mvcMem/zipCheck.jsp",false);
	}
	
}
