<?php

include 'navbar.php';
include 'db_connect.php';

$searchTerm = isset($_GET['query']) ? $_GET['query'] : '';

$moviesSql = "SELECT * FROM movies WHERE title LIKE ?";
$genreSql = "SELECT * FROM movies WHERE genre LIKE ?";
$actorsSql = "SELECT actorid, fname, lname, photo FROM actors WHERE CONCAT(fname, ' ', lname) LIKE ?";
$directorsSql = "SELECT directorid, fname, lname, photo FROM directors WHERE CONCAT(fname, ' ', lname) LIKE ?";

$results = ['movies' => [], 'actors' => [], 'directors' => []];

function searchTable($conn, $sql, $searchTerm, &$results, $table)
{
    if ($stmt = $conn->prepare($sql)) {
        $term = "%$searchTerm%";
        $stmt->bind_param("s", $term);
        $stmt->execute();
        $result = $stmt->get_result();
        while ($row = $result->fetch_assoc()) {
            $results[$table][] = $row;
        }
        $stmt->close();
    }
}

searchTable($conn, $moviesSql, $searchTerm, $results, 'movies');
searchTable($conn, $genreSql, $searchTerm, $results, 'movies');
searchTable($conn, $actorsSql, $searchTerm, $results, 'actors');
searchTable($conn, $directorsSql, $searchTerm, $results, 'directors');

//#region HTML to display results
//echo "<div class='container mt-5'>";
//echo "<h2>Search Results for '$searchTerm'</h2>";

// Display movie results
echo "<div class='container mt-5'>";
echo "<h2 class = text-white >Search Results for '$searchTerm'</h2>";

// Display movie results
echo "<div class='container mt-5'>";

// Display movie results if available
if (!empty($results['movies'])) {
    echo "<div class='row'>";
    echo "<h3 class='text-white'>Movies</h3>";
    foreach ($results['movies'] as $movie) {
        echo "<div class='col-md-4 mb-3'>";
        echo "<a href='movie_info.php?title=" . urlencode($movie['title']) . "' class='text-decoration-none'>";
        echo "<div class='card' style='width: 18rem;'>";
        echo "<img src='" . htmlspecialchars($movie['poster']) . "' class='card-img-top' alt='Movie Poster'>";
        echo "<div class='card-body bg-dark text-white'>";
        echo "<h5 class='card-title'>" . htmlspecialchars($movie['title']) . "</h5>";
        echo "</div>";
        echo "</div>";
        echo "</a>";
        echo "</div>";
    }
    echo "</div>";
}

// Display actor results if available
if (!empty($results['actors'])) {
    echo "<div class='row mt-5'>";
    echo "<h3 class='text-white'>Actors</h3>";
    foreach ($results['actors'] as $actor) {
        echo "<div class='col-md-4 mb-3'>";
        echo "<a href='actor_profile.php?actorid=" . $actor['actorid'] . "' class='text-decoration-none'>";
        echo "<div class='card' style='width: 18rem;'>";
        echo "<img src='" . htmlspecialchars($actor['photo']) . "' class='card-img-top' alt='Actor Photo'>";
        echo "<div class='card-body bg-dark text-white'>";
        echo "<h5 class='card-title'>" . htmlspecialchars($actor['fname']) . " " . htmlspecialchars($actor['lname']) . "</h5>";
        echo "</div>";
        echo "</div>";
        echo "</a>";
        echo "</div>";
    }
    echo "</div>";
}

// Display director results if available
if (!empty($results['directors'])) {
    echo "<div class='row mt-5'>";
    echo "<h3 class='text-white'>Directors</h3>";
    foreach ($results['directors'] as $director) {
        echo "<div class='col-md-4 mb-3'>";
        echo "<a href='director_profile.php?directorid=" . $director['directorid'] . "' class='text-decoration-none'>";
        echo "<div class='card' style='width: 18rem;'>";
        echo "<img src='" . htmlspecialchars($director['photo']) . "' class='card-img-top' alt='Director Photo'>";
        echo "<div class='card-body bg-dark text-white'>";
        echo "<h5 class='card-title'>" . htmlspecialchars($director['fname']) . " " . htmlspecialchars($director['lname']) . "</h5>";
        echo "</div>";
        echo "</div>";
        echo "</a>";
        echo "</div>";
    }
    echo "</div>";
}

echo "</div>";


