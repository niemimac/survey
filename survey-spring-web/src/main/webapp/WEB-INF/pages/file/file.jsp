<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title><spring:message code="file"/></title>
<link rel='stylesheet' href='/survey-spring-web/webjars/bootstrap/3.3.6/css/bootstrap.min.css'></link>
</head>
<body>
	<script type="text/javascript" src="/survey-spring-web/webjars/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript"
        src="/survey-spring-web/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <c:import url="/WEB-INF/pages/common/menu.jsp"></c:import>

    <form method="POST" enctype="multipart/form-data" action="save">
        <spring:message code="fileToUpload" /> <input type="file" name="file" /> <input type="submit">
        <spring:message code="fileUpload" />
    </form>
</body>
</html>