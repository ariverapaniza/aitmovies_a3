<?php
include "navbar.php";

echo '
<div class="container-fluid">
  <div class="row">
    <div class="col-md-6 left-container d-flex justify-content-center align-items-center" style="height: 100vh; background-color: #020916;">

    <div class="text-center">
    <img src="img/AITMoviesLogo.png" alt="Logo" width="200" height="200">
    </div>
    </div>
    <div class="col-md-6" style="background-color: white;">


    <div class="d-flex justify-content-center align-items-center flex-column" style="height: 100vh; padding: 0 20px;">

        <div class="text-center mb-4 h2">Register Here!</div>
            <form action="form_process_prepared_hash.php" method="POST" class="text-left">
                
                
                <div class="form-group">
                    <label for="username" class="form-label">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" style="width: 350px;" required>
                </div>

                    <div class="form-group">
                        <label for="fname" class="form-label">First Name:</label>
                        <input type="text" class="form-control" id="fname" name="fname" style="width: 350px;" required>
                    </div>
                    <div class="form-group">
                        <label for="lname" class="form-label">Last Name:</label>
                        <input type="text" class="form-control" id="lname" name="lname" style="width: 350px;" required>
                    </div>
            
                <div class="form-group">
                    <label for="email" class="form-label">Email:</label>
                    <input type="text" class="form-control" id="email" placeholder="name@example.com" name="email" style="width: 350px;" required>
                </div>
                <div class="form-group">
                    <label for="address" class="form-label">Address:</label>
                    <input type="text" class="form-control" id="address" name="address" style="width: 350px;" required>
                </div>
                <div class="form-group">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" style="width: 350px;" required>
                </div>
                <input type="submit" class="btn btn-primary w-100 mt-3" value="Register">
            </form>


            <p class="mt-3 text-center text-md-start">Already Registered? <a href="login.php">Sign In</a></p>


        
        </div>
  </div>

</div>
';

?>
