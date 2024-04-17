<?php
include 'db_connect.php';
session_start();

if (isset($_POST['toggle_watchlist']) && isset($_SESSION['username'])) {
    $movieTitle = $_POST['movie_title'];
    $username = $_SESSION['username'];

    // Check current watchlist state
    $stmt = $conn->prepare("SELECT * FROM watchlist WHERE wusername = ? AND wmovie = ?");
    $stmt->bind_param("ss", $username, $movieTitle);
    $stmt->execute();
    $isInWatchlist = $stmt->get_result()->num_rows > 0;
    $stmt->close();

    if ($isInWatchlist) {
        // Remove from watchlist
        $stmt = $conn->prepare("DELETE FROM watchlist WHERE wusername = ? AND wmovie = ?");
        $stmt->bind_param("ss", $username, $movieTitle);
        $stmt->execute();
        $stmt->close();
        echo "Removed from watchlist!";
    } else {
        // Add to watchlist
        $stmt = $conn->prepare("INSERT INTO watchlist (wusername, wmovie) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $movieTitle);
        $stmt->execute();
        $stmt->close();
        echo "Added to watchlist!";
    }
    exit;
}
