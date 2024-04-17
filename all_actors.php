<?php

include 'navbar.php';
include 'db_connect.php';

$searchTerm = isset($_GET['query']) ? $_GET['query'] : '';

$actorsSql = "SELECT actorid, fname, lname, photo FROM actors WHERE CONCAT(fname, ' ', lname) LIKE ?";

$results = ['actors' => []];

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

searchTable($conn, $actorsSql, $searchTerm, $results, 'actors');

echo "<div class='container mt-5'>";
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
echo "</div>";
echo '</div>

<footer class= "  py-3 mt-3" style="background-color: #020916 ;" > 
<div class="container text-ligth text-center">
<img src="img/AITMoviesLogo.png" alt="Logo" width="50" height="60">            
</div>
</footer>
</div>';
