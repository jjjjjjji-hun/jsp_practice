package kr.co.ict.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

/**
 * Servlet implementation class BoardDetailServlet
 */
@WebServlet("/boarddetail")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request.getParameter 를 이용해 글번호부터 가져옵니다.
		// int 자료형으로 바꿔주세요.
		int bNum = Integer.parseInt(request.getParameter("board_num"));
		// 다오 생성
		BoardDAO dao = BoardDAO.getInstance();
		// 한글
		request.setCharacterEncoding("utf-8");
		// dao에서 해당 글번호에 대한 정보를 가져오기
		BoardVO board = dao.getBoardDetail(bNum);
		System.out.println(board);
		// 바인딩
		request.setAttribute("Board", board);
		// 포워딩
		RequestDispatcher dp = request.getRequestDispatcher("/board/board_detail.jsp");
		dp.forward(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
