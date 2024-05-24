package com.yinong.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/luntan.jsp")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {



        HttpServletRequest request = (HttpServletRequest) req;

        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");

        if(user != null)
        {
            System.out.println("用户不为空。。。");
            chain.doFilter(req, resp);
        }
        else {
            request.setAttribute("login_msg","您还未登录！");
            System.out.println("未登录");
            request.getRequestDispatcher("/login.jsp").forward(request,resp);
        }




    }

    public void init(FilterConfig config) throws ServletException {

    }

}
