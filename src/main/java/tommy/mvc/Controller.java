package tommy.mvc;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String,Object> commandMap=new HashMap<String,Object>();
	@SuppressWarnings("unchecked")
	public void init(ServletConfig config) throws ServletException {
		String props=config.getInitParameter("propertyConfig");
		Properties pr=new Properties();
		String path=config.getServletContext().getRealPath("/WEB-INF");
		FileInputStream f=null;
		try {
			f=new FileInputStream(new File(path,props));
			pr.load(f);
		}catch(IOException e) {
			throw new ServletException();
		}finally {
			if(f!=null)try {f.close();}catch(IOException e) {}
		}
		Iterator<Object> keyIter=pr.keySet().iterator();
		while(keyIter.hasNext()) {
			String command=(String)keyIter.next();
			String className=pr.getProperty(command);
			try {
				Class CommandClass=Class.forName(className);
				Object commandInstance=CommandClass.newInstance();
				commandMap.put(command, commandInstance);
				
			}catch(ClassNotFoundException e) {
				throw new ServletException(e);
			}catch(InstantiationException e) {
				throw new ServletException(e);
			}catch(IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		requestPro(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		requestPro(req,resp);
	}
	private void requestPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException {
		String view=null;
		CommandProcess com=null;
		try {
			String command=req.getRequestURI();
			if(command.indexOf(req.getContextPath())==0) {
				command=command.substring(req.getContextPath().length());
				System.out.println(command);
				
			}
			com=(CommandProcess)commandMap.get(command);
			view=com.requestPro(req, resp);
			
		}catch(Throwable e) {
			throw new ServletException(e);
		}
		RequestDispatcher dispatcher=req.getRequestDispatcher(view);
		dispatcher.forward(req, resp);
	}
	
    
}
