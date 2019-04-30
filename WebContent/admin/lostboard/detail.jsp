<%@page import="com.aroundog.model.domain.LostBoard"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	LostBoard lostboard = (LostBoard)request.getAttribute("lostboard");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

ul li {
  border: 1px solid #ddd;
  margin-top: -1px; /* Prevent double borders */
  background-color: #f6f6f6;
  padding: 12px;
}
</style>
</head>
<script>
window.onload=function(){
	//alert("작동!!!");
}
</script>
<body>

<h2>List Group</h2>
<p>Transform a basic list into a list group:</p>

<ul>
  <li>Adele</li>
  <li>Agnes</li>
  <li>Billy</li>
  <li>Bob</li>
  <li>Calvin</li>
  <li>Christina</li>
  <li>Cindy</li>
</ul>

</body>
</html>
