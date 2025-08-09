<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Mi Página Web</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
        }
        header, footer {
            background-color: #343a40;
            color: white;
            padding: 20px;
            text-align: center;
        }
        main .contenido {
            padding: 40px;
            text-align: center;
        }
    </style>
</head>
<body>

    <!-- HEADER -->
    <header>
        <h1>Tu Nombre o Nombre de la Página</h1> <!-- Cambia aquí el título -->
        <p>Tu lema o descripción corta</p> <!-- Cambia aquí el lema -->
    </header>

    <!-- CUERPO PRINCIPAL -->
    <main>
        <div class="contenido">
            <h2>Bienvenido a mi sitio web</h2> <!-- Cambia el título -->
            <p>Aquí va una descripción o introducción a tu página.</p> <!-- Cambia el texto -->
        </div>

        <!-- CARRUSEL DE IMÁGENES -->
        <div id="miCarrusel" class="carousel slide" data-bs-ride="carousel" style="max-width:1200px; margin: 0 auto;">
            <div class="carousel-inner">

                <!-- Imagen 1 -->
                <div class="carousel-item active">
                    <img src="https://via.placeholder.com/1200x400?text=Imagen+1" class="d-block w-100" alt="Imagen 1" />
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Título de la Imagen 1</h5> <!-- Cambia el título -->
                        <p>Descripción de la primera imagen.</p> <!-- Cambia la descripción -->
                    </div>
                </div>

                <!-- Imagen 2 -->
                <div class="carousel-item">
                    <img src="https://via.placeholder.com/1200x400?text=Imagen+2" class="d-block w-100" alt="Imagen 2" />
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Título de la Imagen 2</h5> <!-- Cambia el título -->
                        <p>Descripción de la segunda imagen.</p> <!-- Cambia la descripción -->
                    </div>
                </div>

                <!-- Imagen 3 -->
                <div class="carousel-item">
                    <img src="https://via.placeholder.com/1200x400?text=Imagen+3" class="d-block w-100" alt="Imagen 3" />
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Título de la Imagen 3</h5> <!-- Cambia el título -->
                        <p>Descripción de la tercera imagen.</p> <!-- Cambia la descripción -->
                    </div>
                </div>

            </div>

            <!-- Controles del carrusel -->
            <button class="carousel-control-prev" type="button" data-bs-target="#miCarrusel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#miCarrusel" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
                <span class="visually-hidden">Siguiente</span>
            </button>
        </div>
    </main>

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2025 Tu Nombre o Empresa. Todos los derechos reservados.</p> <!-- Cambia aquí -->
        <p>Contacto: tuemail@ejemplo.com</p> <!-- Cambia aquí -->
    </footer>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
