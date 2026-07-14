<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>${character.name} Details</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet" href="/style.css">
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark">

        <div class="container">

            <a class="navbar-brand" href="/">
                Harry Potter Gallery
            </a>

            <div class="collapse navbar-collapse">

                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="/">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active"
                           href="/Chars/${character.characterId?c}">
                            Details
                        </a>
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

    <main class="container mt-5">

        <a href="/" class="btn btn-outline-secondary mb-4">
            ← Back to Gallery
        </a>

        <div class="row">

            <!-- Left Side -->
            <div class="col-md-4">

                <img src="/images/harry.jpg"
                     alt="${character.name}"
                     class="img-fluid rounded shadow mb-4">

                <div class="card">

                    <div class="card-header text-white quick-info-header">
                        Quick Info
                    </div>

                    <div class="card-body">

                        <h2>${character.name}</h2>

                        <p>
                            ${character.description!"No description provided."}
                        </p>

                        <p>
                            <strong>Role:</strong>
                            <br>
                            ${character.role!"Not provided"}
                        </p>

                        <p>
                            <strong>House:</strong>
                            <br>
                            ${character.house!"Not provided"}
                        </p>

                    </div>

                </div>

            </div>

            <!-- Right Side -->
            <div class="col-md-8">

                <h2>Character Description</h2>

                <p>
                    ${character.description!"No description has been provided for this character."}
                </p>

                <h2>Role</h2>

                <p>
                    ${character.name} has the role of
                    ${character.role!"an unknown character"}.
                </p>

                <h2>House</h2>

                <p>
                    ${character.name} belongs to
                    ${character.house!"an unknown house"}.
                </p>

                <div class="mt-4">

                    <a href="/updateForm/${character.characterId?c}"
                       class="btn btn-warning">
                        Update Character
                    </a>

                    <a href="/delete/${character.characterId?c}"
                       class="btn btn-danger"
                       onclick="return confirm('Are you sure you want to delete this character?');">
                        Delete Character
                    </a>

                </div>

            </div>

        </div>

    </main>

    <footer class="footer text-center mt-5 py-4">

        <p class="mb-0">
            © 2026 Harry Potter Character Gallery.
        </p>

    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>