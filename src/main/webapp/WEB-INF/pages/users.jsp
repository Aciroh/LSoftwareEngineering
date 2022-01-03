<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:pageTemplate pageTitle="Users">
    <h1>Those are the cars in the Parking Lot</h1>
    <c:forEach var="fraier" items="${users}" varStatus="status">
        <div class="row">
            <div class="col-md-4">
                ${fraier.username}
            </div>
            <div class="col-md-4">
                ${fraier.position}
            </div>
            <div class="col-md-4">
                ${fraier.email}
            </div>
        </div>
    </c:forEach>

    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>
