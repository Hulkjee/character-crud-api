<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Harry Potter Character Gallery</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- My CSS -->
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.html">Harry Potter Gallery</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <a class="nav-link active" href="index.html">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="details.html">Details</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="new-character-form.html">Add Character</a>
                    </li>

                </ul>

            </div>
        </div>
    </nav>

    <!-- Header -->
    <header class="container text-center mt-5">

        <h1>Harry Potter Character Gallery</h1>

        <p class="lead">
            Explore some of the most famous characters from the Wizarding World.
        </p>

    </header>

    <!-- Search Bar -->
    <div class="container mt-4">

        <input
            type="text"
            class="form-control"
            placeholder="Search characters...">

    </div>

    <!-- Character Cards -->
    <div class="container mt-5">

        <div class="row">

            <!-- Character cards will go here -->
            <div class="col-lg-4 col-md-6 mb-4">
    <div class="card h-100">
        <img src="images/harry.jpg" class="card-img-top" alt="Harry Potter">

        <div class="card-body">
            <h5 class="card-title">Harry Potter</h5>

            <p class="card-text">
                <strong>Universe:</strong> Harry Potter<br>
                <strong>Role:</strong> Wizard<br>
                <strong>House:</strong> Gryffindor
            </p>

            <a href="details.html" class="btn btn-primary">
                View Details
            </a>
        </div>
    </div>
</div>


<div class="col-lg-4 col-md-6 mb-4">
    <div class="card h-100">
        <img src="images/herm.jpg" class="card-img-top" alt="Hermione Granger">

        <div class="card-body">
            <h5 class="card-title">Hermione Granger</h5>

            <p class="card-text">
                <strong>Universe:</strong> Harry Potter<br>
                <strong>Role:</strong> Witch<br>
                <strong>House:</strong> Gryffindor
            </p>

            <a href="details.html" class="btn btn-primary">
                View Details
            </a>
        </div>
    </div>
</div>


<div class="col-lg-4 col-md-6 mb-4">
    <div class="card h-100">
        <img src="images/ron.webp" class="card-img-top" alt="Ron Weasley">

        <div class="card-body">
            <h5 class="card-title">Ron Weasley</h5>

            <p class="card-text">
                <strong>Universe:</strong> Harry Potter<br>
                <strong>Role:</strong> Wizard<br>
                <strong>House:</strong> Gryffindor
            </p>

            <a href="details.html" class="btn btn-primary">
                View Details
            </a>
        </div>
    </div>
</div>


<div class="col-lg-4 col-md-6 mb-4">
    <div class="card h-100">
        <img src="images/dumbledore.jpg" class="card-img-top" alt="Albus Dumbledore">

        <div class="card-body">
            <h5 class="card-title">Albus Dumbledore</h5>

            <p class="card-text">
                <strong>Universe:</strong> Harry Potter<br>
                <strong>Role:</strong> Headmaster<br>
                <strong>House:</strong> Gryffindor
            </p>

            <a href="details.html" class="btn btn-primary">
                View Details
            </a>
        </div>
    </div>
</div>

<div class="col-lg-4 col-md-6 mb-4">
    <div class="card h-100">
        <img src="images/snape.webp" class="card-img-top" alt="Severus Snape">

        <div class="card-body">
            <h5 class="card-title">Severus Snape</h5>

            <p class="card-text">
                <strong>Universe:</strong> Harry Potter<br>
                <strong>Role:</strong> Professor<br>
                <strong>House:</strong> Slytherin
            </p>

            <a href="details.html" class="btn btn-primary">
                View Details
            </a>
        </div>
    </div>
</div>




        </div>

    </div>
    <footer class="footer text-center mt-5 py-4">
    <p class="mb-0">© 2026 Harry Potter Character Gallery.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    

</body>

</html>