<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.sie.biz.HouseInfoBiz"%>
<%@page import="com.sie.entity.HouseInfo"%>
<%		
		//15条每页
		int pageNum=1;
		int pageCount=1;
		if(request.getParameter("pageNum")!=null){
			pageNum=Integer.parseInt(request.getParameter("pageNum"));
		}
		HouseInfoBiz hib=new HouseInfoBiz();
		pageCount=hib.indexPage();
		List<Integer> pageCountList=new ArrayList<Integer>();
		//将页码放到list中
		for (int i = 1; i <= pageCount; i++) {
			pageCountList.add(i);
		}
		int rec=0;//记录条数
		rec=hib.indexRec();
		List<HouseInfo> hiList=hib.getAll(pageNum);//分页查询，传递当前页码
		request.setAttribute("hiList", hiList);
		request.setAttribute("pageCountList", pageCountList);
		request.setAttribute("pageNum", pageNum+"");
		request.setAttribute("pageCount", pageCount+"");
		request.setAttribute("rec", rec+"");
		request.getRequestDispatcher("./main2.jsp").forward(request, response);
%>