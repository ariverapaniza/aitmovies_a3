<?php

include "navbar.php";

echo '<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
            <br><br>
                <h3 class = text-white >Admin Panel</h3>
            </div>
        </div>
    </div><br><br>';

echo '<div class="container">
<div class="row justify-content-center">';

$cardInfo = array(
    array(
        "img" => "img/actor.png",
        "title" => "Add an Actor",
        "text" => "In here you can add different actors that have worked in different movies.",
        "link" => "actors.php"
    ),
    array(
        "img" => "img/director.png",
        "title" => "Add a Director",
        "text" => "In here you can add different directors that have worked in different movies.",
        "link" => "directors.php"
    ),
    array(
        "img" => "img/movie.png",
        "title" => "Add a Movie",
        "text" => "In here you can add movies with most of the needed information like genre, classification, language, etc.",
        "link" => "movies.php"
    ),
    array(
        "img" => "img/admin_account.png",
        "title" => "Create an Admin Account",
        "text" => "In here you can create Admin accounts that can manage the website.",
        "link" => "register_admin.php"
    )
);

foreach ($cardInfo as $info) {
    echo '<div class="col-md-6 mb-3">
            <div class="card bg-dark text-white h-100">
                <a href="' . $info["link"] . '">
                    <img src="' . $info["img"] . '" class="card-img-top" alt="..." style="height: 200px; object-fit: contain;">
                </a>
                <div class="card-body">
                    <h5 class="card-title"><a href="' . $info["link"] . '" class="text-decoration-none text-light">' . $info["title"] . '</a></h5>
                    <p class="card-text">' . $info["text"] . '</p>
                </div>
            </div>
        </div>';
}

echo '</div>
    </div>';
?>

<?php include "footer.php"; ?>
