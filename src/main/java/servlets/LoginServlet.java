package servlets;

import DAO.Admin;
import DAO.UserManagerDAO;
import model.Model;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;

public class LoginServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/login.jsp");
        requestDispatcher.forward(req, resp);





    }




    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
          Logger logger =  Logger.getLogger(LogoutServlet.class.getName());
        String name = req.getParameter("name_login");
        String password = req.getParameter("pass_login");


//
//        System.out.println(name +" "+ password + " login user");



        if (Model.findInDb(name, password)){

            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("name",name);


//            System.out.println("find user with:" + name + "-" + password);


            logger.info("Login user: " + name);
            resp.sendRedirect("index.jsp");



        }
        if (!Model.findInDb(name, password)){


            PrintWriter out=resp.getWriter();
            out.print("Dont find user");

            try {
                Thread.sleep(700);
            } catch (InterruptedException e) {
                logger.error("Exception here " + e);
            }
            resp.setIntHeader("Refresh", 1);

        }



    }



}
