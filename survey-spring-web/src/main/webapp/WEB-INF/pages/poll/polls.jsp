<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title><spring:message code="polls"/></title>
<link rel='stylesheet'
	href='/survey-spring-web/webjars/bootstrap/3.3.6/css/bootstrap.min.css'></link>
</head>
<body>
	<script type="text/javascript" src="/survey-spring-web/webjars/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript"
        src="/survey-spring-web/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <c:import url="/WEB-INF/pages/common/menu.jsp"></c:import>
    
	<table class="table table-striped">
		<thead>
			<tr>
				<th><spring:message code="pollName" /></th>
<%-- 				<th><spring:message code="owner" /></th> --%>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${polls}" var="poll" varStatus="status">
				<tr>
					<td>${poll.name}</td>
<%-- 					<td>${poll.owner}</td> --%>
					<td>
						<form:form class="form-horizontal" method="POST"> 
							<a id="edit" class="btn btn-primary" href="/survey-spring-web/poll/${poll.name}"><span class="glyphicon glyphicon-pencil" ></span></a>
                            <button id="delete" class="btn btn-primary" type="submit" formaction="/survey-spring-web/poll/delete/${poll.name}">
                            <span class="glyphicon glyphicon-remove" ></span>
                            </button>
						</form:form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form:form action="/survey-spring-web/poll/new" method="GET">
		<input id="addPoll" class="btn btn-primary" type="submit" value="Add Poll" />
	</form:form>
</body>
</html>