package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

public class BoardUpdateFormService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int bNum = Integer.parseInt(request.getParameter("board_num"));
		System.out.println(bNum);
		// 다오 생성
		BoardDAO dao = BoardDAO.getInstance();
		// 글정보 받아오기
		BoardVO board = dao.getBoardDetail(bNum);
		// 바인딩
		request.setAttribute("Board", board);
	}

}
