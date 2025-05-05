<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.data.ss1.Task" %>
<html>
<head>
  <title>To-Do List</title>
</head>
<body>
<h2>To-Do List</h2>

<form action="todo" method="post">
  <input type="text" name="task" placeholder="Nhập công việc mới..." required />
  <input type="submit" value="Thêm công việc" />
</form>

<hr>

<ul>
  <%
    List<Task> tasks = (List<Task>) request.getAttribute("tasks");
    if (tasks != null && !tasks.isEmpty()) {
      for (int i = 0; i < tasks.size(); i++) {
        Task task = tasks.get(i);
  %>
  <li style="margin-bottom: 8px;">
    <%= task.isCompleted() ? "<s>" + task.getDescription() + "</s>" : task.getDescription() %>
    <% if (!task.isCompleted()) { %>
    <a href="todo?complete=<%= i %>">[Đánh dấu hoàn thành]</a>
    <% } %>
  </li>
  <%
    }
  } else {
  %>
  <li>Không có công việc nào.</li>
  <%
    }
  %>
</ul>
</body>
</html>
