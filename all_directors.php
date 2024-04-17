<?php

include 'navbar.php';
include 'db_connect.php';

$searchTerm = isset($_GET['query']) ? $_GET['query'] : '';


$directorsSql = "SELECT directorid, fname, lname, photo FROM directors WHERE CONCAT(fname, ' ', lname) LIKE ?";

$results = ['directors' => []];

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

searchTable($conn, $directorsSql, $searchTerm, $results, 'directors');

echo "<div class='container mt-5'>";

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
