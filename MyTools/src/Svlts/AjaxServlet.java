package Svlts;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AjaxServlet extends HttpServlet {

	private static final long serialVersionUID = -4985183154715703715L;

	public AjaxServlet() {
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//1.取参数
		//2.检查参数是否有问题
		//3.校验操作
		//4.ajax返回相应数据

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String old = request.getParameter("username").trim();
		if(null==old || "".equals(old)) {
			out.println("<strong>用户名不能为空！</strong>");
		} else {
			if("zyh".equals(old)) {
				out.println("<strong>用户名[" + old + "],已存在！</strong>");
			} else {
				out.println("<strong>用户名[" + old + "],不存在！</strong>");
			}
		}
		
		out.flush();
		out.close();
	}
}
