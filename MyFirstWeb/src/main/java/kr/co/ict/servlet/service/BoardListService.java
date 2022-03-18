package kr.co.ict.servlet.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

public class BoardListService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
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
		
		// 로그인 여부는 세션값을 저장한 다음, 바인딩에서 .jsp페이지에서 확인합니다.
		// 서블릿 내부에서 세션쓰는법
		// 1. 세션 객체 생성(.jsp 내부에서는 자동으로 생성되는 "내장 객체" 이지만 서블릿 로직에서는 생성해줘야 쓸 수 음.
		HttpSession session = request.getSession();
		String sId = (String)session.getAttribute("session_id");
		System.out.println(sId);
		// 세션값 체킹이 확인되면 바인딩해서 포워딩 시 세션값이 같이 넘어가도록 처리
		request.setAttribute("sId", sId);
		
	}

}
