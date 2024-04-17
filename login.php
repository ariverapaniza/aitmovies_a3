    <?php

    include "navbar.php";

    echo '

    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>AIT Movies</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
    />
    <link href="style_login.css" rel="stylesheet" /> 
    
    </head>
    <body>

    <div class="container-fluid">
    <div class="row align-items-center">

    <div class="col-md-6">
    <!-- Imagen ajustada -->
    <img src="img/logIn1.jpg" class="img-fluid img-container" alt="Image" />
    </div>

    <!-- Columna para el formulario -->
        <div class="col-md-6">
            <div class="d-flex justify-content-center">
            <div class="w-75"> 
                <h2 class="fw-bold text-center py-5">Welcome</h2>

                <!-- Formulario -->
                <form action="form_process_login.php" method="POST">
                <div class="form-group mb-4">
                    <label for="username">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" required><br>
                </div>
                <div class="form-group mb-4">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required><br>
                </div>

                <div class="d-grid mb-5">
                    <button type="submit" class="btn btn-primary">Log In</button>
                </div>

                <div class="text-center">
                    Not Registered? <a href="register.php"> Register Here</a>
                </div>
                
                </form>
            </div>
            </div>
        </div>
        </div>
        
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
    </html>

    ';
    ?>
