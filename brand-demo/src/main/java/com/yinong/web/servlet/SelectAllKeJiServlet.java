package com.yinong.web.servlet;

import com.yinong.pojo.Addr;
import com.yinong.pojo.KeJi;
import com.yinong.pojo.ZiXun;
import com.yinong.service.KeJiService;
import com.yinong.service.ZiXunService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectAllKeJiServlet")
public class SelectAllKeJiServlet extends HttpServlet {
    private KeJiService keJiService= new KeJiService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<KeJi> keJis = keJiService.selectAll();
        request.setAttribute("keJis",keJis);

        List<Addr> Addrs = keJiService.selectAddr();
        request.setAttribute("Addrs",Addrs);

        request.getRequestDispatcher("keji.jsp").forward(request,response);
        /*for (int i=0;i<keJis.size();i++)
        {
            System.out.println(keJis.get(i));
        }*/
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }


}
