package webProject.servlet;

import webProject.entity.Comm;
import webProject.service.UserService;
import webProject.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class selectOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int spid = Integer.parseInt(req.getParameter("id"));
        List<Comm> list = new ArrayList<>();
        UserService use = new UserServiceImpl();
        Comm com = new Comm();
        com.setComID(spid);
        if (spid > 0) {
            list = use.shopdemo(com);
            for (int i = 0; i < list.size(); i++) {
                System.out.println(list.get(i).getComID());
                System.out.println(list.get(i).getComName());
            }
            if (list.size()>0){
                System.out.println("查询成功！");
                req.setAttribute("listname", list.get(0).getComName());
                req.setAttribute("listQuan",list.get(0).getComQuantity());
                req.setAttribute("listcomId", list.get(0).getComID());
                req.setAttribute("listsize", list.get(0).getComSize());
                req.setAttribute("listove", list.get(0).getComOve());
                req.setAttribute("listmoney", list.get(0).getComMoney());
                HttpSession session = req.getSession();
                session.setAttribute("list1", list);
                req.getRequestDispatcher("/loldemo/order.jsp").forward(req, resp);
            }else{
                System.out.println("没有查询到值");
                req.getRequestDispatcher("/loldemo/shopping.jsp").forward(req, resp);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
