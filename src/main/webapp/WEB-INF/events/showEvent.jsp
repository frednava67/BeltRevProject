<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/style.css">

    <title>${event.name}</title>
</head>

<body>
    <div class="container-fluid">

        <div class="row">
        	<div class="col-xl-1 col-lg-1 col-med-1"></div>
		    <h1>${event.name}</h1>
		</div>
        <div class="row">		
        	<div class="col-xl-1 col-lg-1 col-med-1"></div>
            <div class="col-xl-6 col-lg-6 col-med-6">
            	<br>
	            <label>Host: ${event.host.first_name} ${event.host.last_name}</label><br>
	            <label>Date: ${event.eventDate}</label><br>
				<label>Location: ${event.location}, ${event.state}</label><br>
	            <label>People who are attending this event: ${event.users.size()}</label><br>
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <th>Name</th>
                        <th>Location</th>
                    </thead>
                    <tbody>
                        <c:forEach items="${event.users}" var="attendee">
                            <tr>
                                <td>${attendee.first_name} ${attendee.last_name}</td>
                                <td>${attendee.location}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>	            
	            
	            
	            
	            
	            
            </div>
            <div class="col-xl-6 col-lg-6 col-med-6">
            </div>
        </div>
    </div>
</body>
</html>