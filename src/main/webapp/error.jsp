<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lỗi hệ thống</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            padding: 30px;
        }
        .error-box {
            background-color: #f1b0b7;
            border: 1px solid #f5c6cb;
            padding: 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="error-box">
    <h2>⚠️ Có lỗi xảy ra!</h2>
    <p><strong>Chi tiết:</strong> ${errorMessage}</p>
</div>
</body>
</html>
