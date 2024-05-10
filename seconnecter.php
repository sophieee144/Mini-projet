<?php 
include 'connection.php';

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <title>Get started</title>
    <link rel="stylesheet" href="formulaire.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    <div class="container">
      <div class="title">Se connecter</div>
      <div class="content">
        <form action="home.php" method="post">
          <div class="user-details">
            <div class="input-box">
              <span class="details">Email</span>
              <input type="text" name="e-mail" placeholder="Enter your email" required />
            </div> </br>
          
            <div class="input-box">
              <span class="details">Password</span>
              <input type="password" name=" mdps" placeholder="Enter your password" required />
            </div>
            
          <div class="button"> 
            <input type="submit" name="btn" value="Login" />
          </div>
        </form>
      </div>
    </div>
  </body>
</html>

