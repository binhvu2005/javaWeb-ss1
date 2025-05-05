<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin người dùng</title>
    <style>
        table {
            width: 50%;
            margin: 50px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h2 style="text-align:center;">Thông tin người dùng</h2>
<table>
    <tr>
        <th>Tên</th>
        <th>Tuổi</th>
    </tr>
    <tr>
        <td><%= request.getAttribute("userName") %></td>
        <td><%= request.getAttribute("userAge") %></td>
    </tr>
</table>
</body>
</html>
