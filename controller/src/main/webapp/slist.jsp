<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
  <tr>
    <th>编号</th>
    <th>名字</th>
    <th>年龄</th>
    <th>性别</th>
    <th>班级</th>
  </tr>
  <c:forEach items="${page.list }" var="list">
  <tr>
    <td>${list.sid}</td>
    <td>${list.sname}</td>
    <td>${list.age}</td>
    <td>${list.sex}</td>
    <td>${list.cname}</td>
  </tr>
  </c:forEach>
  <tr>
  <td colspan="5">
  <a href="slist?pageNum=1">首页</a>
  <a href="slist?pageNum=${page.pageNum-1}">上一页</a>
  <a href="slist?pageNum=${page.pageNum+1}">下一页</a>
  <a href="slist?pageNum=${page.pages}">尾页</a>
  </td>
  </tr>
</table>

</body>
</html>