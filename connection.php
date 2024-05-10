<?php
$conn=mysqli_connect('localhost','root','','projetdb');
// Vérifier si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les valeurs du formulaire
    $email = $_POST['e-mail'];
    $password = $_POST['mdps'];

    // Vérifier si l'utilisateur existe dans la base de données
    $sql = "SELECT * FROM  WHERE email = '$email' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // L'utilisateur existe, rediriger vers une page sécurisée
        header("Location: home.php");
        exit();
    } else {
        // L'utilisateur n'existe pas, afficher un message d'erreur
        echo '<script>alert("Email ou mot de passe incorrect.");</script>';
    }
}

$conn->close();
?>
