<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<jsp:include page="userHeader.jsp"/>

<body>
<h1> User details:</h1>
Email: <c:out value="${user.email}"/><br>
Username: <c:out value="${user.username}"/><br>
Group: <c:out value="${group.name}"/> <br>
 <br>

<h1>User's solutions: </h1>

<table>
    <tr><th>Created</th> <th>Updated</th> <th>Solution description</th> <th>Exercise title</th> <th>Exercise description</th> <th>Grade</th></tr>
    <c:forEach items="${solutionsExercises}" var="solution">
        <tr>
            <c:forEach items="${solution}" var="item">
                <td>${item}</td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>

<h2> GPA: ${gpa}</h2>

 <h1> All unsolved exercises:</h1>
<table>
    <tr> <th>Title</th> <th>Description</th> </tr>
    <c:forEach items="${exercises}" var="exercise">
        <tr>
            <td>${exercise.title}</td>
            <td>${exercise.description}</td>
            <td> <a href="/userPanel/addSolution?id=${exercise.id}"> [add Solution]</a> </td>

        </tr>
    </c:forEach>
</table>

</body>


</html>
