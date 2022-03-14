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
 * Servlet implementation class UpdateFormBoardServlet
 */
@WebServlet("/updateBoard")
public class UpdateFormBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFormBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("수정 페이지 접근 성공");
		int bNum = Integer.parseInt(request.getParameter("board_num"));
		System.out.println(bNum);
		// 다오 생성
		BoardDAO dao = BoardDAO.getInstance();
		// 글정보 받아오기
		BoardVO board = dao.getBoardDetail(bNum);
		// 바인딩
		request.setAttribute("Board", board);
		// 포워딩
		RequestDispatcher dp = request.getRequestDispatcher("/board/boardUpdateForm.jsp");
		dp.forward(request, response);
	}

}
