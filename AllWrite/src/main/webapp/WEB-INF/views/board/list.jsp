<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

     <div>
        <table>
          <thead>
            <tr>
              <th>#번호</th>
              <th>이름</th>
              <th>패스워드</th>
              <th>메모</th>
            </tr>            
          </thead>
          <c:forEach items="${list}" var="board">
            <tr>
              <td>${board.bno}</td>
              <td><a href='/board/get?bno=<c:out value="${board.bno}"/>'> ${board.bname}</a></td>
              <td>${board.bpassword}</td>
              <td>${board.bmemo}</td>
            </tr>
          </c:forEach>
        </table>
        	<button onclick="location.href='/board/register'">새 글쓰기</button>
	</div>

</body>
</html>