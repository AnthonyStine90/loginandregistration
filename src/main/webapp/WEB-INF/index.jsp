<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="
    <c:url value="/resources/css/sketchy.css" />
    " rel="stylesheet">
    <title>Login and Registration</title>
  </head>
  <body>
    <div class="container">
      <h1>Welcome!</h1>
      <h3>Join our growing community.</h3>

      <div class="container">
        <form:form action="/register" method="post" modelAttribute="newUser">
          <h3>Register</h3>
          <div class="form-group">
            <div class="form-group">
              <div>
                <form:errors path="userName" class="text-danger"></form:errors>
              </div>
              <form:label path="userName" class="form-label mt-4"
                >User Name:</form:label
              >
              <form:input path="userName" class="form-control"></form:input>
            </div>
            <div class="form-group">
              <div>
                <form:errors path="email" class="text-danger"></form:errors>
              </div>
              <form:label path="email" class="form-label mt-4"
                >Email:</form:label
              >
              <form:input path="email" class="form-control"></form:input>
            </div>
            <div class="form-group">
              <div>
                <form:errors path="password" class="text-danger"></form:errors>
              </div>
              <form:label path="password" class="form-label mt-4"
                >Password:</form:label
              >
              <form:input path="password" class="form-control"></form:input>
            </div>
            <div class="form-group">
              <div>
                <form:errors path="confirm" class="text-danger"></form:errors>
              </div>
              <form:label path="confirm" class="form-label mt-4"
                >Confirm Password:</form:label
              >
              <form:input path="confirm" class="form-control"></form:input>
            </div>
          </div>
          <button type="submit" class="btn btn-primary mt-4">
            Create User
          </button>
        </form:form>
      </div>

      <div class="container mt-4">
        <form:form action="/login" method="post" modelAttribute="newLogin">
          <h3>Login</h3>
          <div class="form-group">
            <div class="form-group">
              <div>
                <form:errors path="email" class="text-danger"></form:errors>
              </div>
              <form:label path="email" class="form-label mt-4"
                >Email:</form:label
              >
              <form:input path="email" class="form-control"></form:input>
            </div>
            <div class="form-group">
              <div>
                <form:errors path="password" class="text-danger"></form:errors>
              </div>
              <form:label path="password" class="form-label mt-4"
                >Password:</form:label
              >
              <form:input path="password" class="form-control"></form:input>
            </div>
          </div>
          <button type="submit" class="btn btn-primary mt-4">Login</button>
        </form:form>
      </div>
    </div>
  </body>
</html>
