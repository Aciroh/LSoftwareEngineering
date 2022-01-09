<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:pageTemplate pageTitle="Cars">
    <h1>Those are the cars in the Parking Lot</h1>
    <a class="btn btn-primary btn-lg ${pageContext.request.requestURI eq '/LSoftwareEngineering/WEB-INF/pages/addCar.jsp' ? ' active' : ''}"
       href="${pageContext.request.contextPath}/AddCar" role="button">Add car</a>
    <form method="post" action="${pageContext.request.contextPath}/Cars">
          <button class="btn btn-danger" type="submit">Delete Cars</button>
            <c:forEach var="car" items="${cars}" varStatus="status">
                <div class="row">
                    <div class="col-md">
                        <input type="checkbox" name="car_ids" value="${car.id}"/>
                    </div>
                    <div class="col-md-3">
                        ${car.licensePlate}
                    </div>
                    <div class="col-md-3">
                        ${car.parkingSpot}
                    </div>
                    <div class="col-md-3">
                        ${car.username}
                    </div>
                    <div class="col-md-1">
                        <img src="${pageContext.request.contextPath}/Photos?id=${car.id}" width="48"/>
                    </div>
                    <div class="col-md-2">
                        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/AddPhoto?id=${car.id}" role="button">Add Photo</a>
                    </div>
                    <div class="col-md-2">
                        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button">Edit Car</a>
                    </div>
                </div>
            </c:forEach>
    </form>
    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>
