<?php

include "navbar.php";
include "db_connect.php";

$username = $_POST['username'];
$password = $_POST['password'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email = $_POST['email'];
$address = $_POST['address'];
$passwordHashed = password_hash($password, PASSWORD_DEFAULT);

// In here we check if username already exists
$checkUsername = $conn->prepare("SELECT username FROM login WHERE username = ?");
$checkUsername->bind_param("s", $username);
$checkUsername->execute();
$checkUsername->store_result();

if ($checkUsername->num_rows > 0) {
    echo '<div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6"></br></br></br><h3 style="color: white;">Username already exists!</h3></div>
            </div>
          </div>';
    echo '<div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6"><a href="javascript:history.go(-1)"><h3>Go Back</h3></a></div>
            </div>
          </div>';
    $checkUsername->close();
    $conn->close();
    exit;
}

$sqlTemp = $conn->prepare("INSERT INTO login (username, password, fname, lname, email, address) VALUES (?,?,?,?,?,?)");
$sqlTemp->bind_param("ssssss", $username, $passwordHashed, $fname, $lname, $email, $address);
$sqlTemp->execute();

echo '<br><br><div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6"><h3 style="color: white;">Register Successful!</h3><br>
            <img src="img/AITMovies_mod.png" alt="Logo" width="469" height="144" class="d-inline-block align-text-top"><br><br>
            </div>';
echo "<H5 style='color: white;'>Username: " . $username . "</H5><br>";
echo "<H5 style='color: white;'>Password Hashed: " . $passwordHashed . "</H5><br>";
echo "<a href='login.php'><H5>Go To Login Page</H5></a>";
echo '</div>
    </div>';

$sqlTemp->close();
$conn->close();
