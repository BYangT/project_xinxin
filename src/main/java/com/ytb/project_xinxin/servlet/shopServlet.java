package com.ytb.project_xinxin.servlet; /**
 * @author 杨天宝
 * @version 1.0
 */

import com.sun.xml.internal.bind.v2.model.core.ID;
import com.ytb.project_xinxin.entity.Idenitfity;
import com.ytb.project_xinxin.entity.cart;
import com.ytb.project_xinxin.entity.goods;
import com.ytb.project_xinxin.entity.page;
import com.ytb.project_xinxin.service.shopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.xml.ws.Response;
import javax.xml.ws.Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
                    if (service.findByUser1(req.getParameter("user11"))) {
                        resp.setContentType("text/html; charset=UTF-8");
                        PrintWriter out = resp.getWriter();
                        out.println("<script>");
                        out.println("alert('此用户已存在，请重新输入');");
                        out.println("history.back();");
                        out.println("</script>");
                        return;
                    } else {
                        Idenitfity idenitfity1 = new Idenitfity();
                        idenitfity1.setUser(req.getParameter("user11"));
                        idenitfity1.setEmail(req.getParameter("email11"));
                        idenitfity1.setPwd(req.getParameter("pwd11"));
                        service.add(idenitfity1);
                    }

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
            if (user.equals("system")){
                resp.sendRedirect("system.do");
            } else {
                session.setAttribute("e", idenitfity);
                resp.sendRedirect("index.jsp");
            }

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
            String name = req.getParameter("name");
            String pic = req.getParameter("pic");
            int number = Integer.parseInt(req.getParameter("number"));
            int price = Integer.parseInt(req.getParameter("price"));

            cart cart = new cart();
            cart.setPic(pic);
            cart.setName(name);
            cart.setNumber(number);
            cart.setPrice(price);

            service.addCart(cart);

            req.getRequestDispatcher("cart.jsp").forward(req,resp);
        }

        if (path.equals("/detail")){;
            req.getRequestDispatcher("detail.jsp").forward(req,resp);
        }

        if (path.equals("/del")){
            int id = Integer.parseInt(req.getParameter("id"));
            service.delete(id);

            resp.sendRedirect("system.do");
        }

        if (path.equals("/add")){
            String uname = req.getParameter("uname");
            String pwd = req.getParameter("pwd");
            String email = req.getParameter("email");

            Idenitfity idenitfity = new Idenitfity();
            idenitfity.setUser(uname);
            idenitfity.setPwd(pwd);
            idenitfity.setEmail(email);

            service.add(idenitfity);

            resp.sendRedirect("system.do");
        }

        if (path.equals("/toUpdate")){
            int id = Integer.parseInt(req.getParameter("id"));
            Idenitfity idenitfity = service.findByIdIdenitfity(id);

            req.setAttribute("iden", idenitfity);
            req.getRequestDispatcher("update.jsp").forward(req, resp);
        }

        if (path.equals("/update")){
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String pwd = req.getParameter("pwd");

            Idenitfity idenitfity =new Idenitfity();
            idenitfity.setUser(name);
            idenitfity.setEmail(email);
            idenitfity.setPwd(pwd);
            idenitfity.setId(id);

            service.update(idenitfity);
            resp.sendRedirect("system.do");
        }

        if (path.equals("/system")){
            //获取浏览器端传递的参数 要查询的页数
            String current = req.getParameter("current");

            page page = new page();
            //找到总行数
            int rows = service.findRows();
            page.setRows(rows);
            //判断当前页是否为空
            if (current != null) {
                int cur = Integer.parseInt(current);
                page.setCurrentPage(cur);
            }
            //每一页的员工信息
            List<Idenitfity> idenitfities = service.findByPage(page);
            //绑定到request对象上
            req.setAttribute("idens", idenitfities);
            req.setAttribute("page", page);
            //转发
            req.getRequestDispatcher("system.jsp").forward(req, resp);
        }
    }
}
