package controller;

import entity.FoodITripEntity;
import entity.InnermongoliaTripEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
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
@WebServlet(name = "DetailFoodServlet",urlPatterns = {"/detailFood"})
public class DetailFoodServlet extends HttpServlet {
    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
        super.init();
        emf= Persistence.createEntityManagerFactory("ProjectPU");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String foodName=request.getParameter("food");

        EntityManager em=emf.createEntityManager();

        //Select one food
        javax.persistence.Query query= em.createNamedQuery("findFood");
        query.setParameter("foodName",foodName);
        List<FoodITripEntity> findFood=query.getResultList();
        request.setAttribute("findFood",findFood);


        //Select all spots
        javax.persistence.Query query1=em.createNamedQuery("showAll");
        List<InnermongoliaTripEntity> listAll=null;
        listAll=query1.getResultList();
        request.setAttribute("listAll",listAll);

        //Select all food
        javax.persistence.Query query2=em.createNamedQuery("showFood");
        List<FoodITripEntity> listFood=query2.getResultList();
        request.setAttribute("listFood",listFood);

        String type="food";
        request.setAttribute("type",type);

        request.getRequestDispatcher("/WEB-INF/jsp/detail.jsp").forward(request, response);
    }
}
