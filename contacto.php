<?php
require 'config/config.php';
require 'config/database.php';
$db = new Database();
$con = $db->conectar();



?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dragon Imports</title>

    <!-- boostrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="css/estilos.css" rel="stylesheet">

</head>

<body>

    <header>
        <div class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a href="#" class="navbar-brand">
                    <strong>Tienda Dragon Imports</strong>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader"
                    aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarHeader">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                            <a href="index.php" class="nav-link active">Catalogo</a>
                        </li>
                        <li class="nav-item">
                            <a href="contacto.php" class="nav-link">Contacto</a>
                        </li>
                        <li class="nav-item">
                            <a href="registro.php" class="nav-link">Registro</a>
                        </li>
                    </ul>
                    <a href="checkout.php" class="btn btn-primary">
                        Carrito <span id="num_cart" class="badge bg-secondary"><?php echo $num_cart; ?></span>
                    </a>
                </div>
            </div>
        </div>
    </header>
    <!--contenido-->
    <main>
    <div class="container">
            <h1>Contacto</h1>
            <p>Para cualquier consulta, puedes contactarnos a través de los siguientes medios:</p>
            <ul>
                <li>Email: contacto@dragonimports.com</li>
                <li>Teléfono: +123 456 7890</li>
                <li>Dirección: Calle Peru 123, Lima, Peru</li>
            </ul>
            <h2>Desarrolladores</h2>
            <p>Nuestro equipo de desarrolladores está compuesto por:</p>
            <ul>
                <li>Irvin Estuardo Cazorla Macedo</li>
                <li>Ana Paula Viviana Garzon Mendoza</li>
            </ul>
        </div>
    </main>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <!--ajax con api fitch-->
    <script>
        function addProducto(id, token) {
            let url = 'clases/carrito.php'
            let formData = new FormData()
            formData.append('id', id)
            formData.append('token', token)

            fetch(url, {
                method: 'POST',
                body: formData,
                mode: 'cors'
            }).then(response => response.json())
                .then(data => {
                    if (data.ok) {
                        let elemento = document.getElementById("num_cart")
                        elemento.innerHTML = data.numero
                    }
                })
        }
    </script>



</body>

</html>