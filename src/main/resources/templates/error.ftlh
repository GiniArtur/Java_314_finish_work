<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
</head>
<body>
<div class="container">
    <div class="row">
        <article class="col-sm-6">
            <header>
                <h3 class="display-2">${error! "Error"}</h3>
            </header>
            <section>
                <p class="display-4">${message! "No message available"}</p>
            </section>
            <section>
                <p class="display-4">${timestamp! "No timestamp available"}</p>
            </section>
            <section>
                <p class="display-4">Error Path: ${path! "Unknown path"}</p>
            </section>
            <section>
                <p class="display-4">${exception! "No exception details"}</p>
            </section>
        </article>
    </div>
</div>
</body>
</html>