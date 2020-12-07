<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/app.js"></script>
</head>
<body>
        
        <h3>Submitted Info:</h3>
        <table>
        <tr>
        	<td>Name:</td>
        	<td><c:out value="${name}"></c:out></td>
       	</tr>
       	<tr>
        	<td>Location:</td>
        	<td><c:out value="${dojo}"></c:out></td>
       	</tr>
       	<tr>
        	<td>Language:</td>
        	<td><c:out value="${lang}"></c:out></td>
       	</tr>
       	<tr>
        	<td>Comment:</td>
        	<td><c:out value="${comment}"></c:out></td>
       	</tr>
        </table>
        
        
        <a href="/">Back</a>
        
</body>
</html>