
<?php
include "navbar.php";
include "db_connect.php";




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

echo '


<style>
body {
    background-color: #020916; /* Fondo de toda la página */
    color: aliceblue;
  }
</style>


<div class="container my-4">

<div id="carouselExampleIndicators" class="carousel slide opacity-50 " data-bs-ride="carousel">
    <div class="carousel-indicators ">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
    </div>
    <div class="carousel-inner">';

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

</div>

<div class="container mt-5">
        <div class="row mb-4">
            <div class="col-md-8">
                <h1>Top Ranked</h1>
            </div>
         </div>
         <div class="row mb-4">'
?>
<?php include "ranked.php";
echo '</div>
</div>

<div class="container mt-5">
        <div class="row mb-4">
            <div class="col-md-8">
                <h1>New Releases</h1>
            </div>
         </div>
            <div class="row mb-4">' 
            
            
            
 
  
  ?>
<?php include "newest.php";
echo '</div>

<footer class= "  py-3 mt-3" style="background-color: #020916 ;" > 
<div class="container text-ligth text-center">
<img src="img/AITMoviesLogo.png" alt="Logo" width="50" height="60">            
</div>
</footer>
</div>';

$conn->close();
