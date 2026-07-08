<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About This Website</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/style.css">
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.html">Harry Potter Gallery</a>

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="details.html">Details</a></li>
                    <li class="nav-item"><a class="nav-link active" href="about.html">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="new-character-form.html">Add Character</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container mt-5">

        <h1 class="text-center mb-4">About This Website</h1>

        <div class="row align-items-center">

            <div class="col-md-5">
                <img src="/images/harry.jpg" alt="Harry Potter" class="img-fluid rounded shadow">
            </div>

            <div class="col-md-7">
                <p>
                    I created this websire as a part of my CSC340 assignment. It ia a harry Potter character Gallery
                    where users can learn about some of the most popular characters from the Harry Potter series.
                    I chose Harry Potter becasue I enjoy the movies, and i think the characters are interesting. Each
                    character has different personality, house, and role, which makes them a good choice for this 
                    project.
                
                                </p>

                <p>
                    This website was built using HTML, CSS, and Bootstrap. Bootstrap helped me create the navigation 
                    bar, character cards, buttons, and page layout. I also used my own CSS to change the colors and 
                    make the website match the Harry Potter theme.
                </p>

                <p>
                    The website includes a home page with five characters, a details page with more information about 
                    Harry Potter, an about page, and a form where users can add a new character. The search bar and 
                    form are only for the layout because this is a static website and does not have a backend yet.
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