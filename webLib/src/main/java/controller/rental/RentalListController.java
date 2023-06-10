package controller.rental;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.rental.RentalDAO;
import biz.rental.RentalVO;
import controller.Controller;

public class RentalListController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		RentalDAO dao = new RentalDAO();
		List<RentalVO> vo = dao.rentallist();
		request.setAttribute("rentedusers", vo);
		
		return "/jsp/manager/rentedusers.jsp";
	}

	
}
