package com.data.ss1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registerTicket", value = "/register-ticket")
public class RegisterTicket extends HttpServlet {

    // Phương thức doGet() cho phép nhận yêu cầu GET
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("registerTicket.jsp").forward(req, resp); // Chuyển hướng về trang đăng ký
    }

    // Phương thức doPost() để xử lý yêu cầu POST
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        handleRegister(req, resp);
    }

    protected void handleRegister(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String fullName = req.getParameter("fullName");
        String className = req.getParameter("className");
        String vehicleType = req.getParameter("vehicleType");
        String plateNumber = req.getParameter("plateNumber");

        boolean isValid = fullName != null && !fullName.isEmpty()
                && className != null && !className.isEmpty()
                && vehicleType != null && !vehicleType.isEmpty()
                && plateNumber != null && !plateNumber.isEmpty();

        if (isValid) {
            req.setAttribute("status", "success");
            req.setAttribute("fullName", fullName);
            req.setAttribute("className", className);
            req.setAttribute("vehicleType", vehicleType);
            req.setAttribute("plateNumber", plateNumber);
        } else {
            req.setAttribute("status", "fail");
        }

        req.getRequestDispatcher("resultRegister.jsp").forward(req, resp);
    }
}
