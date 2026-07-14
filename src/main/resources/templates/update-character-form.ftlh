<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Update Character</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet" href="/style.css">
</head>

<body>

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
                        <a class="nav-link" href="/about">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/new">Add Character</a>
                    </li>

                </ul>

            </div>

        </div>
    </nav>

    <div class="container mt-5">

        <h1 class="text-center mb-4">
            Update ${character.name}
        </h1>

        <div class="card shadow p-4">

            <form action="/update/${character.characterId?c}" method="post">

                <div class="mb-3">

                    <label class="form-label">
                        Character Name
                    </label>

                    <input
                        type="text"
                        name="name"
                        class="form-control"
                        value="${character.name}"
                        required>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Role
                    </label>

                    <input
                        type="text"
                        name="role"
                        class="form-control"
                        value="${character.role!""}"
                        required>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        House
                    </label>

                    <select name="house" class="form-select" required>

                        <option value="Gryffindor"
                            <#if character.house == "Gryffindor">selected</#if>>
                            Gryffindor
                        </option>

                        <option value="Slytherin"
                            <#if character.house == "Slytherin">selected</#if>>
                            Slytherin
                        </option>

                        <option value="Ravenclaw"
                            <#if character.house == "Ravenclaw">selected</#if>>
                            Ravenclaw
                        </option>

                        <option value="Hufflepuff"
                            <#if character.house == "Hufflepuff">selected</#if>>
                            Hufflepuff
                        </option>

                    </select>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Description
                    </label>

                    <textarea
                        name="description"
                        class="form-control"
                        rows="4"
                        required>${character.description!""}</textarea>

                </div>

                <button type="submit" class="btn btn-primary">
                    Save Changes
                </button>

                <a href="/Chars/${character.characterId?c}"
                   class="btn btn-secondary">
                    Cancel
                </a>

            </form>

        </div>

    </div>

    <footer class="footer text-center mt-5 py-4">

        <p class="mb-0">
            © 2026 Harry Potter Character Gallery.
        </p>

    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>