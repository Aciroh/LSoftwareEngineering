

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>

        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="${pageContext.request.contextPath}">Parking lot</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav me-auto mb-2 mb-md-0">
                        <li class="nav-item">
                            <a class="nav-link  ${pageContext.request.requestURI eq '/LSoftwareEngineering/about.jsp' ? ' active' : ''}" 
                               href="${pageContext.request.contextPath}/about.jsp">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link ${pageContext.request.requestURI eq '/LSoftwareEngineering/WEB-INF/pages/Cars.jsp' ? ' active' : ''}" 
                               href="${pageContext.request.contextPath}/Cars">Cars</a>
                        </li>
                    </ul>
                    <ul class="navbar-navd-flex">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </body>
</html>
