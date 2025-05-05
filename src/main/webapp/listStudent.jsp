<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.data.ss1.Student" %>
<html>
<head>
  <title>Danh sách vé xe sinh viên</title>
</head>
<body>
<h2>Danh sách sinh viên đã đăng ký vé xe</h2>
<table border="1" cellpadding="10">
  <tr>
    <th>Họ và Tên</th>
    <th>Lớp</th>
    <th>Loại Xe</th>
    <th>Biển Số Xe</th>
  </tr>
  <%
    List<Student> students = (List<Student>) request.getAttribute("students");
    if (students != null) {
      for (Student student : students) {
  %>
  <tr>
    <td><%= student.getName() %></td>
    <td><%= student.getClassName() %></td>
    <td><%= student.getVehicleType() %></td>
    <td><%= student.getLicensePlate() %></td>
  </tr>
  <%
      }
    }
  %>
</table>
</body>
</html>
