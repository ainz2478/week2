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
    <th>班級</th>
    <th>人数</th>
    <th>操作</th>
  </tr>
  <c:forEach items="${list }" var="list">
  <tr>
    <td>${list.cid}</td>
    <td>${list.cname}</td>
    <td>${list.ctype}</td>
    <td><a href="slist?id=${list.cid }">查看</a></td>
  </tr>
  </c:forEach>
</table>

</body>
</html>