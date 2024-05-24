package com.yinong.web.servlet;

import com.alibaba.fastjson.JSON;
import com.yinong.pojo.Brand;
import com.yinong.service.BrandService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;

//千万注意Servlet的路径一定要与前端相连的相匹配
@WebServlet("/addServlet")
public class AddServlet extends HttpServlet {
    private BrandService brandService = new BrandService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //request.getParameter无法获取json对象，所以只能通过读取输入流的方法获取数据
        BufferedReader reader = request.getReader();
        String params= reader.readLine();

        //将JSON对象转换为java对象
        Brand brand = JSON.parseObject(params, Brand.class);
        brandService.add(brand);
        response.getWriter().write("success");


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }


}
