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
      <div class="title">My informations:</div>
      <div class="content">
        <form action="#" method="post">
          <div class="user-details">
            <div class="input-box">
              <span class="details">First Name</span>
              <input type="text" name="nom" placeholder="Enter your First Name" required />
            </div>
            <div class="input-box">
              <span class="details">Name</span>
              <input type="text" name="prenom" placeholder="Enter your name" required />
            </div>
            <div class="input-box">
              <label for="date"  class="details">date of birth</label>
              <input type="date" name="anniv" id="date" name="date" />
            </div>
            <div class="input-box">
              <span class="details">Place of birth</span>
              <input
                type="text"
                placeholder="Enter your Place of birth" name="adresse"
                required
              />
            </div>

        </form>
      </div>
    </div>
  </body>
</html>
<?php 
include 'affichageinfo.php';
?>