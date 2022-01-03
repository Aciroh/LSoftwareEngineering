<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:pageTemplate pageTitle="AddCar">

    <form class="needs-validation" novalidate method="post" action="${pageContext.request.contextPath}/AddCar">
        <label for="licensePlate">License Plate</label>
        <input required type="text" class="form-control" id="licensePlate" name="license_plate">
        <label for="parkingSpot">Parking Spot</label>
        <input required type="text" class="form-control" id="parkingSpot" name="parking_spot">
        <label for="ownerID">Owner</label>
        <select class="custom-select d-block w-100" id="ownerID" name="owner_ID" required>
            <option value="">Choose...</option>
            <c:forEach var="user" items="${users}" varStatus="status">
                <option value="${user.id}">${user.username}</option>
            </c:forEach>
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
