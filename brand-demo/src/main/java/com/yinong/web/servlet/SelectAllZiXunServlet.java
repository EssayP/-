package com.yinong.web.servlet;

import com.alibaba.fastjson.JSON;
import com.yinong.pojo.Addr;
import com.yinong.pojo.ZiXun;
import com.yinong.service.ZiXunService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectAllZiXunServlet")
public class SelectAllZiXunServlet extends HttpServlet {
    private ZiXunService ziXunService=new ZiXunService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<ZiXun> ziXuns = ziXunService.selectAll();
        request.setAttribute("ziXuns",ziXuns);


        List<Addr> addrs = ziXunService.selectAddr();
        request.setAttribute("addrs",addrs);

        request.getRequestDispatcher("zixun.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }


}
