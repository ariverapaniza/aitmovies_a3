<?php
include "navbar.php";
include "db_connect.php";

$genre = 'Thriller';
$genreSql = "SELECT * FROM movies WHERE genre = ?";
$movies = [];

if ($stmt = $conn->prepare($genreSql)) {
    $stmt->bind_param("s", $genre);
    $stmt->execute();
    $result = $stmt->get_result();
    while ($row = $result->fetch_assoc()) {
        $movies[] = $row;
    }
    $stmt->close();
}

echo '<div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <h3 class="text-white">Thriller Genre</h3>
            </div>
        </div>
    </div>';

echo '<div class="container mt-3">
        <div class="row justify-content-center">';

foreach ($movies as $movie) {
    $description = $movie['description'];
    $maxWords = 10;
    $words = explode(' ', $description);

    if (count($words) > $maxWords) {
        $excerpt = implode(' ', array_slice($words, 0, $maxWords)) . '...';
        $readMoreLink = '<a href="movie_info.php?title=' . urlencode($movie['title']) . '" class="read-more-link">Read more</a>';
        $fullDescription = '<span class="full-description" style="display:none;">' . htmlspecialchars($description) . '</span>';
    } else {
        $excerpt = $description;
        $readMoreLink = '';
        $fullDescription = '';
    }

    echo '<div class="col-md-3 mb-3">
            <div class="card bg-dark text-white">
                <a href="movie_info.php?title=' . urlencode($movie['title']) . '" class="text-decoration-none">
                    <img src="' . htmlspecialchars($movie['poster']) . '" class="card-img-top" alt="Movie Poster">
                </a>
                <div class="card-body">
                    <h5 class="card-title"><a href="movie_info.php?title=' . urlencode($movie['title']) . '" class="text-white text-decoration-none">' . htmlspecialchars($movie['title']) . '</a></h5>
                    <p class="card-text">' . htmlspecialchars($excerpt) . $readMoreLink . $fullDescription . '</p>
                </div>
            </div>
        </div>';
}

echo '</div>
    </div>';
?>
