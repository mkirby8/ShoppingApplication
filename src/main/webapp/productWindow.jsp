<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Product Window</title>
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

      <a class="navbar-item" href="adminLogin.jsp">
        Admin Login
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

<section class="section">
<div class="container">
  <div class="columns is-vcentered">
    <div class="column is-6">
    <h1 class="title is-size-1 has-text-centered">Product Name</h1>
         <img src="resources/temp.png" style="height:25vmax; width:100em">
    
    </div>
    <div class="column is-6 has-text-centered">
      <div class="is-size-4 pb-4">Product description</div>
      <p class="pb-4">Price: </p>
      <div class="select">
      	<select>
      		<option>S</option>
      		<option>M</option>
      		<option>L</option>
      		<option>XL</option>
      	</select>
      </div>
      <div class="select">
        <select>
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </div>
      
      <a href ="cart.jsp"><button class="button is-primary">Add to cart</button></a>
      
    </div>
  </div>
  </div>
  </section>
  
</body>

</html>