package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;

public class BoardDeleteService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int bNum = Integer.parseInt(request.getParameter("board_num"));
		System.out.println(bNum);
		// 다오 생성
		BoardDAO dao = BoardDAO.getInstance();
		// 삭제로직 실행
		dao.deleteBoard(bNum);
	}

}
