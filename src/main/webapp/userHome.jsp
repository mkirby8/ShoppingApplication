<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>User Home Page</title>
  <link rel="stylesheet" href="Styles/bulma.css">
</head>

<body>
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

  
  </div>
</nav>
</div>
</section>

<section class="section">
<h1 class="title is-size-1 has-text-centered"> User  Home</h1>
</section>
<section class = "section">
<div class="container">
  <div class="columns is-centered">
    <div class="column is-one-quarter">
	<div class="field is-grouped">
	<p class="control">
		<a href ="userViewOrders.jsp"><button class="button is-link">View My Orders</button></a>
	</p>
	<p class="control">	
		<a href="userViewInfo.jsp"><button class="button is-primary">View My Information</button></a>
		</p>
	</div>
	</div>
	</div>
	</div>


</section>
</body>
</html>