<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Harry Potter Character Gallery</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- My CSS -->
    <link rel="stylesheet" href="/style.css">
</head>

<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="/">Harry Potter Gallery</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <a class="nav-link active" href="/">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/">Details</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/about">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/new">Add Character</a>
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
           <#list characters as character>

    <div class="col-lg-4 col-md-6 mb-4">
        <div class="card h-100">

            <img src="/images/harry.jpg"
                 class="card-img-top"
                 alt="${character.name}">

            <div class="card-body">

                <h5 class="card-title">
                    ${character.name}
                </h5>

                <p class="card-text">
                    <strong>Role:</strong>
                    ${character.role!"Not provided"}
                    <br>

                    <strong>House:</strong>
                    ${character.house!"Not provided"}
                </p>

                <a href="/Chars/${character.characterId?c}"
                   class="btn btn-primary">
                    View Details
                </a>

            </div>
        </div>
    </div>

</#list>




        </div>

    </div>
    <footer class="footer text-center mt-5 py-4">
    <p class="mb-0">© 2026 Harry Potter Character Gallery.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    

</body>

</html>