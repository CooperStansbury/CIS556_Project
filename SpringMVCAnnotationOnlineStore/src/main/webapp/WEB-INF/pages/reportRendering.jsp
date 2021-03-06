<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
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
 
</head>
<jsp:include page="_menu.jsp" />
<body>
 
 <main style="padding:100px">
   
 <div class="report-container">
   <div class>
 
 	<!--	<c:forEach items="${customers}" var="customer">
 			<p> Customer ID: ${customer.id} </p>
 			<p> Customer Name: ${customer.firstName} ${customer.lastName} </p>
 		</c:forEach>-->
 	  <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/jewlz"
         user = "root"  password = "YourStrong!Passw0rd"/>
 
	  <c:if test="${param.type == 'monthlySales'}">
	  <div class="page-title">Monthly Sales Report</div></br>
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT DATE_FORMAT(Order_Date, '%M %Y') AS Order_Month,
         DATE_FORMAT(Order_Date, '%Y%m') num_month,
         FORMAT(ROUND(SUM(Order_Total), 2), 2) AS Price,
         FORMAT(ROUND(SUM(Order_Total - (Product_Quantity * Product_Base_Wholesale_Price)), 2), 2) AS Profit
         FROM orders JOIN product ON orders.Product_ID = product.Product_ID
         WHERE Order_Date
         BETWEEN STR_TO_DATE( CONCAT('01 ', ?), '%d %M %Y') AND LAST_DAY(STR_TO_DATE( CONCAT('01 ', ?), '%d %M %Y'))
         GROUP BY DATE_FORMAT(Order_Date, '%M %Y'), 
         DATE_FORMAT(Order_Date, '%Y%m')
         ORDER BY num_month
         <sql:param value = "${param.month1}" />
         <sql:param value = "${param.month2}" />
      </sql:query>
      <sql:query dataSource = "${snapshot}" var = "categories">
         SELECT DATE_FORMAT(Order_Date, '%M %Y') AS Order_Month,
         DATE_FORMAT(Order_Date, '%Y%m') num_month,
         Product_Category,
         SUM(Product_Quantity) AS Quantity_Sold
         FROM orders JOIN product ON orders.Product_ID = product.Product_ID
         WHERE Order_Date
         BETWEEN STR_TO_DATE( CONCAT('01 ', ?), '%d %M %Y') AND LAST_DAY(STR_TO_DATE( CONCAT('01 ', ?), '%d %M %Y'))
         GROUP BY DATE_FORMAT(Order_Date, '%M %Y'), 
         DATE_FORMAT(Order_Date, '%Y%m'),
         Product_Category
         ORDER BY num_month, Product_Category
         <sql:param value = "${param.month1}" />
         <sql:param value = "${param.month2}" />
      </sql:query>
      <table border = "1" width = "100%">
         <tr>
            <th>Month</th>
            <th>Total Sales</th>
            <th>Total Profit</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.Order_Month}"/></td>
               <td><c:out value = "${row.Price}"/></td>
               <td><c:out value = "${row.Profit}"/></td>
            </tr>
         </c:forEach>
      </table>
      <br>
      <table border = "1" width = "100%">
         <tr>
            <th>Month</th>
            <th>Product Category</th>
            <th>Quantity Sold</th>
         </tr>
         
         <c:forEach var = "row" items = "${categories.rows}">
            <tr>
               <td><c:out value = "${row.Order_Month}"/></td>
               <td><c:out value = "${row.Product_Category}"/></td>
               <td><c:out value = "${row.Quantity_Sold}"/></td>
            </tr>
         </c:forEach>
      </table>
   	  </c:if>

   	  <c:if test="${param.type == 'yearlySales'}">
   	  <div class="page-title">Yearly Sales Report</div></br>
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT YEAR(Order_Date) AS Order_Year, 
         FORMAT(ROUND(SUM(Order_Total), 2), 2) AS Price,
         FORMAT(ROUND(SUM(Order_Total - (Product_Quantity * Product_Base_Wholesale_Price)), 2), 2) AS Profit
         from orders JOIN product ON orders.Product_ID = product.Product_ID
         where YEAR(Order_Date) BETWEEN ? AND ?
         group by YEAR(Order_Date)
         order by YEAR(Order_Date)
         <sql:param value = "${param.year1}" />
         <sql:param value = "${param.year2}" />
      </sql:query>
      <sql:query dataSource = "${snapshot}" var = "categories">
         SELECT YEAR(Order_Date) AS Order_Year, 
         Product_Category,
         SUM(Product_Quantity) AS Quantity_Sold
         from orders JOIN product ON orders.Product_ID = product.Product_ID
         where YEAR(Order_Date) BETWEEN ? AND ?
         group by YEAR(Order_Date),
         Product_Category
         order by YEAR(Order_Date), Product_Category
         <sql:param value = "${param.year1}" />
         <sql:param value = "${param.year2}" />
      </sql:query>
      <table border = "1" width = "100%">
         <tr>
            <th>Year</th>
            <th>Total Sales</th>
            <th>Total Profit</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.Order_Year}"/></td>
               <td><c:out value = "${row.Price}"/></td>
               <td><c:out value = "${row.Profit}"/></td>
            </tr>
         </c:forEach>
      </table>
      <br>
      <table border = "1" width = "100%">
         <tr>
            <th>Year</th>
            <th>Product Category</th>
            <th>Quantity Sold</th>
         </tr>
         
         <c:forEach var = "row" items = "${categories.rows}">
            <tr>
               <td><c:out value = "${row.Order_Year}"/></td>
               <td><c:out value = "${row.Product_Category}"/></td>
               <td><c:out value = "${row.Quantity_Sold}"/></td>
            </tr>
         </c:forEach>
      </table>
   	  </c:if>

   	  <c:if test="${param.type == 'inventoryLevels'}">
   	  <div class="page-title">Inventory Report</div></br>
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT Product_ID, Product_Name, Product_Color, Product_Size, Number_In_Stock, FORMAT(Product_Base_Wholesale_Price, 2) AS Product_Base_Wholesale_Price,
          FORMAT(Product_Base_Wholesale_Price * Number_In_Stock, 2) AS Inventory_Cost from product;
      </sql:query>
      <sql:query dataSource = "${snapshot}" var = "sum_result">
         SELECT FORMAT(SUM(Product_Base_Wholesale_Price * Number_In_Stock), 2) AS Total_IC from product;
      </sql:query>
      <table border = "1" width = "100%" padding>
         <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Color</th>
            <th>Size</th>
            <th>Wholesale Price</th>
            <th>Stock</th>
            <th>Inventory Cost</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.Product_ID}"/></td>
               <td><c:out value = "${row.Product_Name}"/></td>
               <td><c:out value = "${row.Product_Color}"/></td>
               <td><c:out value = "${row.Product_Size}"/></td>
               <td><c:out value = "${row.Product_Base_Wholesale_Price}"/></td>
               <td><c:out value = "${row.Number_In_Stock}"/></td>
               <td><c:out value = "${row.Inventory_Cost}"/></td>
            </tr>
         </c:forEach>
         <c:forEach var = "sum_row" items = "${sum_result.rows}">
         	<tr>
         	   <td><c:out value = " "/></td>
               <td><c:out value = " "/></td>
               <td><c:out value = " "/></td>
               <td><c:out value = " "/></td>
               <td><c:out value = " "/></td>
               <td style="font-weight:bold"><c:out value = "Total:"/></td>
               <td style="font-weight:bold"><c:out value = "${sum_row.Total_IC}"/></td>
         	</tr>
         </c:forEach>
      </table>
   	  </c:if>

   	  <c:if test="${param.type == 'customerList'}">
   	  <div class="page-title">Customer List</div></br>
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from customer;
      </sql:query>
      <table border = "1" width = "100%">
         <tr>
            <th>Customer ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Zip</th>
            <th>Phone Number</th>
            <th>Email</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.Customer_ID}"/></td>
               <td><c:out value = "${row.Customer_First_Name}"/></td>
               <td><c:out value = "${row.Customer_Last_Name}"/></td>
               <td><c:out value = "${row.Customer_Street_Address}"/></td>
               <td><c:out value = "${row.Customer_City}"/></td>
               <td><c:out value = "${row.Customer_State}"/></td>
               <td><c:out value = "${row.Customer_Zip}"/></td>
               <td><c:out value = "${row.Customer_Phone_Number}"/></td>
               <td><c:out value = "${row.Customer_Email_Address}"/></td>
            </tr>
         </c:forEach>
      </table>
   	  </c:if>

   	  <c:if test="${param.type == 'mailingLabels'}">
   	  <div class="page-title">Mailing Label Sheet</div></br>
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT CONCAT(Customer_First_Name, ' ', Customer_Last_Name) AS Customer_Full_Name, Customer_Street_Address, 
         CONCAT(Customer_City, ', ', Customer_State, ' ', Customer_Zip) AS Customer_CSZ from customer where Customer_ID = ?;
         <sql:param value="${param.customerID}" />
      </sql:query> 
      <table border = "1" width = "100%">
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td align="center"><c:out value = "${row.Customer_Full_Name}"/><br><c:out value = "${row.Customer_Street_Address}"/><br><c:out value = "${row.Customer_CSZ}"/></td>
               <td align="center"><c:out value = "${row.Customer_Full_Name}"/><br><c:out value = "${row.Customer_Street_Address}"/><br><c:out value = "${row.Customer_CSZ}"/></td>
               <td align="center"><c:out value = "${row.Customer_Full_Name}"/><br><c:out value = "${row.Customer_Street_Address}"/><br><c:out value = "${row.Customer_CSZ}"/></td>
            </tr>
            <tr>
               <td align="center"><c:out value = "${row.Customer_Full_Name}"/><br><c:out value = "${row.Customer_Street_Address}"/><br><c:out value = "${row.Customer_CSZ}"/></td>
               <td align="center"><c:out value = "${row.Customer_Full_Name}"/><br><c:out value = "${row.Customer_Street_Address}"/><br><c:out value = "${row.Customer_CSZ}"/></td>
               <td align="center"><c:out value = "${row.Customer_Full_Name}"/><br><c:out value = "${row.Customer_Street_Address}"/><br><c:out value = "${row.Customer_CSZ}"/></td>
            </tr>
            <tr>
               <td align="center"><c:out value = "${row.Customer_Full_Name}"/><br><c:out value = "${row.Customer_Street_Address}"/><br><c:out value = "${row.Customer_CSZ}"/></td>
               <td align="center"><c:out value = "${row.Customer_Full_Name}"/><br><c:out value = "${row.Customer_Street_Address}"/><br><c:out value = "${row.Customer_CSZ}"/></td>
               <td align="center"><c:out value = "${row.Customer_Full_Name}"/><br><c:out value = "${row.Customer_Street_Address}"/><br><c:out value = "${row.Customer_CSZ}"/></td>
            </tr>            
         </c:forEach>
      </table>
   	  </c:if>
   </div>
 
 </div>
 </main>  
 
</body>
<div id="stay">
 <jsp:include page="_footer.jsp" />
 </div>
</html>