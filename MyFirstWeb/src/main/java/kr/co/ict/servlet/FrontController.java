package kr.co.ict.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.servlet.service.BoardDeleteService;
import kr.co.ict.servlet.service.BoardDetailService;
import kr.co.ict.servlet.service.BoardInsertService;
import kr.co.ict.servlet.service.BoardListService;
import kr.co.ict.servlet.service.BoardUpdateFormService;
import kr.co.ict.servlet.service.BoardUpdateService;
import kr.co.ict.servlet.service.IBoardService;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get방식 요청으로 요청이 들어오건
		doRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post방식 요청으로 요청이 들어오건 동일하게 doRequest에서 처리하도록 설정
		doRequest(request, response);
	}

	// doGet, doPost 어떤 형식으로 요청이 들어올지 모르기 때문에 공용 메서드를 하단에 하나 생성합니다.
	private void doRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 프론트 컨트롤러는 여러 주소 요청을 처리하기 때문에 uri부터 받아옵니다.
		String uri = request.getRequestURI();
		//포워딩할 .jsp 파일의 경로를 미리 저장해둘 변수
		String ui = null;
		// 다형성을 이용해 요청주소에 따른 처리해줄 서비스
		IBoardService sv = null;
		System.out.println(uri);
		
		if(uri.equals("/MyFirstWeb/boardList.do")) {
			sv = new BoardListService(); // 다형성에 의해 IBoardService를 구현한 모든 타입을 sv에 저장 가능
			sv.execute(request, response);// BoardListService의 execute는 게시글 목록을 가져옴
			ui = "/board/board_list.jsp";// 포워딩 주소를 ui에 저장함
		}else if(uri.equals("/MyFirstWeb/boardDetail.do")) {
			sv = new BoardDetailService();
			sv.execute(request, response);
			ui = "/board/board_detail.jsp";
		}else if(uri.equals("/MyFirstWeb/insertForm.do")) {
			ui = "/board/board_form.jsp"; 
		}else if(uri.equals("/MyFirstWeb/boardInsert.do")) {
			sv = new BoardInsertService();
			sv.execute(request, response);
			ui = "/boardList.do";
		}else if(uri.equals("/MyFirstWeb/boardDelete.do")) {
			sv = new BoardDeleteService();
			sv.execute(request, response);
			ui = "/boardList.do";
		}else if(uri.equals("/MyFirstWeb/boardUpdateForm.do")) {
			sv = new BoardUpdateFormService();
			sv.execute(request, response);
			ui = "/board/boardUpdateForm.jsp";
		}else if(uri.equals("/MyFirstWeb/boardUpdate.do")) {
			sv = new BoardUpdateService();
			sv.execute(request, response);
			ui = "/boardDetail.do?board_num=" + request.getParameter("board_num");
		}else {// 그러면 정해진 주소 이외의 주소로 접속했을때 메인페이지로 보내주는 포워딩 구문을 작성해보세요.
			ui = "/";
		}
		
		// 위쪽 if ~ else문을 다 호출한 다음 실제로 포워딩 실행
		RequestDispatcher dp = request.getRequestDispatcher(ui);
		dp.forward(request, response);
	}
}
