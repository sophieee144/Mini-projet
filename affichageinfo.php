<?php


$conn=mysqli_connect('localhost','root','','projetdb');

        if(!$conn){
            die("failed");
        } else{
           /* echo"db connected ";*/
        }
        // Vérifier si un ID d'étudiant est passé en paramètre (par exemple, dans l'URL)
if (isset($_GET['id']) && !empty($_GET['id'])) {
    // Récupérer l'ID de l'étudiant depuis l'URL et le protéger contre les injections SQL
    $id = mysqli_real_escape_string($conn, $_GET['id']);

    // Requête SQL pour récupérer les informations de l'étudiant en fonction de son ID
    $sql = "SELECT * FROM etudiant WHERE id = '$id'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // L'étudiant existe, récupérer ses informations
        $row = $result->fetch_assoc();
        $nom = $row['nom'];
        $prenom = $row['prenom'];
        $anniv = $row['datenaiss'];
        $adresse = $row['adress'];

        // Afficher les informations dans les champs du formulaire
        echo '<script>
                document.getElementsByName("nom")[0].value = "' . $nom . '";
                document.getElementsByName("prenom")[0].value = "' . $prenom . '";
                document.getElementsByName("date")[0].value = "' . $anniv . '";
                document.getElementsByName("adresse")[0].value = "' . $adresse . '";
              </script>';
    } else {
        // L'étudiant n'existe pas
        echo "Aucun étudiant trouvé avec cet ID.";
    }
} else {
    // Pas d'ID d'étudiant passé en paramètre
    echo "ID d'étudiant non spécifié.";
}

$conn->close();
?>