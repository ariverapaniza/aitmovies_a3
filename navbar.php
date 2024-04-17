<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AIT Movies</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<?php
include 'head.php';
?>

<body>
    <!-- //#region NAVBAR -->

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand ms-2 " href="index.php">
                <img src="img/AITMovies_mod_s.png" alt="Logo" width="200" height="60">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item me-2">
                        <a class="nav-link" href="index.php">Home</a>
                    </li>
                    <li class="nav-item me-2">
                        <a class="nav-link" href="movie_categories.php">Categories</a>
                    </li>
                    <li class="nav-item me-2">
                        <a class="nav-link" href="all_movies.php">Movies</a>
                    </li>
                    <li class="nav-item me-2">
                        <a class="nav-link" href="all_actors.php">Actors</a>
                    </li>
                    <li class="nav-item me-2">
                        <a class="nav-link" href="all_directors.php">Directors</a>
                    </li>
                    <?php
                    if (isset($_SESSION['username']) && $_SESSION['admin'] == 1) {
                        // Display this menu item only if the user is logged in and is an admin
                        echo '<li class="nav-item me-2">
                            <a class="nav-link" href="admin_panel.php">Admin Panel</a>
                          </li>';
                    }
                    ?>
                    <li class="nav-item">
                        <form class="d-flex" action="search.php" method="GET">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"
                                name="query">
                            <button class="btn btn-dark" type="submit">Search</button>
                        </form>
                    </li>
                </ul>

                <?php
                if (isset($_SESSION['username'])) {
                    // User is logged in
                    echo '<div class="ms-2">
                        <a class="btn btn-outline-primary" href="logout.php">Log Out</a>
                        <a class="btn btn-outline-primary" href="user_profile.php">' . $_SESSION['username'] . '</a>
                        </div>';
                } else {
                    // User is not logged in
                    echo '<a class="btn btn-outline-primary ms-2" type="button" href="login.php">Sign In</a>';
                }
                ?>
            </div>
        </div>
    </nav>





    <!-- NAVBAR END -->





</body>

</html>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
</script>
<script src="script.js"></script>


</html>