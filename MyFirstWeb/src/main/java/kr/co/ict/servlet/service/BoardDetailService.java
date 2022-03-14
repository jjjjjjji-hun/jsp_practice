package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

public class BoardDetailService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// request.getParameter 를 이용해 글번호부터 가져옵니다.
		// int 자료형으로 바꿔주세요.
		int bNum = Integer.parseInt(request.getParameter("board_num"));
		System.out.println(bNum);
		// 다오 생성
		BoardDAO dao = BoardDAO.getInstance();
		//request.setCharacterEncoding("utf-8");
		// dao에서 해당 글번호에 대한 정보를 가져오기
		BoardVO board = dao.getBoardDetail(bNum);
		System.out.println(board);
		// 바인딩
		request.setAttribute("Board", board);
		
	}

}
