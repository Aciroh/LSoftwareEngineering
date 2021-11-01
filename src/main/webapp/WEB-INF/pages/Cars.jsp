<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:pageTemplate pageTitle="Cars">
    <h1>Those are the cars in the Parking Lot</h1>
    
    <table>
        <tr>
            <th>
                Names
            </th>
            <th>
                Spot
            </th>
            <th>
                Owner
            </th>
        </tr>
        <tr>
            <td>
                Car 1
            </td>
            <td>
                Spot 1
            </td>
            <td>
                User 1
            </td>
        </tr>
        <tr>
            <td>
                Car 2
            </td>
            <td>
                Spot 2
            </td>
            <td>
                User 2
            </td>
        </tr>
        <tr>
            <td>
                Car 3
            </td>
            <td>
                Spot 3
            </td>
            <td>
                User 3
            </td>
        </tr>
        
    </table>
    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5> 
</t:pageTemplate>
