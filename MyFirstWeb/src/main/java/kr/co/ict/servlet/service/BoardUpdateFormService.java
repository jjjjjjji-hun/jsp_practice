package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

public class BoardUpdateFormService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String strbNum = request.getParameter("board_num");
		int bNum = 0;
		if(strbNum != null) {
			bNum = Integer.parseInt(strbNum);
		}
		System.out.println(bNum);
		// 다오 생성
		BoardDAO dao = BoardDAO.getInstance();
		// 글정보 받아오기
		BoardVO board = dao.getBoardDetail(bNum);
		// 바인딩
		request.setAttribute("Board", board);
	}

}
