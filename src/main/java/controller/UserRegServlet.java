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
@WebServlet(name = "UserRegServlet",urlPatterns = {"/register"})
public class UserRegServlet extends HttpServlet {
    private EntityManagerFactory emf;
    @Override
    public void init() throws ServletException {
        super.init();
        emf= Persistence.createEntityManagerFactory("ProjectPU");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String email=request.getParameter("email");

        //Check Username
        EntityManager em=emf.createEntityManager();
        javax.persistence.Query query2=em.createNamedQuery("query2");
        query2.setParameter("username",username);
        List<UsertableEntity> rs1=query2.getResultList();

        //Check Password
        javax.persistence.Query query3=em.createNamedQuery("query3");
        query3.setParameter("email",email);
        List<UsertableEntity> rs2=query3.getResultList();


        if(!rs1.isEmpty()) {
            request.setAttribute("result","fail1");
        }

        else if(!rs2.isEmpty()){
            request.setAttribute("result","fail2");
        }
        else{
            //Insert new User Object to the Usertable
            UsertableEntity ut=new UsertableEntity();
            ut.setUsername(username);
            ut.setPassword(password);
            ut.setEmail(email);

            em.getTransaction().begin();
            em.persist(ut);
            em.getTransaction().commit();

            request.setAttribute("name",username);

        }
        RequestDispatcher dispatcher =request.getRequestDispatcher("/WEB-INF/jsp/resultReg.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher =request.getRequestDispatcher("/WEB-INF/jsp/register.jsp");
        dispatcher.forward(request,response);
    }
}
