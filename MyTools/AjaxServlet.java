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
		
		//1.ȡ����
		//2.�������Ƿ�������
		//3.У�����
		//4.ajax������Ӧ����

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String old = request.getParameter("username").trim();
		//out.println()ֱ��������ı�������servlet��request������
		if(null==old || "".equals(old)) {
			out.println("<strong>�û�������Ϊ�գ�</strong>");
		} else {
			if("zyh".equals(old)) {
				out.println("<strong>�û���[" + old + "],�Ѵ��ڣ�</strong>");
			} else {
				out.println("<strong>�û���[" + old + "],�����ڣ�</strong>");
			}
		}
		
		out.flush();
		out.close();
	}
}
