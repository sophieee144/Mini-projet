<?php


$conn=mysqli_connect('localhost','root','','projetdb');

        if(!$conn){
            die("failed");
        } else{
           /* echo"db connected ";*/
        }

        if(isset($_POST['btn'])){
                $nom = $_POST['nom'];
                $prenom = $_POST['prenom'];
                $anniv = $_POST['anniv'];
                $adresse = $_POST['adresse'];
                $email = $_POST['e-mail'];
                $motdepasse = $_POST['mdps'];
                $confirmerMotdepasse = $_POST['conf']; // Nom de champ corrigé
                 // Vérifier si les mots de passe correspondent
    if ($motdepasse === $confirmerMotdepasse) {
        // Préparer la requête SQL pour insérer les données
        $sql = "INSERT INTO etudiant (nom, prenom, datenaiss, adress, email, password) 
                VALUES ('$nom', '$prenom', '$anniv', '$adresse', '$email', '$motdepasse')";

        if (mysqli_query($conn, $sql)) {
                $last_id = mysqli_insert_id($conn); // Get the ID of the last inserted record
                echo "<p class='alert alert-success p-3 text-center'>Ajout effectué avec succès. ID: $last_id</p>";
                exit(header("Location: home.php?id=$last_id")); // Redirect with the ID
                 } else {
        echo  "<p class='alert alert-success p-3 text-center'>Erreur</p>". $sql . "<br>" . mysqli_error($conn);
         }

         
        } else {
           echo"<p class='alert alert-success p-3 text-center'>Reessayer</p>";
        }
        
        }

?>



