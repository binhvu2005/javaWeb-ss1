package com.data.ss1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/student-ticket")
public class StudentTicketServlet extends HttpServlet {
    private static List<Student> studentList = new ArrayList<>();
    @Override
    public void init() throws ServletException {
        super.init();
        // Giả lập dữ liệu
        studentList.add(new Student("Nguyễn Văn A", "12A1", "Xe máy", "59X1-123.45"));
        studentList.add(new Student("Trần Thị B", "11B2", "Xe đạp", "Không có"));
        studentList.add(new Student("Lê Văn C", "10C3", "Xe máy", "62Y2-678.90"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("students", studentList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("listStudent.jsp");
        dispatcher.forward(req, resp);
    }
}
