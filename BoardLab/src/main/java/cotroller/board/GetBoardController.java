package cotroller.board;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.BoardDAO;
import biz.board.BoardVO;
import controller.Controller;

public class GetBoardController implements Controller{

	@Override
	public String handelRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String seq = request.getParameter("seq");
		
		BoardVO vo = new BoardVO();
		vo.setSeq(Integer.parseInt(seq));
		BoardDAO dao = new BoardDAO();
		BoardVO board = dao.getBoard(vo);
		request.setAttribute("board", board);
		
		return "getBoard.jsp";
	}
	
	
	
}
