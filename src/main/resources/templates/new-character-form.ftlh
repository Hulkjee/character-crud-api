<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Character</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.html">Harry Potter Gallery</a>

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="details.html">Details</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="new-character-form.html">Add Character</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Form -->
    <div class="container mt-5">

        <h1 class="text-center mb-4">Add a New Harry Potter Charater</h1>

        <div class="card shadow p-4">

            <form>

                <div class="mb-3">
                    <label class="form-label">Character Name</label>
                    <input type="text" class="form-control" placeholder="Enter character name">
                </div>

                <div class="mb-3">
                    <label class="form-label">Universe</label>
                    <input type="text" class="form-control" value="Harry Potter">
                </div>

                <div class="mb-3">
                    <label class="form-label">Role</label>
                    <input type="text" class="form-control" placeholder="Wizard, Professor, Student...">
                </div>

                <div class="mb-3">
                    <label class="form-label">House</label>

                    <select class="form-select">
                        <option>Gryffindor</option>
                        <option>Slytherin</option>
                        <option>Ravenclaw</option>
                        <option>Hufflepuff</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">Image URL</label>
                    <input type="text" class="form-control" placeholder="Paste image URL">
                </div>

                <div class="mb-3">
                    <label class="form-label">Short Description</label>
                    <textarea class="form-control" rows="4"
                        placeholder="Write a short description about the character"></textarea>
                </div>

                <button type="submit" class="btn btn-primary">
                    Submit Character
                </button>

            </form>

        </div>

    </div>

    <!-- Footer -->
    <footer class="footer text-center mt-5 py-4">
        <p class="mb-0">
            © 2026 Harry Potter Character Gallery.
        </p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>