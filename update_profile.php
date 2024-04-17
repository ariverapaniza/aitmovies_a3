<?php
include 'navbar.php';
include 'db_connect.php';

session_start();

if (!isset($_SESSION['username'])) {
    header('Location: login.php');
    exit;
}


$username = $_SESSION['username'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email = $_POST['email'];
$address = $_POST['address'];


$sql = "UPDATE login SET fname=?, lname=?, email=?, address=? WHERE username=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sssss", $fname, $lname, $email, $address, $username);

if ($stmt->execute()) {
    echo "<div class='alert alert-success' role='alert'>Profile updated successfully!</div>";
    header('refresh:2;url=user_profile.php');
} else {
    echo "<div class='alert alert-danger' role='alert'>Error updating profile. Please try again later.</div>";
}

$stmt->close();
$conn->close();
