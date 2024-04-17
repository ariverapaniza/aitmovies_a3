<?php

include "navbar.php";

echo "<br>";

echo '<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mt-3"><h2 class="text-white"> Add Actor Information!</h2><br>
            </div>
        </div>
    </div>';

echo '<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <br>
            <form action="form_process_actors.php" method="POST" enctype="multipart/form-data" class="text-left">
                <div class="form-group">
                    <label for="fname" class="text-white">First Name:</label><br>
                    <input type="text" class="form-control" id="fname" name="fname" required><br>
                </div>
                <div class="form-group">
                    <label for="lname" class="text-white">Last Name:</label><br>
                    <input type="text" class="form-control" id="lname" name="lname" required><br>
                </div>
                <div class="form-group">
                    <label for="gender" class="text-white">Gender:</label><br>
                    <input type="text" class="form-control" id="gender" name="gender" required><br>
                </div>
                <div class="form-group">
                    <label for="movie1" class="text-white">Movie 1:</label><br>
                    <input type="text" class="form-control" id="movie1" name="movie1" required><br>
                </div>
                <div class="form-group">
                    <label for="movie2" class="text-white">Movie 2:</label><br>
                    <input type="text" class="form-control" id="movie2" name="movie2" required><br>
                </div>
                <div class="form-group">
                    <label for="movie3" class="text-white">Movie 3:</label><br>
                    <input type="text" class="form-control" id="movie3" name="movie3" required><br>
                </div>
                <div class="form-group">
                    <label for="photo" class="text-white">Actor\'s Photo:</label><br>
                    <input type="file" class="form-control" id="photo" name="photo"><br>
                </div>
                <div class="form-group">
                    <label for="description" class="text-white">Description:</label><br>
                    <textarea class="form-control" id="description" name="description" required></textarea><br>
                </div><br>
                <div class="text-center">
                    <input type="submit" class="btn btn-primary btn-lg" value="Add Actor">
                </div><br>
            </form>
            <br>
        </div>
    </div>
</div>';

echo "<br>";
?>

<?php include "footer.php"; ?>


