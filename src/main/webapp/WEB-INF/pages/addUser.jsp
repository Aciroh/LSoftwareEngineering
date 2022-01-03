<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:pageTemplate pageTitle="AddUser">

    <form class="needs-validation" novalidate method="post" action="${pageContext.request.contextPath}/AddUser">
        <label for="username">Username</label>
        <input required type="text" class="form-control" id="username" name="username" placeholder="username">
        <label for="email">Email</label>
        <input required type="email" class="form-control" id="email" name="email" placeholder="your@email.net">
        <label for="password">Password</label>
        <input required type="password" class="form-control" id="password" name="password" placeholder="password">
        <label for="position">Position</label>
        <select class="custom-select d-block w-100" id="position" name="position" required>
            <option value="">Choose...</option>
            <option value="ADMINISTRATOR">Administrator</option>
            <option value="CLIENT">Client</option>
        </select>

        <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>
    </form>

    <c:forEach var="user" items="${users}" varStatus="status">
        ${user.id} ${user.username}
    </c:forEach>

    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
            'use strict';

            window.addEventListener('load', function() {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');

                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
</t:pageTemplate>
