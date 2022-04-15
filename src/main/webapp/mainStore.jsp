<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Simply Shopping Home Page</title>
  <link rel="stylesheet" href="Styles/bulma.css">
</head>

<body>
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
</c:if>

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
        <p>Welcome, <%= request.getSession().getAttribute("username")%></p>
        </div>
      </div>
    </div>
  
</nav>
</div>
</section>
</c:if>

<br>
<h1 class="title has-text-centered">Women</h1>

  <div class="columns px-5 pt-5">
    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    
  
</div>

<h1 class="title has-text-centered">Men</h1>

  <div class="columns px-5 pt-5">
    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=6"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=1"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    
  
</div>
</body>

</html>