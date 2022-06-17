package tommy.web.sample;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String company;
	private String manager;
	private String tel;
	private String email;

	public LifeCycle() {
		System.out.println("LifeServlet�� ������ ȣ���..");

	}

	@Override
	public void init() throws ServletException {
		System.out.println("init() ȣ���...");
		company = getServletContext().getInitParameter("company");
		manager = getServletContext().getInitParameter("manager");
		tel = getServletConfig().getInitParameter("tel");
		email = getServletConfig().getInitParameter("email");
	}

	@Override
	public void destroy() {
		System.out.println("destroy() ȣ���..");
	}

	@Override
	protected void service(HttpServletRequest rquest, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("service() ȣ���...");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			out.println("<html>");
			out.println("<body>");
			out.println("<li>ȸ���:" + company + "</li>");
			out.println("<li>�����:" + manager + "</li>");
			out.println("<li>��ȭ��ȣ:" + tel + "</li>");
			out.println("<li>�̸���:" + email + "</li>");
			out.println("</body>");
			out.println("</html>");
		} finally {
			out.close();
		}
	}

}
