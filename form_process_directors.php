<?php

include "navbar.php";
include "db_connect.php";

// Function to upload image and return the file path and include it in the database
function uploadImage($imageField)
{
    $target_dir = "uploads/";
    // Check if the file is uploaded
    if (isset($_FILES[$imageField]) && $_FILES[$imageField]['error'] == 0) {
        $target_file = $target_dir . basename($_FILES[$imageField]["name"]);
        if (move_uploaded_file($_FILES[$imageField]["tmp_name"], $target_file)) {
            return $target_file;
        }
    }
    return null;
}

// Upload images and get their paths
$photo = uploadImage('photo');

$sqlTemp = $conn->prepare("INSERT INTO directors (fname, lname, gender, description, movie1, movie2, movie3, photo) VALUES (?,?,?,?,?,?,?,?)");

$sqlTemp->bind_param("ssssssss", $fname, $lname, $gender, $description, $movie1, $movie2, $movie3, $photo);

$fname = $_POST['fname'];
$lname = $_POST['lname'];
$gender = $_POST['gender'];
$description = $_POST['description'];
$movie1 = $_POST['movie1'];
$movie2 = $_POST['movie2'];
$movie3 = $_POST['movie3'];

$sqlTemp->execute();


echo '<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center"></br><h3>Director Successfully Added!</h3><br>
            <img src="img/AITMovies_Black_mod_s.png" alt="Logo" width="469" height="144" class="d-inline-block align-text-top"><br><br>
            </br></br></br>';
echo "First Name: " . $fname . "<br>";
echo "Last Name: " . $lname . "<br>";
echo "Gender: " . $gender . "<br>";
echo "Description: " . $description . "<br>";



echo "<a href='javascript:history.go(-1)'>Back</a></div>
        </div>
    </div>";

$sqlTemp->close();

$conn->close();
