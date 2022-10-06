<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="left" required="true"%><%-- required을 꼭 써야하면 true 쓸지말지 모르면 가만히 .. --%>
<%@ attribute name="right"%>
<%@ attribute name="active" %> 

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    
	  <c:forEach begin="${left }" end="${right }" var="i">
	  	<li class="page-item ${active eq i ? 'active' : '' }"><a class="page-link" href="#">${i }</a></li>
	  </c:forEach>
	  
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>