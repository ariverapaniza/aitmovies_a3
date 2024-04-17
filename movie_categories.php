<?php

include "navbar.php";
include "db_connect.php";


echo '<div class="container">
        <div class="row justify-content-center">
          <div class="col-md-6 text-center"></br><h3 style="color: white;">Categories!</h3><br>
            
            </div>
        </div>
    </div>';

echo '<body style="background-color: #020916;">'; 

$sql = "SELECT * FROM movies ORDER BY RAND() LIMIT 5";
$result = $conn->query($sql);

$movies = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        array_push($movies, $row);
    }
} else {
    echo "No movies found";
}

// Aquí comienza el carrusel
echo '<div class="container my-4">
<div id="carouselExampleIndicators" class="carousel slide opacity-50" data-bs-ride="carousel">
    <div class="carousel-indicators ">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <!-- Aquí puedes agregar más botones de indicadores si tienes más imágenes -->
    </div>
    <div class="carousel-inner">';

// Aquí comienza el bucle para las imágenes del carrusel
foreach ($movies as $index => $movie) {
    $active = $index === 0 ? ' active' : '';
    $movieTitleUrl = urlencode($movie["title"]);
    echo '<div class="carousel-item' . $active . '">
            <a href="movie_info.php?title=' . $movieTitleUrl . '">
                <img src="' . $movie["image1"] . '" class="d-block w-100" alt="' . htmlspecialchars($movie["title"]) . '">
            </a>
            <div class="carousel-caption d-none d-md-block">
                <h2>' . htmlspecialchars($movie["title"]) . '</h2>
                <p>' . htmlspecialchars($movie["description"]) . '</p>
            </div>
        </div>';
}

// Aquí termina el bucle de las imágenes del carrusel
echo '</div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
</div>';

// Fin del carrusel

?>
<div class="container">
    <div class=" justify-content-center">
        <div class="col-md-8">
            <div class="btn-group justify-content-center">
                <?php
                    $categories = array(
                        "action.php" => "Action",
                        "animation.php" => "Animation",
                        "comedy.php" => "Comedy",
                        "documentary.php" => "Documentary",
                        "drama.php" => "Drama",
                        "fantasy.php" => "Fantasy",
                        "horror.php" => "Horror",
                        "mystery.php" => "Mystery",
                        "scify.php" => "SciFi",
                        "thriller.php" => "Thriller",
                        "western.php" => "Western"
                    );

                    foreach ($categories as $url => $category) {
                        echo '<a href="' . $url . '" class="btn btn-outline-primary btn-lg" style="background-color: transparent; margin: 0 5px;">' . $category . '</a>';
                    }
                ?>
            </div>
        </div>
    </div>
</div>


<?php include "footer.php"; ?>