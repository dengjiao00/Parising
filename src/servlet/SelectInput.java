package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Input;
import dao.InputDao;

@WebServlet("/SelectInput")
public class SelectInput extends HttpServlet {
	public SelectInput() {
		// TODO Auto-generated constructor stub
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		InputDao inputDao = new InputDao();
		try {
			ArrayList<Input> inputs = inputDao.QueryAll();
			HttpSession inSession = req.getSession();
			inSession.setAttribute("inlist", inputs);
			req.getRequestDispatcher("FileIn.jsp").forward(req, resp);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
