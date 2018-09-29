package fileDownAction;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class fileDownAction
 */
@WebServlet("/DownServlet")
public class DownServlet extends HttpServlet {

	private static final long serialVersionUID = 8594448765428224944L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/*
	 * 处理请求 (non-Javadoc)
	 * 
	 * @see
	 * javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest
	 * , javax.servlet.http.HttpServletResponse)
	 */
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 接收中文参数乱码处理
		response.setCharacterEncoding("utf-8");
		String name = new String(request.getParameter("fileName").getBytes("ISO-8859-1"), "utf-8");
		// 得到文件名
		name = name.substring(8);

		// web绝对路径
		String path = request.getSession().getServletContext().getRealPath("/");
		String savePath = path + "upload";

		// 设置为下载application/x-download
		response.setContentType("application/x-download");
		// 即将下载的文件在服务器上的绝对路径
		String filenamedownload = savePath + "/" + name;
		// 下载文件时显示的文件保存名称
		String filenamedisplay = name;
		// 中文编码转换
		filenamedisplay = URLEncoder.encode(filenamedisplay, "UTF-8");
		response.addHeader("Content-Disposition", "attachment;filename=" + filenamedisplay);
		try {
			java.io.OutputStream os = response.getOutputStream();
			java.io.FileInputStream fis = new java.io.FileInputStream(filenamedownload);
			byte[] b = new byte[1024];
			int i = 0;
			while ((i = fis.read(b)) > 0) {
				os.write(b, 0, i);
			}
			fis.close();
			os.flush();
			os.close();
		} catch (Exception e) {

		}

	}
}