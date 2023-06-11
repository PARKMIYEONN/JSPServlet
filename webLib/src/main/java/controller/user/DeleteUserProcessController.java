package controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.rental.RentalDAO;
import biz.rental.RentalVO;
import biz.user.UserDAO;
import biz.user.UserVO;
import controller.Controller;

public class DeleteUserProcessController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String pwcheck = request.getParameter("pwcheck");
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		
		UserDAO dao = new UserDAO();
		UserVO user = dao.loginUser(vo);
		
		RentalDAO rdao = new RentalDAO();
		List<RentalVO> rvo = rdao.mybooks(id);
		
		
		String msg = "";
		String url = "";
		
		if(user != null && password.equals(pwcheck) && rvo.size() == 0) {
			dao.deleteUser(vo);
			HttpSession session = request.getSession();
			session.invalidate();
			msg = "탈퇴 완료";
			url = "webLib/main.do";
		}else if(rvo.size() != 0){
			msg = "대여중인 책이 있습니다.";
			url = "webLib/mybooks.do";
		
		}else {
		
			msg = "비밀번호를 잘못 입력했습니다";
			url = "webLib/login/deleteuser.do";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "/jsp/login/deleteuserprocess.jsp";
	}
	
}
