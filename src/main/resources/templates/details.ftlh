<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Harry Potter Details</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.html">Harry Potter Gallery</a>

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link active" href="details.html">Details</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="new-character-form.html">Add Character</a></li>
                </ul>
            </div>
        </div>
    </nav>



    <main class="container mt-5">

        <a href="index.html" class="btn btn-outline-secondary mb-4">← Back to Gallery</a>

        <div class="row">

            <div class="col-md-4">
                <img src="images/harry.jpg" alt="Harry Potter" class="img-fluid rounded shadow mb-4">

                <div class="card">
                    <div class="card-header text-white quick-info-header">
                        Quick Info
                    </div>

                    <div class="card-body">
                        <h2>${character.name}</h2>
                        <p>The young wizard known as “The Boy Who Lived.”</p>

                        <p><strong>Universe:</strong><br>${character.name}</p>
                        <p><strong>Role:</strong><br>Wizard</p>
                        <p><strong>House:</strong><br>Gryffindor</p>
                        <p><strong>First Appearance:</strong><br>Harry Potter and the Philosopher's Stone</p>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <h2>Backstory</h2>
                <p>
                    Harry Potter grew up not knowing that he was a wizard. On his eleventh birthday,
                    he found out that he was part of the wizarding world and was invited to Hogwarts.
                    At Hogwarts, Harry made close friends and learned more about his past and his connection
                    to Lord Voldemort.
                </p>

                <h2>Abilities</h2>
                <p>
                    Harry is good at Defence Against the Dark Arts and is known for being brave in dangerous 
                    situation. He can cast a strong Patrons Charm, fly well on a broomstick, and protect
                    his friends when they need help.
                </p>

                <h2>Personality</h2>
                <p>
                    Harry is brave, loyal and caring. He does not always make perfect choices, but he tries
                    to do what is right. He cares a lot his friends and is willing to stand up for them.
                </p>
            </div>

        </div>

    </main>
    
    <footer class="footer text-center mt-5 py-4">
    <p class="mb-0">© 2226 Harry Potter Character Gallery.</p>
</footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>