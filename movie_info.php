<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <?php
    include 'navbar.php';
    //include 'head.php';
    include 'db_connect.php';
    $movieTitle = $_GET['title'] ?? '';

    $sql = "SELECT * FROM movies WHERE title = ?";
    $title = 'Unknown Title';
    $genre = 'Unknown Genre';
    $classification = 'Unknown Classification';
    $length = 'Unknown Length';
    $releaseyear = 'Unknown Release Year';
    $language = 'Unknown Language';
    $productioncompany = 'Unknown Production Company';
    $description = 'Unknown Description';
    $trailer = 'Unknown Trailer';
    $poster = '';  // added this line
    $images = [];

    if ($stmt = $conn->prepare($sql)) {
        $stmt->bind_param("s", $movieTitle);
        $stmt->execute();
        $result = $stmt->get_result();
        $movie = $result->fetch_assoc();

        if ($movie) {

            $title = $movie['title'];
            $genre = $movie['genre'];
            $classification = $movie['classification'];
            $length = $movie['length'];
            $releaseyear = $movie['releaseyear'];
            $language = $movie['language'];
            $productioncompany = $movie['productioncompany'];
            $description = $movie['description'];
            $trailer = $movie['trailer'];
            $poster = $movie['poster'];  // added this line
            // Fetch all the images
            for ($i = 1; $i <= 4; $i++) {
                if (!empty($movie['image' . $i])) {
                    $images[] = $movie['image' . $i];
                }
            }
        }
        $stmt->close();
    }
    ?>

    <title><?php echo htmlspecialchars($title); ?> - Movie Details</title>
    <style>
        body {
            background-color: #020916;
            color: white; 
        }

        h1, h2, h3, h4, h5, h6 {
            color: white; 
        }

        .btn-primary {
            background-color: white; 
            color: #020916; 
        }

    </style>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <!--  Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet">

</head>



<body >

<div class="container mt-5">
    <div class="row mb-4">
        <div class="col-md-12 text-center">
            <h1><?php echo htmlspecialchars($title); ?></h1>
        </div>
    </div>
    <div class="row mb-4">
        <div class="col-md-12 text-center">
            <h5><strong>Genre:</strong> <span class="fw-normal"><?php echo htmlspecialchars($genre); ?></span></h5>
        </div>
    </div>
    <div class="row mb-4">
        <div class="col-md-12 text-center">
            <form method="post" class="add-to-watchlist-form">
                <input type="hidden" name="movie_title" value="<?php echo htmlspecialchars($movieTitle); ?>">
                <button type="button" class="btn btn-primary btn-add-to-watchlist">
                <i class="bi bi-plus"></i>    Add to Watchlist 
                </button>
            </form>
        </div>
    </div>
</div>




        <!-- Row for Poster and Carousel -->
        <div class="row mb-4 poster-carousel-row">
            <!-- Poster Column (30%) -->
            <div class="col-md-4 poster-container">
                <?php if ($poster) : ?>
                <img src="<?php echo htmlspecialchars($poster); ?>" class="img-fluid" alt="Movie Poster">
                <?php endif; ?>
            </div>

            <!-- Carousel Column (70%) -->
            <div class="col-md-8">
                <div id="movieCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                    <div class="carousel-inner">
                        <?php foreach ($images as $index => $image) : ?>
                        <div class="carousel-item <?php echo $index === 0 ? 'active' : ''; ?>">
                            <img src="<?php echo htmlspecialchars($image); ?>" class="d-block w-100" alt="Movie Image">
                        </div>
                        <?php endforeach; ?>
                    </div>
                    <a class="carousel-control-prev" href="#movieCarousel" role="button" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#movieCarousel" role="button" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>


        <div class="row mt-4">
    <div class="text-center col-md-12">
        <h3>Movie Details</h3>
        <table class="table table-bordered table-dark" style="background-color: #020916;">
            <tbody>
                <tr>
                    <th scope="row" style="width: 25%;">Classification</th>
                    <td style="width: 25%;"><?php echo htmlspecialchars($classification); ?></td>
                    <th scope="row" style="width: 25%;">Length</th>
                    <td style="width: 25%;"><?php echo htmlspecialchars($length); ?></td>
                </tr>
                <tr>
                    <th scope="row">Release Date</th>
                    <td><?php echo htmlspecialchars($releaseyear); ?></td>
                    <th scope="row">Language</th>
                    <td><?php echo htmlspecialchars($language); ?></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="row mt-3">
    <div class="text-center col-md-12">
        <h3>Production Details</h3>
        <table class="table table-bordered table-dark" style="background-color: #020916;">
            <tbody>
                <tr>
                    <th scope="row" style="width: 25%;">Production Company</th>
                    <td style="width: 75%;" colspan="3"><?php echo htmlspecialchars($productioncompany); ?></td>
                </tr>
                <tr>
                    <th scope="row">Description</th>
                    <td colspan="3"><?php echo htmlspecialchars($description); ?></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

        <!-- Actors in this movie -->

