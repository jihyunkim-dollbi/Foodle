package com.sist.restaurant.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.vo.*;
import com.sist.dao.*;
import java.util.*;

@Controller
public class DetailModel {
	@RequestMapping("restaurant/detail.do")
	public String restaurant_detail(HttpServletRequest request, HttpServletResponse response) {
		String no=request.getParameter("no");
		
		MainInfoVO mvo=RestaurantDetailDAO.resDetailMaininfo(Integer.parseInt(no));
		SubinfoVO svo=RestaurantDetailDAO.resDetailSubinfo(Integer.parseInt(no));
		ReserveInfoVO rvo=RestaurantDetailDAO.resDetailReserveinfo(Integer.parseInt(no));
		List<MenuVO> menuList=RestaurantDetailDAO.resDetailMenu(Integer.parseInt(no));
		
		request.setAttribute("mvo", mvo);
		request.setAttribute("svo", svo);
		request.setAttribute("rvo", rvo);
		request.setAttribute("menuList", menuList);
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../restaurant/detail.jsp");
		return "../main/main.jsp";
	}
}
