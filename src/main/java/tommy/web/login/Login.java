package tommy.web.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			HttpSession session = request.getSession(false);
			if (session != null) {
				String sessionid = session.getId();
				System.out.println("세션아이디:" + sessionid);
				String user = (String) session.getAttribute("user");
				out.println("<html>");
				out.println("<body>");
				out.println("<table border='1' width='300'>");
				out.println("<tr>");
				out.println("<td width='300' allign='center'>" + user + "님 로그인 되었습니다.</td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td align='center'>");
				out.println("<a href='#'>회원정보</a>");
				out.println("<a href='Logout'>로그아웃</a>");
				out.println("</td>");
				out.println("</tr>");
				out.println("</table>");
				out.println("<body>");
				out.println("</html>");
			} else {
				out.println("<html>");
				out.println("<body>");
				out.println("<form method='post' action='LoginCheck'>");
				out.println("<table border='1' width='300'>");
				out.println("<tr>");
				out.println("<td width='100'>아이디</td>");
				out.println("<td width='200'>&nbsp;<input type='text' name='id'/></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td width='100'>비번</td>");
				out.println("<td width='200'>&nbsp;<input type='password' name='pwd'/></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td align='center' colspan='2'>");
				out.println("<input type='button' value='회원가입'>");
				out.println("<input type='submit' value='로그인'>");
				out.println("</td>");
				out.println("</tr>");
				out.println("</form>");
				out.println("</table>");
				out.println("</body>");
				out.println("</html>");
			}
		} finally {
			out.close();
		}
	}

}