<div class="text-center container mt-4">
    <h3 >Actors in this Movie</h3>
    <table class="table table-bordered table-dark" style="background-color: #020916;">
        <tbody>
            <tr>
                <?php
                // Query to get actors who acted in this movie
                $actorQuery = "SELECT * FROM actors WHERE movie1 = ? OR movie2 = ? OR movie3 = ?";
                $actorStmt = $conn->prepare($actorQuery);
                $actorStmt->bind_param("sss", $movieTitle, $movieTitle, $movieTitle);
                $actorStmt->execute();
                $actorResult = $actorStmt->get_result();

                if ($actorResult->num_rows > 0) {
                    while ($actorRow = $actorResult->fetch_assoc()) {
                        echo "<td class='text-center'>";
                        echo "<img src='" . htmlspecialchars($actorRow['photo']) . "' class='img-fluid rounded-circle' alt='Actor Image' style='height: 200px; width: 200px; object-fit: cover;'>";
                        echo "<h5>" . htmlspecialchars($actorRow['fname']) . " " . htmlspecialchars($actorRow['lname']) . "</h5>";
                        echo "<a href='actor_profile.php?actorid=" . $actorRow['actorid'] . "' class='btn btn-primary'>View Profile</a>";
                        echo "</td>";
                    }
                } else {
                    echo "<td colspan='4'>No actors available for this movie.</td>";
                }
                $actorStmt->close();
                ?>
            </tr>
        </tbody>
    </table>
</div>

        <!-- Directors in this movie -->


<div class="text-center container mt-4">
    <h3>Directors in this Movie</h3>
    <table class="table table-bordered table-dark" style="background-color: #020916;">
        <tbody>
            <tr>
                <?php
                // Query to get directors who acted in this movie
                $directorQuery = "SELECT * FROM directors WHERE movie1 = ? OR movie2 = ? OR movie3 = ?";
                $directorStmt = $conn->prepare($directorQuery);
                $directorStmt->bind_param("sss", $movieTitle, $movieTitle, $movieTitle);
                $directorStmt->execute();
                $directorResult = $directorStmt->get_result();

                if ($directorResult->num_rows > 0) {
                    while ($directorRow = $directorResult->fetch_assoc()) {
                        echo "<td class='text-center'>";
                        echo "<img src='" . htmlspecialchars($directorRow['photo']) . "' class='img-fluid rounded-circle' alt='Director Image' style='height: 200px; width: 200px; object-fit: cover;'>";
                        echo "<h5>" . htmlspecialchars($directorRow['fname']) . " " . htmlspecialchars($directorRow['lname']) . "</h5>";
                        echo "<a href='director_profile.php?directorid=" . $directorRow['directorid'] . "' class='btn btn-primary'>View Profile</a>";
                        echo "</td>";
                    }
                } else {
                    echo "<td colspan='4'>No directors available for this movie.</td>";
                }
                $directorStmt->close();
                ?>
            </tr>
        </tbody>
    </table>
</div>


        <!-- ...Trailer... -->

        
    <div class="text-center mt-4">
    <h3>Trailer</h3>
    <div class="ratio ratio-16x9">
        <?php echo '<iframe id="youtubeTrailer" src="https://www.youtube.com/embed/' . $trailer . '" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen></iframe>'; ?>
    </div>
</div>



    </div>

    <!--  Movie Reviews -->
    <div class="container mt-5">
    <h2 class="text-center mb-4">Movie Reviews</h2>
    <div id="reviewCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <?php
            $reviewQuery = "SELECT rtitle, rusername, rating, review FROM review WHERE rmovie = ? ORDER BY RAND() LIMIT 3";
            $stmt = $conn->prepare($reviewQuery);
            $stmt->bind_param("s", $movieTitle);
            $stmt->execute();
            $reviewResult = $stmt->get_result();

                   $index = 0;
                    while ($reviewRow = $reviewResult->fetch_assoc()) {
                        echo '<div class="carousel-item' . ($index == 0 ? ' active' : '') . '">';
                        echo '<div class="card text-white bg-dark mb-3 mx-auto" style="max-width: 40rem;">';
                        echo '<div class="card-header"><h5><strong>Title: </strong>' . htmlspecialchars($reviewRow['rtitle']) . '</h5></div>';
                        echo '<div class="card-body">';
                        echo '<h5 class="card-title"><strong>Username: </strong><span class="fw-normal">' . htmlspecialchars($reviewRow['rusername']) . '</span></h5>';
                        echo '<h5 class="card-text"><strong>Review: </strong><span class="fw-normal">' . htmlspecialchars($reviewRow['review']) . '</span></h5>';
                        echo '<h5 class="card-text"><strong>Rating: </strong><span class="fw-normal">' . htmlspecialchars($reviewRow['rating']) . '</span>/5 <i class="bi bi-star-fill text-warning"></i></h5>';
                        echo '</div>';
                        echo '</div>';
                        echo '</div>';
                        

                        $index++;
                    }
                    ?>

        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#reviewCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#reviewCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>







    <?php
    if (isset($_SESSION['username'])) {
        include 'review.php';
    } else {
        // Display a message if in case that the user is not logged in
        echo '<div class="container text-center mt-5">
                <p>You must be logged in to leave a review.</p>
                <a href="login.php" class="btn btn-primary">Login</a>
            </div>';
    }
    echo "<br>"; ?>


</body>
<script>
$(document).ready(function() {
    $('.btn-add-to-watchlist').click(function(e) {
        e.preventDefault();
        var movieTitle = $('input[name="movie_title"]').val();
        $.ajax({
            url: 'watchlist.php',
            type: 'post',
            data: {
                'add_to_watchlist': true,
                'movie_title': movieTitle
            },
            success: function(response) {
                alert("Movie added to watchlist!");
            }
        });
    });
});
</script>

</html>