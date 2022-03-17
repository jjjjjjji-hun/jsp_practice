package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.ict.BoardDAO;

public class BoardDeleteService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int bNum = Integer.parseInt(request.getParameter("board_num"));
		System.out.println(bNum);
		String Writer = request.getParameter("writer");
		HttpSession session = request.getSession();
		String sId = (String)session.getAttribute("session_id");
		// 다오 생성
		if(sId.equals(Writer)) {
		BoardDAO dao = BoardDAO.getInstance();
		// 삭제로직 실행
		dao.deleteBoard(bNum);
		}
	}

}
