<!DOCTYPE html>
<html lang="en">

<head>
    <title>Actor Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <?php
    include 'navbar.php';
    include 'db_connect.php';

    $actorId = $_GET['actorid'] ?? '';

    // Query to get the actor details
    $actorQuery = "SELECT * FROM actors WHERE actorid = ?";
    $actorStmt = $conn->prepare($actorQuery);
    $actorStmt->bind_param("i", $actorId);
    $actorStmt->execute();
    $actorResult = $actorStmt->get_result();
    $actor = $actorResult->fetch_assoc();

    if ($actor) {
        ?>
        <div class="container mt-5">
            <h1 class="text-center text-white"><?= htmlspecialchars($actor['fname']) ?> <?= htmlspecialchars($actor['lname']) ?></h1>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4 d-flex justify-content-center">
                    <img src="<?= htmlspecialchars($actor['photo']) ?>" class="img-fluid rounded" alt="Actor Image">
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
                                    <td><?= htmlspecialchars($actor['description']) ?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                
            </div>
        </div>
    <?php
    } else {
        echo "<p>Actor not found.</p>";
    }
    $actorStmt->close();
    $conn->close();
    ?>
</body>

</html>
