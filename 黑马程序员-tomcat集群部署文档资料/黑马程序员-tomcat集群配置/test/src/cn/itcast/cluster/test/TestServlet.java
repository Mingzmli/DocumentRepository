package cn.itcast.cluster.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlet extends HttpServlet {

	private static final long serialVersionUID = -4508299817031218675L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		String key = request.getParameter("key");
		if(!"".equals(key)){
			if("add".equals(method)){
				String value = request.getParameter("value");
				request.getSession().setAttribute(key, value);
			} else {
				request.getSession().removeAttribute(key);
			}
		}
		response.sendRedirect(request.getContextPath());
	}

}
