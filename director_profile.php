<!DOCTYPE html>
<html lang="en">

<head>
    <title>Directors Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <?php
    include 'navbar.php';
    include 'db_connect.php';

    $directorId = $_GET['directorid'] ?? '';

    // Query to get actor details
    $directorQuery = "SELECT * FROM directors WHERE directorid = ?";
    $directorStmt = $conn->prepare($directorQuery);
    $directorStmt->bind_param("i", $directorId);
    $directorStmt->execute();
    $directorResult = $directorStmt->get_result();
    $director = $directorResult->fetch_assoc();

    if ($director) {
    ?>
    <div class="container mt-5">
        <h1 class="text-center text-white"><?= htmlspecialchars($director['fname']) ?>
            <?= htmlspecialchars($director['lname']) ?></h1>
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4 d-flex justify-content-center">
                <img src="<?= htmlspecialchars($director['photo']) ?>" class="img-fluid rounded" alt="Director Image">
            </div>
        </div>
        <div class="row mt-3">
            <div class="table-responsive">
                <table class="table table-dark table-striped table-bordered w-100">
                    <tbody>
                        <tr>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td><?= htmlspecialchars($director['description']) ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?php
    } else {
        echo "<p>Director not found.</p>";
    }
    $directorStmt->close();
    $conn->close();
    ?>
</body>

</html>