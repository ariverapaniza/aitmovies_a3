<?php

include 'navbar.php';
include 'db_connect.php';

$searchTerm = isset($_GET['query']) ? $_GET['query'] : '';

$moviesSql = "SELECT * FROM movies WHERE title LIKE ?";
$results = ['movies' => []];

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
echo "</div>";
echo '</div>

<footer class= "  py-3 mt-3" style="background-color: #020916 ;" > 
<div class="container text-ligth text-center">
<img src="img/AITMoviesLogo.png" alt="Logo" width="50" height="60">            
</div>
</footer>
</div>';
