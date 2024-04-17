<?php
include 'navbar.php';
include 'db_connect.php';

$cUsername = $_SESSION['username'] ?? '';

// Need query to get user details
$userQuery = "SELECT * FROM login WHERE username = ?";
$userStmt = $conn->prepare($userQuery);
$userStmt->bind_param("s", $cUsername);
$userStmt->execute();
$userResult = $userStmt->get_result();
$user = $userResult->fetch_assoc();

if ($user) {
    echo "<div class='container mt-5'>";
    echo "<h1 class='text-white text-center mb-4'>User Information</h1>";
    echo "<table class='table table-dark table-striped'>";
    echo "<tbody>";
    echo "<tr><td><strong>Username:</strong></td><td>" . htmlspecialchars($user['username']) . "</td></tr>";
    echo "<tr><td><strong>First Name:</strong></td><td>" . htmlspecialchars($user['fname']) . "</td></tr>";
    echo "<tr><td><strong>Last Name:</strong></td><td>" . htmlspecialchars($user['lname']) . "</td></tr>";
    echo "<tr><td><strong>Email:</strong></td><td>" . htmlspecialchars($user['email']) . "</td></tr>";
    echo "<tr><td><strong>Address:</strong></td><td>" . htmlspecialchars($user['address']) . "</td></tr>";
    echo "</tbody>";
    echo "</table>";
    echo "</div>";
} else {
    echo "<p>User not found.</p>";
}

echo "<div class='container mt-5'>";
echo "<h1 class='text-white text-center mb-4'>Watchlist</h1>";

function displayWatchlistMovies($conn, $cUsername)
{
    // Query to get movies from the watchlist of the user
    $watchlistQuery = "SELECT m.title, m.genre, m.releaseyear, m.poster
                       FROM movies m
                       INNER JOIN watchlist w ON m.title = w.wmovie
                       WHERE w.wusername = ?";
    $watchlistStmt = $conn->prepare($watchlistQuery);
    $watchlistStmt->bind_param("s", $cUsername);
    $watchlistStmt->execute();
    $watchlistResult = $watchlistStmt->get_result();

    if ($watchlistResult->num_rows > 0) {
        echo "<div class='row mt-4'>";

        while ($movie = $watchlistResult->fetch_assoc()) {
            echo '<div class="col-md-4">';
            echo '<div class="card mb-4 bg-dark text-white" style="width: 18rem; flex: 0 0 auto;">';
            echo '<a href="movie_info.php?title=' . urlencode($movie['title']) . '">';
            echo '<img src="' . htmlspecialchars($movie['poster']) . '" class="card-img-top" alt="Movie Poster" style="height: 450px; object-fit: contain;">';
            echo '</a>';
            echo '<div class="card-body">';
            echo '<h5 class="card-title">' . htmlspecialchars($movie['title']) . '</h5>';
            echo '<p class="card-text">Genre: ' . htmlspecialchars($movie['genre']) . '</p>';
            echo '<p class="card-text">Release Year: ' . htmlspecialchars($movie['releaseyear']) . '</p>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
        }

        echo "</div>";
    } else {
        echo "<p>No movies in watchlist.</p>";
    }

    $watchlistStmt->close();
}

displayWatchlistMovies($conn, $cUsername);

$conn->close();
?>
