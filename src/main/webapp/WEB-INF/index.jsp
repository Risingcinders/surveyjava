<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/app.js"></script>
</head>
<body>       
        <form method="POST" action="/passsubmit">      
        <label>  Your Name:
        <br>
        <input type="text" name="name">
        </label>
        
        <label>  Dojo Location:
        <br>
        <select name="dojo">
        	<option value="online">Online</option>
        	<option value="chicago">Chicago</option>
        	<option value="austin">Austin</option>
        </select>
        </label>
        
        <label>  Favorite Language:
        <br>
        <select name="lang">
        	<option value="eng">English</option>
        	<option value="python">Python</option>
        	<option value="java">Java</option>
        </select>
        </label>
        
        <label> Comment (optional):
        <br>
        <textarea name="comment"></textarea>
        
        </label>
        <button>Submit</button>
        </form>
</body>
</html>