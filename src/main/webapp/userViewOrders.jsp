<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>User View Orders Page</title>
  <link rel="stylesheet" href="Styles/bulma.css">
</head>

<body>
  <c:if test="${sessionScope.username != null}">

<section class="hero is-primary">
    <div class="hero-body">
	<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item is-size-1">
      Simply Shopping
    </a>

    
  </div>

  <div id="navbar" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item" href="mainStore.jsp">
        Home
      </a>
	<a class="navbar-item" href="cart.jsp">
        Shopping Cart
      </a>
      
    </div>

  <div class="navbar-end">
      <div class="navbar-item">
        <p>Welcome, <%= request.getSession().getAttribute("username")%></p>
        </div>
      </div>
    </div>
    </nav>
  </div>
</section>
<form action="UserViewOrderItems" method="get">
<section>
	<div class="container">
	<div class="column is-full">
	<table class="table is-striped is-fullwidth">
		<thead>
		<tr>
			<th>Order ID</th>
			<th>Total</th>
			<th class="has-text-right">View Items</th>
		</tr>
		</thead>
		<tbody>
		
		<c:forEach items="${info}" var="order">
		<tr>
			<td><c:out value="${order.orderID}"/></td>
			<td><fmt:formatNumber type="number" pattern="0.00" value="${order.orderTotal}"/></td>
			<td class="has-text-right"><button type="submit" name="orderID" value="${order.orderID}" class="button is-link is-right">View Order</button></td>
		</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
	
</section>
</form>
</c:if>
  <c:if test="${sessionScope.username == null}">

<section class="hero is-primary">
    <div class="hero-body">
	<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item is-size-1">
      Simply Shopping
    </a>

    
  </div>

  <div id="navbar" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item" href="mainStore.jsp">
        Home
      </a>

      <a class="navbar-item" href="adminLogin.jsp">
        Admin Login
      </a>
      <a class="navbar-item" href="userHome.jsp">
        User Profile
      </a>
 	<a class="navbar-item" href="cart.jsp">
        Shopping Cart
      </a>
      
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <a class="button is-primary" href="signup.jsp">
            <strong>Sign up</strong>
          </a>
          <a class="button is-light" href="login.jsp">
            Log in
          </a>
        </div>
      </div>
    </div>
  </div>
</nav>
</div>
</section>
  <section class = "section">
<div class="container">
  <div class="columns is-centered">  
    <div class="column is-one-quarter">
	<div class="field is-grouped">
  	<p class="control">
		<a href ="login.jsp"><button class="button is-link">Login</button></a>
	</p>
	<p class="control">	
		<a href="signup.jsp"><button class="button is-primary">Signup</button></a>
		</p>
    </div>
    </div>
    </div>
    </div>
    </section>
    </c:if>
</body>
</html>