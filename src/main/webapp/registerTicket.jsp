<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Đăng ký vé xe</title>
</head>
<body>
<h2>Form đăng ký vé xe cho học sinh</h2>
<form action="register-ticket" method="post">
  <label>Họ và tên:</label>
  <input type="text" name="fullName" required><br><br>

  <label>Lớp:</label>
  <input type="text" name="className" required><br><br>

  <label>Loại xe:</label>
  <input type="text" name="vehicleType" required><br><br>

  <label>Biển số xe:</label>
  <input type="text" name="plateNumber" required><br><br>

  <input type="submit" value="Đăng ký">
</form>
</body>
</html>
