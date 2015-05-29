package controller;

import entity.UsertableEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by mandyxue on 15/5/28.
 */
@WebServlet(name = "UserLogServlet",urlPatterns = {"/login"})
public class UserLogServlet extends HttpServlet {
    private EntityManagerFactory emf;
    @Override
    public void init() throws ServletException {
        super.init();
        emf= Persistence.createEntityManagerFactory("ProjectPU");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

//        System.out.println(username+" "+password);

        EntityManager em=emf.createEntityManager();

        javax.persistence.Query query1=em.createNamedQuery("query1");
        query1.setParameter("username",username);
        query1.setParameter("password",password);

//        System.out.println(query1);
        List<UsertableEntity> rs1=null;
        rs1=query1.getResultList();

        if (!rs1.isEmpty()) {
            request.setAttribute("result", "success");
        } else {
            request.setAttribute("result", "fail");
        }

        request.setAttribute("name",username);
        RequestDispatcher dispatcher =request.getRequestDispatcher("/WEB-INF/jsp/resultLog.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher =request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
        dispatcher.forward(request,response);
    }
}
