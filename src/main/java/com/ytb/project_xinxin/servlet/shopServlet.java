package com.ytb.project_xinxin.servlet; /**
 * @author 杨天宝
 * @version 1.0
 */

import com.ytb.project_xinxin.entity.Idenitfity;
import com.ytb.project_xinxin.entity.goods;
import com.ytb.project_xinxin.service.shopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.xml.ws.Response;
import javax.xml.ws.Service;
import java.io.IOException;

public class shopServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        //获取session对象
        HttpSession session = req.getSession();
        //获得浏览器端的请求路径
        String urlString = req.getRequestURI();
        //将拿到的请求路径uri进行切割处理
        String path = urlString.substring(urlString.lastIndexOf("/"), urlString.lastIndexOf("."));
        shopService service= new shopService();

        if (path.equals("/login")){
            String user = req.getParameter("user");
            String pwd = req.getParameter("pwd");
            Idenitfity idenitfity = service.login(user);
            if (idenitfity == null){
                if (req.getParameter("user11")!=null && req.getParameter("email11")!=null &&req.getParameter("pwd11")!=null){
                    Idenitfity idenitfity1 = new Idenitfity();
                    idenitfity1.setUser(req.getParameter("user11"));
                    idenitfity1.setEmail(req.getParameter("email11"));
                    idenitfity1.setPwd(req.getParameter("pwd11"));
                    service.add(idenitfity1);
                }
                req.setAttribute("umsg", "用户名错误错误");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
                return;
            }

            if (!idenitfity.getPwd().equals(pwd)){
                if (req.getParameter("user11")!=null && req.getParameter("email11")!=null &&req.getParameter("pwd11")!=null){
                    Idenitfity idenitfity1 = new Idenitfity();
                    idenitfity1.setUser(req.getParameter("user11"));
                    idenitfity1.setEmail(req.getParameter("email11"));
                    idenitfity1.setPwd(req.getParameter("pwd11"));
                    service.add(idenitfity1);
                }
                req.setAttribute("pmsg", "密码错误");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
                return;
            }
            //登陆对象的数据绑定到session对象中
            session.setAttribute("e", idenitfity);
            resp.sendRedirect("index.jsp");
        }
        if (path.equals("/register")){
            Idenitfity idenitfity = new Idenitfity();
            req.getRequestDispatcher("register.jsp").forward(req,resp);


            //创建新对象，填进去
            String user = req.getParameter("user");
            String email = req.getParameter("email");
            String pwd = req.getParameter("pwd");
            //读取前端返回的用户名账号密码
            idenitfity.setUser(user);
            idenitfity.setEmail(email);
            idenitfity.setPwd(pwd);
            service.add(idenitfity);
        }
        if (path.equals("/cart")){
//            Object obj = session.getAttribute("e");
//            if (obj == null){
//                resp.sendRedirect("login.do");
//                return;
//            }
//            req.getParameter("picture");
//            String name = req.getParameter("name");
//            req.setAttribute("goodsname", name);
//            goods goods = service.findByName(name);
            req.getRequestDispatcher("cart.jsp").forward(req,resp);
        }
        if (path.equals("/detail")){;
            req.getRequestDispatcher("detail.jsp").forward(req,resp);
        }
    }
}
