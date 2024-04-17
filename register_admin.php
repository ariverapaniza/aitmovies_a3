<?php

include "navbar.php";

echo "<br>";


echo '<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mt-3"><h3 class="text-white">Register Here!</h3><br>
            </div>
        </div>
    </div>';

echo '<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <br>
            <form action="form_process_register_admin.php" method="POST" class="text-left">
                <div class="form-group">
                    <label for="username" class="text-white">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" required><br>
                </div>
                <div class="form-group">
                    <label for="fname" class="text-white">First Name:</label><br>
                    <input type="text" class="form-control" id="fname" name="fname" required><br>
                </div>
                <div class="form-group">
                    <label for="lname" class="text-white">Last Name:</label><br>
                    <input type="text" class="form-control" id="lname" name="lname" required><br>
                </div>
                <div class="form-group">
                    <label for="email" class="text-white">Email:</label><br>
                    <input type="text" class="form-control" id="email" placeholder="name@example.com" name="email" required><br>
                </div>
                <div class="form-group">
                    <label for="address" class="text-white">Address:</label><br>
                    <input type="text" class="form-control" id="address" name="address" required><br>
                </div>
                <div class="form-group">
                    <label for="password" class="text-white">Password:</label><br>
                    <input type="password" class="form-control" id="password" name="password" required><br>
                </div><br>
                <div class="text-center">
                    <input type="submit" class="btn btn-primary btn-lg" value="Register">
                </div><br>
            </form>
            <br>
            <div class="text-center text-white">
                Already Registered? <a href="login.php" class="text-primary"> Sign In</a>
            </div>
        </div>
    </div>
</div>';


echo "<br>";


?>
