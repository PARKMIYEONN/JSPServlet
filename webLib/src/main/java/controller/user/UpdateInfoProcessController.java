package controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.user.UserDAO;
import biz.user.UserVO;
import controller.Controller;

public class UpdateInfoProcessController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		UserVO snUser = (UserVO)session.getAttribute("loginUser");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String pwcheck = request.getParameter("pwcheck");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		UserVO vo = new UserVO();
		vo.setName(name);
		vo.setPhoneNo(phone);
		vo.setId(id);
		vo.setPassword(password);
		
		UserDAO dao = new UserDAO();	
		UserVO user = dao.loginUser(vo);
		
		UserVO chuser = new UserVO();
		chuser.setId(id);
		chuser.setPassword(pw);
		chuser.setName(name);
		chuser.setPhoneNo(phone);
		
		String msg = "";
		String url = "";
		
		if(user != null && pw != "" && pw.equals(pwcheck)) {
			dao.updateInfo(chuser);
			snUser.setName(name);
			snUser.setPhoneNo(phone);
			snUser.setPassword(pw);
			session.setAttribute("loginUser", snUser);
			
			msg = "수정 완료";
			url = "webLib/login/myinfo.do";
		}else if(user != null && pw == ""){
			dao.updateInfo(vo);
			snUser.setName(name);
			snUser.setPhoneNo(phone);
			snUser.setPassword(password);
			session.setAttribute("loginUser", snUser);
			msg = "수정 완료";
			url = "webLib/login/myinfo.do";
		}
		else {
			msg = "비밀번호를 잘못 입력했습니다";
			url = "webLib/login/updateinfo.do";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		
		return "/jsp/login/updateinfoprocess.jsp";
	}
	
	
}