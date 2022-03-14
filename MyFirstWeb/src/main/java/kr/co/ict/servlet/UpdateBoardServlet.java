package kr.co.ict.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;

/**
 * Servlet implementation class UpdateBoardServlet
 */
@WebServlet("/boardUpdate")
public class UpdateBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("수정창에서 -> 수정로직 진입 완료");
		// 한글
		request.setCharacterEncoding("utf-8");
		// 변수 저장
		int bNum = Integer.parseInt(request.getParameter("board_num"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		// 다오 생성
		BoardDAO dao = BoardDAO.getInstance();
		// update 메서드 호출
		dao.updateBoard(title, content, bNum);
		// 리다이렉트
		response.sendRedirect("http://localhost:8181/MyFirstWeb/boarddetail?board_num=" + bNum);
	}

}
