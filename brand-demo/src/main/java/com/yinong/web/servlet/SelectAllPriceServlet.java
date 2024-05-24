package com.yinong.web.servlet;

import com.yinong.pojo.Addr;
import com.yinong.service.PriceService;
import com.yinong.service.ZiXunService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectAllPriceServlet")
public class SelectAllPriceServlet extends HttpServlet {
    private PriceService priceService = new PriceService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<Addr> Address = priceService.selectAddr();
        request.setAttribute("Address",Address);
        request.getRequestDispatcher("price.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }


}
