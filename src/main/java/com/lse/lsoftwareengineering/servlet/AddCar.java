package com.lse.lsoftwareengineering.servlet;

import com.lse.lsoftwareengineering.common.UserDetails;
import com.lse.lsoftwareengineering.ejb.CarBean;
import com.lse.lsoftwareengineering.ejb.UserBean;

import javax.annotation.security.DeclareRoles;
import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

import static java.lang.Integer.*;
@DeclareRoles({"AdminRole","ClientRole"})
@ServletSecurity(value=@HttpConstraint(rolesAllowed = {"AdminRole"}))
@WebServlet(name = "AddCar", value = "/AddCar")
public class AddCar extends HttpServlet {

    @Inject
    UserBean userBean;

    @Inject
    CarBean carBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<UserDetails> users = userBean.getAllUsers();
        request.setAttribute("users",users);
        request.getRequestDispatcher("/WEB-INF/pages/addCar.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String licensePlate;
        String parkingSpot;
        int ownerID;

        licensePlate = request.getParameter("license_plate");
        parkingSpot = request.getParameter("parking_spot");
        ownerID = Integer.parseInt(request.getParameter("owner_ID"));

        carBean.createCar(licensePlate,parkingSpot,ownerID);

        response.sendRedirect(request.getContextPath()+"/Cars");

    }
}
