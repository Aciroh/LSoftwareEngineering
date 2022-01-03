package com.lse.lsoftwareengineering.servlet;

import com.lse.lsoftwareengineering.common.CarDetails;
import com.lse.lsoftwareengineering.common.UserDetails;
import com.lse.lsoftwareengineering.ejb.CarBean;
import com.lse.lsoftwareengineering.ejb.UserBean;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "EditCar", value = "/EditCar")
public class EditCar extends HttpServlet {

    @Inject
    UserBean userBean;

    @Inject
    CarBean carBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<UserDetails> users = userBean.getAllUsers();
        request.setAttribute("users",users);

        int carId = Integer.parseInt(request.getParameter("id"));
        CarDetails car = carBean.findById(carId);
        request.setAttribute("car",car);

        request.getRequestDispatcher("/WEB-INF/pages/editCar.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String licensePlate = request.getParameter("license_plate");
        String parkingSpot = request.getParameter("parking_spot");
        int ownerId = Integer.parseInt(request.getParameter("owner_ID"));
        int carId = Integer.parseInt(request.getParameter("car_ID"));
        carBean.updateCar(carId,licensePlate,parkingSpot,ownerId);

        response.sendRedirect(request.getContextPath()+"/Cars");
    }
}
