package com.data.ss1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "errorServlet", value = "/error-servlet")
public class ErrorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Lỗi cố ý: chia cho 0
            int result = 10 / 0;

            response.setContentType("text/html");
            response.getWriter().println("Kết quả là: " + result);
        } catch (Exception e) {
            // Đặt thông tin lỗi trong request
            request.setAttribute("errorMessage", "Đã xảy ra lỗi trong quá trình xử lý: " + e.getMessage());

            // Chuyển hướng đến trang error.jsp
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
