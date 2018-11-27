<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Reports</title>

<link href="${pageContext.request.contextPath}/resources/css/paper-kit.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/nucleo-icons.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/demo.css" rel="stylesheet" >

<!-- Core JS Files -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.12.1.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

<!--  Paper Kit Initialization and functions -->
<script src="${pageContext.request.contextPath}/resources/js/paper-kit.js?v=2.1.0"></script>
 
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,300,700' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
 
<style>
#stay {
	   position:absolute;
	   bottom:0;
	   width:100%;
	   height:60px;   /* Height of the footer */
	   background:#6cf;
	}

</style> 
</head>
<jsp:include page="_menu.jsp" />
<body>
 
 <main style="padding:100px">
   
 <div class="container">
   <!--<div class="page-title">Reports</div>
  
   <div class="account-container">-->
     <h5>Monthly Sales</h5>
     <form action="monthlySales.html" target = "_blank" id="form1">
     First Month: <input type="text" name="month1">
     Last Month: <input type="text" name="month2"><br>
     <input type="submit" value="Generate">
     </form>
     <br>    
     <h5>Yearly Sales</h5>
     <form action="/Reports.php" id="form2">
     First Year: <input type="text" name="year1">
     Last Year: <input type="text" name="year2"><br>
     <input type="submit" value="Generate">
     </form>
     <br>     
     <h5>Inventory Levels</h5>
     <form action="/Reports.php" id="form3">
     Product Name: <input type="text" name="product"><br>
     <input type="submit" value="Generate">
     </form>
     <br>
     <h5>Inventory Costs</h5>
     <form action="/Reports.php" id="form4">
     Product Name: <input type="text" name="product2"><br>
     <input type="submit" value="Generate">
     </form>
     <br>
     <h5>Customer List</h5>
     <form action="/Reports.php" id="form4">
     <input type="submit" value="Generate">
     </form>
     <br>
     <h5>Mailing Labels</h5>
     <form action="/Reports.php" id="form6">
     Customer ID: <input type="text" name="customerID"><br>
     <input type="submit" value="Generate">
     </form>
  <!--</div>-->
 
 </div>
 </main>  
 
</body>
<div id="stay">
 <jsp:include page="_footer.jsp" />
 </div>
</html>