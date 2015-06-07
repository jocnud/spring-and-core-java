<%@ page language="java" contentType="text/html;charset=ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Portal</title>
</head>
<body>
      <h1>Welcome Page !</h1>

      <h2>Welcome : ${pageContext.request.userPrincipal.name}</h2>
      <h3>
            <a href="<c:url value="/home" />"> Go to your home page</a>
      </h3>
      <h3>
            <form name="logout" action="/logout" method="post">
                  <input type="submit" value="Log out" /> <input type="hidden"
                        name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
      </h3>
</body>
</html>