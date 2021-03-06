package kr.co.ict.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/boardList")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 페이지 번호를 get방식으로 가져옵니다. 저장받아 주세요(?pageNum=번호 형식으로 받아옵니다.)
				String strpNum = request.getParameter("pageNum");
				int pNum = 0;
				/*if(strpNum == null) {
					pNum = 1;
				}else {
					 pNum = Integer.parseInt(request.getParameter("pageNum"));
				}*/
				try {
					pNum=Integer.parseInt(strpNum);
				}catch(Exception e) {
					pNum = 1;
				}
		// 1. 접속시 BoardDAO 생성
		BoardDAO dao = BoardDAO.getInstance();
		
		// 2. BoardDAO의 getALLBoardList() 호출해 전체 게시글 정보 받아오기
		List<BoardVO> boardList = dao.getAllBoardList(pNum);
		
		// 3. request.setAttribute로 바인딩하기
		request.setAttribute("boardList", boardList);
		
		// 4. /board/boardlist.jsp로 포워딩하기
		// 포워딩 후 el로 바인딩한 자료를 화면에 뿌려보세요.
		RequestDispatcher dp = request.getRequestDispatcher("/board/board_list.jsp");
		dp.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
